const express = require("express");
const http = require("http");
const PORT = process.env.PORT || 5001;
const app = express();
const bodyParser = require("body-parser");
const { SendRequestLaravel } = require("./SendRequest");
const CryptoJS = require("crypto-js");

const router = express.Router();
const server = http.createServer(app);

//Here we are configuring express to use body-parser as middle-ware.
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());
// add router in the Express app.
app.use("/", router);

app.use(function (req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header(
        "Access-Control-Allow-Headers",
        "Origin, X-Requested-With, Content-Type, Accept"
    );
    next();
});

function enkripsi(plain, key) {
    const text = plain;
    const encryptedBase64Key = key;
    const parsedBase64Key = CryptoJS.enc.Base64.parse(encryptedBase64Key);
    let encryptedData = null;
    encryptedData = CryptoJS.AES.encrypt(text, parsedBase64Key, {
        mode: CryptoJS.mode.ECB,
        padding: CryptoJS.pad.Pkcs7,
    });
    //   console.log("Cipher text: " + encryptedData);
    return encryptedData.toString();
}

function dekripsi(chiper, key) {
    const text = chiper;
    const encryptedBase64Key = key;
    const parsedBase64Key = CryptoJS.enc.Base64.parse(encryptedBase64Key);
    let decryptedData = null;
    decryptedData = CryptoJS.AES.decrypt(text, parsedBase64Key, {
        mode: CryptoJS.mode.ECB,
        padding: CryptoJS.pad.Pkcs7,
    });
    const decryptedText = decryptedData.toString(CryptoJS.enc.Utf8);
    //   console.log("Plain text: " + decryptedText);
    return decryptedText.toString();
}

async function sendLaravelDis(method, prefix) {
    const response = await SendRequestLaravel({
        method,
        prefix,
    });

    return response;
}

app.get("/send-register", async (req, res) => {
    //code to perform particular action.
    //To access POST variable use req.body()methods.
    const response = await sendLaravelDis("get", "send/registrasi");
    res.json(response);
});

app.get("/send-trxrecord", async (req, res) => {
    //code to perform particular action.
    //To access POST variable use req.body()methods.
    const response = await sendLaravelDis("get", "send/trxrecord");
    res.json(response);
});

app.post("/enc", async (req, res) => {
    //code to perform particular action.
    //To access POST variable use req.body()methods.
    //   console.log(req.body);
    //   console.log(req.body.plain);
    //   console.log(req.body.key);
    //   console.log(JSON.stringify(req.body.plain));
    plain = JSON.stringify(req.body.plain);
    console.log(req.body.key);
    response = enkripsi(plain, req.body.key);
    res.json(response);
});

app.post("/dec", async (req, res) => {
    //code to perform particular action.
    //To access POST variable use req.body()methods.
    //   console.log(req.body);
    //   console.log(req.body.plain);
    //   console.log(req.body.key);
    //   console.log(JSON.stringify(req.body.plain));
    response = dekripsi(req.body.plain, req.body.key);
    res.json(response);
});

setInterval(() => {
    //   console.log("runn");
}, 3000);

const cron = require("node-cron");

const taskFiveMinute = cron.schedule("*/1 * * * *", function () {
    // console.log("running a task every 5 minute");
    sendLaravelDis("get", "send/trxrecord");
});

taskFiveMinute.start();

server.listen(PORT, (err) => {
    if (err) console.log(err);
    console.log("Server running on Port ", PORT);
});
