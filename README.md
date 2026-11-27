# API da Vinícola (TCC)

Back-end do meu TCC de Engenharia de Computação na Unipinhal. Cada item da vinícola recebe um QR code; ao ler o código, o app consulta esta API e recebe os dados do item com as suas imagens, guardados em MySQL.

## Stack

- Node.js (ES Modules)
- Fastify 5
- MySQL com `mysql2`
- `dotenv` para a configuração

## Endpoint

| Método | Rota | Descrição |
| --- | --- | --- |
| `GET` | `/qr-info/:qrcode` | Retorna o item ligado ao QR code, com a lista de imagens. O código é validado antes da consulta (formato `QR` + 3 dígitos, ex.: `QR001`). |

Exemplo de resposta:

```json
{
  "status": "success",
  "data": [
    { "id": 1, "qr_code": "QR001", "images": ["/images/..."] }
  ]
}
```

## Como rodar

1. Crie o banco com os scripts de `Database Examples/` (banco `vinicola_tcc`, tabelas `itens_qr` e `imagens_itens`).
2. Crie um arquivo `.env` na raiz:

   ```env
   MYSQL_HOST=localhost
   MYSQL_USER=root
   MYSQL_PASSWORD=sua_senha
   MYSQL_DATABASE=vinicola_tcc
   ```

3. Instale e rode:

   ```bash
   npm install
   npm run dev
   ```

Exemplos de requisição em `routes.http`.

## Estrutura

```
src/
  server.js     inicia o servidor
  app.js        instancia o Fastify e registra as rotas
  routes/       rotas de QR code
  models/       consultas ao MySQL
  security/     validação do formato do QR code
  config/       conexão com o banco
```

---

Mais projetos no meu portfólio: [yrizer.github.io/Portifolio](https://yrizer.github.io/Portifolio/)
