'use strict';

const env = 'development';
const config = require('./knexfile.js')[env];
const knex = require('knex')(config);

knex('publishers')
  .then((result)=>{
    console.log(result);
    knex.destroy();
  })
  .catch((err)=>{
    console.log(err);
    knex.destroy();
    process.exit(1);
  });
