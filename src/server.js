import app from './app.js';

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