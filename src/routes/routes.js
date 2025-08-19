import { fastify } from "fastify";
import { getItemsByQRCode } from "../models/itemModels.js";
import { isValidQRCode } from "../security/isValid.js";

/**
 * * Registra as rotas relacionadas a QR code.
 * 
 * @param {fastify} fastify - A instancia do servidor Fastify.
 * @param {Object} options - Opções de configuração para as rotas.
 * @description Registra as rotas relacionadas a QR code. 
 * 
 */
async function routesQR(fastify, options) {

    // Rota para obter informações de itens pelo QR Code
    fastify.get('/qr-info/:qrcode', async function (request, reply) {

        const { qrcode } = request.params;

        if (!isValidQRCode(qrcode)) {
            return reply.status(400).send({
                status: 'error',
                message: 'Formato de QR Code inválido.'
            })
        }

        const items = await getItemsByQRCode(qrcode);

        if (items.length > 0) {
            return reply.status(200).send({
                status: 'success',
                data: items
            });
        } else {
            return reply.status(200).send({
                status: 'error',
                message: 'Nenhum item encontrado para o QR Code fornecido.'
            });
        }
    })
}

export default routesQR;
