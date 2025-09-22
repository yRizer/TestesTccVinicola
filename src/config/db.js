import mysql from 'mysql2/promise'
import dotenv from 'dotenv'

dotenv.config();

const env = process.env;

console.log(env)

if (!env) {
    throw new Error('Failed to load environment variables from .env file');
}

let db = mysql.createConnection({
    host: env.MYSQL_HOST,
    user: env.MYSQL_USER,
    password: env.MYSQL_PASSWORD,
    database: env.MYSQL_DATABASE,
    waitForConnections: true,
    connectionLimit: 10,
    queueLimit: 0
});

export default db;
