import fastify from 'fastify';
import routesQR from './routes/routes.js';

const app = fastify({ logger: true });

app.register(routesQR);

export default app;