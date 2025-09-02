import db from '../config/db.js';

/**
 * * Executes a SQL query with the provided parameters.
 * @param {string} query - The SQL query to execute.
 * @param {Array} [params=[]] - The parameters to bind to the query.
 * @throws {Error} If the query execution fails.
 * @returns {Promise<Array>} The rows returned by the query.
 * 
 */
async function execute(query, params = []) {
    const connection = await db;
    
    try {
        const [rows] = await connection.query(query, params);
        return rows;
    } catch (error) {
        console.error('Database query error:', error);
        throw error;
    }
}

/** 
 * * Retrieves all items from the 'itens_qr' table.
 * @param {Array} [params=[]] - Optional parameters for the query.
 * @returns {Promise<Array>} A promise that resolves to an array of items.
 */
export async function getItemsByQRCode(params = []) {

    // Consulta SQL para buscar itens pelo QR Code
    const query = 'SELECT * FROM itens_qr WHERE qr_code = ?';

    // Executa a consulta no banco de dados
    let [item] = await execute(query, params);

    // Se nenhum item for encontrado, retorna um array vazio
    if (!item) {
        return [];
    }

    // Consulta SQL para buscar imagens associadas ao item
    const images = await execute(
        "SELECT imagem_url FROM imagens_itens WHERE item_id = ?",
        [item.id]
    );

    // Adiciona as URLs das imagens ao objeto do item
    item.images = images.map(img => img.imagem_url);

    return [item];
}