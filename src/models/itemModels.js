import db from '../config/db.js';

/**
 * 
 * * Executes a SQL query with the provided parameters.
 * @param {string} query - The SQL query to execute.
 * @param {Array} [params=[]] - The parameters to bind to the query.
 * @throws {Error} If the query execution fails.
 * @returns {Promise<Array>} The rows returned by the query.
 * 
 */
async function execute(query, params = []) {
    const connection = await db.getConnection();
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
    const query = 'SELECT * FROM itens_qr WHERE qr_code = ?';

    return execute(query, params)
}