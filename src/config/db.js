import mysql from 'mysql2/promise'

import dotenv from 'dotenv'
const env = dotenv.config().parsed

if (!env) {
    throw new Error('Failed to load environment variables from .env file');
}

let db = mysql.createPool({
    host: env.MYSQL_HOST,
    user: env.MYSQL_USER,
    password: env.MYSQL_PASSWORD,
    database: env.MYSQL_DATABASE,
});

export default db;
