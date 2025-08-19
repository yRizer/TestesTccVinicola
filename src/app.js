import fastify from 'fastify';
import routesQR from "./routes/routes.js";

const server = fastify();

// Register the routes
server.register(routesQR);

export default server;