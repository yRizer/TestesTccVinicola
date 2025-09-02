import app from './app.js';

(async () => {
    try {
        await app.listen({ port: 3333, host: '0.0.0.0' });
        app.log.info('Servidor rodando em http://0.0.0.0:3333');
    } catch (err) {
        app.log.error(err);
        process.exit(1);
    }
})();

process.on('SIGINT', async () => {
    app.log.info('Recebeu SIGINT. Encerrando...');
    try { await app.close(); } catch (e) { app.log.error(e); }
    process.exit(0);
});