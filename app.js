const express = require('express')
const indexRouter = require('../merchant service/routes/routes')

const app = express()
const port = 3000

app.use(express.json())
app.use('/', indexRouter)

app.listen(port, () => {
    console.log(`Example app listening on port ${port}`)
})
