import axios from 'axios';

const apiPath = "http://localhost:8080";

export default {
    sendGet: async function (path) {
        var headers = {}
        console.log(path)
        if (localStorage.getItem("access_token") !== null){
            headers = {
                Authorization: `Bearer ${localStorage.getItem("access_token")}`,
                'Content-Type': 'application/json;charset=UTF-8',
                "Access-Control-Allow-Origin": "*",
            };
        }
        return await axios
            .get(
                apiPath + path,
                {
                    headers: headers,
                }
            );
    },
    sendPost: async function (path, data) {
        let headers = {
            'Content-Type': 'application/json;charset=UTF-8',
            "Access-Control-Allow-Origin": "*",
        };
        console.log(data);
        if (localStorage.getItem("access_token") !== null){
            headers = {
                Authorization: `Bearer ${localStorage.getItem("access_token")}`,
            };
        }
        console.log(data)
        return await axios
            .post(
                apiPath + path,
                data,
                {
                    headers: headers,
                }
            );
    },
    sendPut: async function (path, data) {
        var headers = {}

        // if (localStorage.getItem("jwt") !== null){
        //     headers = {
        //         Authorization: `Bearer ${localStorage.getItem("jwt")}`,
        //     };
        // }
        return await axios
            .put(
                apiPath + path,
                data,
                {
                    headers: headers + {
                        'Content-Type': 'application/x-www-form-urlencoded;charset=UTF-8',
                        "Access-Control-Allow-Origin": "*",
                    },
                }
            );
    },
    sendDelete: async function (path) {
        var headers = {}
        if (localStorage.getItem("jwt") !== null){
            headers = {
                Authorization: `Bearer ${localStorage.getItem("jwt")}`,
                'Content-Type': 'application/json;charset=UTF-8',
                "Access-Control-Allow-Origin": "*",
            };
        }
        return await axios
            .delete(
                apiPath + path,
                {
                    headers: headers,
                }
            );
    },
};