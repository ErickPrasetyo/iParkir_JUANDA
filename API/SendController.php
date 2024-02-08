<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Classes\Response;
use App\Classes\SendData;
use App\Classes\Utils;
use App\Models\ReportGate;
use DateTime;
use Exception;
use Illuminate\Support\Facades\DB;

class SendController extends RouterController
{
    public function registerExp()
    {
        try {
            //code...
            $merchant_name = env('MERCHANT_NAME');
            $terminal = env('TERMINAL');
            $encryptedBase64KeyDev = env('ENCRYPTED_KEY');
            $encryptedBase64KeyDev = base64_encode($encryptedBase64KeyDev);

            // $merchant_name = "kijangwahana-test1";
            // $terminal = "POSSkijangwahana-test1";
            // $encryptedBase64KeyDev = 'dW4hdjRQSWYwMTJBUDEwMQ==';

            $payload = [];
            $response = [];

            $inputString = "register" . "|" . $merchant_name . "|" . Utils::getDate('date');
            // $inputString = "register|kijangwahana-test1|20231029";
            $encryptedBase64KeyTas = SendData::generateKey($inputString);

            $payload['merchant_name'] = $merchant_name;
            $payload['merchant_address'] = "kedatangan";
            $payload['terminal'] = $terminal;
            $payload['airport'] = "SUB";
            $payload['merchant_type'] = "PARKIR";
            $payload['sign'] = $encryptedBase64KeyTas;
            // $payload['sign'] = 'MTFlMTVhNDJiZmMwZTdiNTkzMmMwYjE2ZWQxNDUxZmI2OGMwY2Y5YQ==';

            $payloadExp['plain'] = $payload;
            $payloadExp['key'] = $encryptedBase64KeyDev;
            // $payloadExp['key'] = 'MTFlMTVhNDJiZmMwZTdiNTkzMmMwYjE2ZWQxNDUxZmI2OGMwY2Y5YQ==';

            //enkrip data
            $encryptedData = SendData::sendingAPI('localhost:5001/enc', 'POST', json_encode($payloadExp));

            //kirim data
            // $encryptedData = 'b4LDpNQ+JHlpKzg0NIghlMG6raJAAQYZ4A5nJyIorJ6Wov6SATjCjvYaz+S30qd32JclY9abq5pYZMhWKoYD+Dy11+hbrSmldkZBsQda6p9jW0KIORGGc/JmamTJXauHMzQ71A81qokjD2kLmwxxxMqEx7C6Tm+76+ahaOydpuH5RH5hPEZGERligLTQcHdCIlKMzmO6VKSlHad/OPYGcMQAosgkXltA0t8MeGy8vCVBVIIbezfig68ie8Ex1xkKgSv8T+RJqcvQX9q8+d06XgyMfoddIZ3nM0XnW32yDzQ=';
            $responseCurl = SendData::sendingData('register', json_decode($encryptedData));

            // $responseCurl = 'RgqDwA4Kg1tT1DWlHfGjpB0KbOmdcB3eIk5K2Nj1vTpP/gAfRDsvtZe6QWe+9o1WRb4CjxYODASvWDfPLagIjnE861LVlZItL8NwXS5H4W0=';
            $payloadDecExp['plain'] = $responseCurl;
            $payloadDecExp['key'] = $encryptedBase64KeyDev;
            $decryptedData = SendData::sendingAPI('localhost:5001/dec', 'POST', json_encode($payloadDecExp));
            // echo "Signature = " . $inputString . "<br>";

            // echo "Signature EncodeBase64 sha1 = " . $encryptedBase64KeyTas . "<br>";

            // echo "ENCRYPTED_KEY = " . $encryptedBase64KeyDev . "<br>";

            // echo "Payload = <br>";

            // echo json_encode($payload);

            // echo "<br>";

            // echo "Payload Encrypted = " . $encryptedData . "<br>";

            // echo "Response Encrypted = " . $responseCurl . "<br>";

            // echo "Response Decrypted = " . $decryptedData . "<br>";

            $decryptedData = json_decode($decryptedData);
            $phpObject = json_decode($decryptedData);
            $responsej['response'] = $phpObject;
            array_push($response, $responsej);

            $this->response = Response::set('OK', $response);
        } catch (\Throwable $th) {
            //throw $th;
            $this->response = Response::setError($th);
        }

        echo json_encode($this->response);
    }

