const express = require('express')

const app = express();
const cors = require('cors')

const { pool } = require('./config')

app.use(cors());
app.use(express.json());

app.locals.title = 'Only-Devs-V3 API';

pool.connect();

//test
app.get('/', (request, response) => {
    response.status(200).send(`Welcome to the ${app.locals.title}`)
  });