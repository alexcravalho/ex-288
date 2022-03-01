const express = require('express')
const app = express()
const port = 8001
const root = process.env.DOCROOT;
const ref = require(`./${root}/reference.js`)

app.get('/', (req, res) => {
        res.send('Hello World!')
})

app.get('/path1', (req, res) => {
        res.send('A response from a specific path!')
  })

app.listen(port, () => {
  console.log(`Example app listening on port ${port}: FROM ${ref.text}`)
})