    public function trxrecordExp()
    {
        try {
            //code...
            $merchant_name = env('MERCHANT_NAME');
            $terminal = env('TERMINAL');
            $encryptedBase64KeyDev = env('ENCRYPTED_KEY');
            $encryptedBase64KeyDev = base64_encode($encryptedBase64KeyDev);
            
            // $merchant_name = "kijangwahana-test1";
            // $terminal = "POSSkijangwahana-test1";
            // $encryptedBase64KeyDev = 'dW4hdjRQSWYwMTJBUDEwMQ==';

            $payload = [];
            $response = [];

            $responseGate = ReportGate::getAll();

            foreach ($responseGate as $key) {
                # code...
                $inputString = "trxrecord" . "|" . $merchant_name . "|" . Utils::getDate('date');
                // $inputString = "trxrecord|kijangwahana-test1|20231031";
                $encryptedBase64KeyData = SendData::generateKey($inputString);

                //payload
                $payload['amount'] = (string) $key->tarif;
                $payload['vat_fee'] = (string) 0;
                $payload['service_fee'] = (string) 0;
                // $payload['merchant_name'] = (string) $key->nama_outlet;
                $payload['merchant_name'] = (string) $merchant_name;
                $payload['airport_destination'] = (string) "";
                $payload['cashier_name'] = (string) $key->usr_upd;
                // $payload['terminal'] = (string) $key->nama_outlet;
                $payload['terminal'] = (string) $terminal;
                $payload['shopping_type'] = (string) "PAYMENT";
                $payload['trx_date'] = (string) $key->dt_ins;
                $payload['order_code'] = (string) $key->no_karcis;
                $payload['payment_type'] = (string) "CASH";
                $payload['tax_fee'] = (string) 0;
                $payload['flight_no'] = (string) "";
                $payload['nationality'] = (string) "";
                $payload['rate'] = (string) 1;
                $payload['total_amount'] = (string) $key->tarif;
                $payload['currency'] = (string) "IDR";
                $payload['disc'] = (string) 0;
                $payload['item'][0]['uom'] = (string) 'pcs';
                $payload['item'][0]['category_code'] = (string) $key->id_jns_anggota;
                $payload['item'][0]['qty'] = (string) 1;
                $payload['item'][0]['name'] = (string) $key->id_jns_kendaraan;
                $payload['item'][0]['vat'] = (string) 0;
                $payload['item'][0]['tax'] = (string) 0;
                $payload['item'][0]['disc'] = (string) 0;
                $payload['item'][0]['category'] = (string) $key->type_kendaraan;
                $payload['item'][0]['sku'] = (string) $key->nopol;
                $payload['item'][0]['unit_price'] = (string) $key->tarif;
                $payload['item'][0]['barcode'] = (string) $key->no_karcis;

                $payload['sign'] = (string) $encryptedBase64KeyData;
                // $payload['sign'] = 'MTFlMTVhNDJiZmMwZTdiNTkzMmMwYjE2ZWQxNDUxZmI2OGMwY2Y5YQ==';

                $payloadExp['plain'] = $payload;
                $payloadExp['key'] = $encryptedBase64KeyDev;
                // $payloadExp['key'] = 'MTFlMTVhNDJiZmMwZTdiNTkzMmMwYjE2ZWQxNDUxZmI2OGMwY2Y5YQ==';

                //enkrip data
                $encryptedData = SendData::sendingAPI('localhost:5001/enc', 'POST', json_encode($payloadExp));

                //kirim data
                // $encryptedData = 'sotHfU2t8KXkVee/hj6n619Qpp6wP+XZ7GSwgQk3C7j6/yG2D575QRmQI8RlZW5vKcjMfxkgKCgPsQocWnvQ91ONsXjcHNx8zUJErptuod4uoAp2mWeFiPpm27owL7Kyby9Ah1dBUx4PCXbMZuddRtQKLKH+aKz5creqb8HpGdFdQfdn7NXjtfi+DKPxu+HK75nvkCNkNxQG5lSgo0qVwTtrQXs4y14uIVW8QmaRPmWWgQ2wQvJpRKVxXnRWrq8GAGPd2moGSp2ZcWpU/v/LGBrL1iygLb3JvDNNq0EH67rScOYX4QvdG2DqzaXV3w6sD2kl0LlPfWZRUIk3UxQx1/kzQG1N5Z7RxwoPZOmsQLUGziVaNJnn0aOU6RPxYbCloTjY9p1i7mIqCm8cco19b+DxHGP8SRo5q6eMIVvHOFsZCRY9StPek2gk8Yfk+4w9rGMq/YXKFQwQ2YCm7klerezNTFsmfuAzJGjn1SFqC6SHpg9ajDbQGMDoGMdjrsGlza+0GQhbyef2sWmayi4o3jvHg8AM/bDtx7gZLVwkAtq+ABP0TRhJrwZmd96rRcCEosVmHJCinMm0lluz95SsZMmDW+xtUPjiw/Xyy3N9jABQy3hxXAoK4BNutquI7M+yyHMFqXLrUWqwmd4cZTYt+Svil93r1/tjx+IULi5OaAy6gqTtAWCNGX8zMnXvlI8quNlz12/rZqi/LyJGKm4IWv5JAQOuIErJJL8sdOPTEfJSGjn1Ba1ZRFpwuBCBgqcrQiG9FqSaq2rWT5OEr1pd3g16rbkUZLAXNQ6gRlNsH205ziau7wu8UcB+swa6vGmI7l2L/zybhL8ohFSWs1Xudg==';
                $responseCurl = SendData::sendingData('record', json_decode($encryptedData));

                // $encryptedBase64KeyDev = 'dW4hdjRQSWYwMTJBUDEwMQ==';
                // $responseCurl = 'RgqDwA4Kg1tT1DWlHfGjpB0KbOmdcB3eIk5K2Nj1vTpP/gAfRDsvtZe6QWe+9o1WRb4CjxYODASvWDfPLagIjnE861LVlZItL8NwXS5H4W0=';
                $payloadDecExp['plain'] = $responseCurl;
                $payloadDecExp['key'] = $encryptedBase64KeyDev;
                $decryptedData = SendData::sendingAPI('localhost:5001/dec', 'POST', json_encode($payloadDecExp));
                // echo "Signature = " . $inputString . "<br>";

                // echo "Signature EncodeBase64 sha1 = " . $encryptedBase64KeyData . "<br>";

                // echo "ENCRYPTED_KEY = " . $encryptedBase64KeyDev . "<br>";

                // echo "Payload = <br>";

                // echo json_encode($payload);

                // echo "<br>";

                // echo "Payload Encrypted = " . $encryptedData . "<br>";

                // echo "Response Encrypted = " . $responseCurl . "<br>";

                // echo "Response Decrypted = " . $decryptedData . "<br>";

                $decryptedData = json_decode($decryptedData);
                $phpObject = json_decode($decryptedData);
                // var_dump($phpObject);
                $rc = $phpObject->rc;
                $rcMessage = $phpObject->rcMessage;

                // echo $rc; // Outputs "04"
                if ($rc == "00") {
                    # code...
                    ReportGate::saveReportGate($key->no_karcis);
                }

                $responsej['no_karcis'] = $key->no_karcis;
                $responsej['response'] = $phpObject;
                array_push($response, $responsej);
            }

            $this->response = Response::set('OK', $response);
        } catch (\Throwable $th) {
            //throw $th;
            $this->response = Response::setError($th);
        }

        echo json_encode($this->response);
    }
}
