const axios = require("axios");

const SendRequest = async (
    params = { method: "get", url: "", prefix: "/", params: {} }
) => {
    // console.log(params);
    const baseURLDef = "http://localhost/dis-parkiran/public/api/";
    const instance = axios.create({
        baseURL: params.url ?? baseURLDef,
    });

    //   instance.defaults.headers.common["Authorization"] = AUTH_TOKEN;

    let request = {
        method: params.method,
        url: params.prefix ?? "/",
        data: params.params,
        // params: params.params
        //   headers: {'X-Requested-With': 'XMLHttpRequest'},
    };

    if (params.method === "get") {
        request = { ...request, params: params.params };
    }

    return await instance(request)
        .then(function (response) {
            // handle success
            return response.data;
        })
        .catch(function (error) {
            console.log(error.toJSON());
            return {
                data: {},
                status: error.toJSON().status,
                info: error.toJSON(),
            };
        });
};

module.exports = { SendRequestLaravel: SendRequest };
