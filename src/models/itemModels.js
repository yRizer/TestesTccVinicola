import db from '../config/db.js';

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

export async function getItemsByQRCode() {
    const query = 'SELECT * FROM itens_qr';

    return execute(query)
}