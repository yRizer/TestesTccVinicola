import { fastify } from "fastify";
import { getItemsByQRCode } from "./src/models/itemModels.js";

const server = fastify();

getItemsByQRCode().then(items => {
    console.log('Items fetched from database:', items);
})

// server.post('/', function (request, reply) {
//     const { title, description, duration } = request.body

//     database.create({
//         title,
//         description,
//         duration,
//     })

//     return reply.status(201).send()
// })

server.get('/qrdescription', function (request) {


    return videos
})

// Route Parameter
// server.put('/videos/:id', function (request, reply) {
//     const videoId = request.params.id
//     const { title, description, duration } = request.body


//     database.update(videoId, {
//         title,
//         description,
//         duration
//     })

//     return reply.status(204).send()
// })

// server.delete('/videos/:id', function (request, reply) {
//     const videoId = request.params.id

//     database.delete(videoId)

//     return reply.status(204).send()
// })

server.listen({
    port: 3333,
    host: '0.0.0.0'
}, (err, address) => {
    if (err) {
        console.error(err);
        process.exit(1);
    }
    console.log(`Servidor rodando em ${address}`);
});