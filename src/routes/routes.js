import { fastify } from "fastify";
import { getItemsByQRCode } from "../models/itemModels.js";

const server = fastify();

async function routesQR(fastify, options) {
    console.log('Registering routes for QR code items');

    fastify.get('/qr-info/:qrcode',async function (request) {
        console.log('Received request for items');

        const { qrcode } = request.params;        
        
        return getItemsByQRCode([qrcode])
    })
}

export default routesQR;
