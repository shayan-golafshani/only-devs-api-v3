const Pool = require('pg').Pool;
require('dotenv').config()


const isProduction = process.env.NODE_ENV === 'production'
//const connectionString = `postgres://xvkpuofcnndyjr:c3dc401551f597335bd3115c401af0f9c8bbcd8196227e30d40c34ec9fcebead@ec2-52-72-125-94.compute-1.amazonaws.com:5432/d5mfdsej9ljpfe`
//We need to get our connection string from heroku....
const connectionString = `postgresql://${process.env.DB_USER}:${process.env.DB_PASSWORD}@${process.env.DB_HOST}:${process.env.DB_PORT}/${process.env.DB_DATABASE}`;


const pool = new Pool({
  connectionString: isProduction ? process.env.DATABASE_URL : connectionString,
  ssl: {
    sslmode: 'require',
    rejectUnauthorized: false,
  }
})

module.exports = {pool};