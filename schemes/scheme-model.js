const knex = require('knex');
const knexConfig = require('../knexfile.js');

const db = knex(knexConfig.development);

const find = () => {
  return db('schemes');
}

const findById = id => {
  return db('schemes').where({ id: id })
}

const findSteps = id => {
  return db('steps').where({ scheme_id:id }).orderBy('step_number')
}

const add = scheme => {
  return db('schemes').insert(scheme)
}

const update = (changes, id) => {
  return db('schemes').where({ id: id }).update(changes)
}

const remove = id => {
  return db('schemes').where({ id: id }).del()
}

module.exports = {
  find,
  findById,
  findSteps,
  add,
  update,
  remove
}