import app from './app.js';

// Inicia o servidor Fastify
app.listen({
    port: 3333,
    host: '0.0.0.0'
}, (err, address) => {
    if (err) {
        console.error(err);
        process.exit(1);
    }
    console.log(`Servidor rodando em ${address}`);
});