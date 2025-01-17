import axios from 'axios';

const apiPath = import.meta.env.VITE_BACKEND_URL;

export default {
    sendGet: async function (path: string, token: string) {
        console.log(path)
        const headers = {
            Authorization: `Bearer ${token}`,
            'Content-Type': 'application/json;charset=UTF-8',
            "Access-Control-Allow-Origin": "*",
        };
        return await axios
            .get(
                apiPath + path,
                {
                    headers,
                }
            );
    },
    sendPost: async function (path: string, data: any, token: string) {
        console.log(data);
        const headers = {
            Authorization: `Bearer ${token}`,
            'Content-Type': 'application/json;charset=UTF-8',
            "Access-Control-Allow-Origin": "*",
        };
        console.log(data)
        return await axios
            .post(
                apiPath + path,
                data,
                {
                    headers,
                }
            );
    },
    sendPut: async function (path: string, data: any, token: string) {
        let headers = {
            Authorization: `Bearer ${token}`,
            'Content-Type': 'application/json',
            "Access-Control-Allow-Origin": "*",
        }
        return await axios
            .put(
                apiPath + path,
                data,
                {
                    headers,
                }
            );
    },
    sendDelete: async function (path: string, token: string) {
        const headers = {
            Authorization: `Bearer ${token}`,
            'Content-Type': 'application/json;charset=UTF-8',
            "Access-Control-Allow-Origin": "*",
        };
        return await axios
            .delete(
                apiPath + path,
                {
                    headers,
                }
            );
    },
};