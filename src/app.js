import fastify from 'fastify';
import routesQR from "./routes/routes.js";

// Cria uma instância do servidor Fastify
const server = fastify();

// Registra as rotas para QR code
server.register(routesQR);

// Exporta o servidor Fastify para ser usado em outros módulos.
export default server;