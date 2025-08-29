import { fastify } from "fastify";
import { getItemsByQRCode } from "../models/itemModels.js";
import { isValidQRCode } from "../security/validation.js";

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

        // Extrai o QR Code dos parâmetros da requisição
        const { qrcode } = request.params;

        // Valida o formato do QR Code
        if (!isValidQRCode(qrcode)) {
            return reply.status(400).send({
                status: 'error',
                message: 'Formato de QR Code inválido.'
            })
        }

        // Busca os itens associados ao QR Code no banco de dados
        const items = await getItemsByQRCode(qrcode);

        // Retorna os itens encontrados ou uma mensagem de erro se nenhum item for encontrado
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

// Exporta a função de rotas para ser usada em outros módulos
export default routesQR;
