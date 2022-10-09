const db = require('../db/mysql') 

function insertMerchant(req, res) {
    let data = req.body

    let insertQuery = `INSERT INTO merchant SET ?;`
    db.query(insertQuery, data, function (error, results, fields) {
        if (error) throw error;
    });

    res.send({ message: 'Data has been inserted', data: data })
}

 function listMerchant(req, res) {
    let selectQuery = `SELECT * FROM merchant`

    db.query(selectQuery, function (error, results, fields) {
        if (error) throw error;
        res.send({ message: 'Data is found', data: results })
    });
    
}

function updateMerchant(req, res) {
    let updateQuery = `UPDATE merchant SET ? WHERE id = ?`
    let data = [req.body, req.params.id]  
    
    db.query(updateQuery, data, function (error, result, fields) {
        if (error) throw error;
    });

    res.send({ message: 'Data has been updated', data: req.body })
}

function deleteMerchant(req, res) {
    let deleteQuery = `DELETE FROM merchant WHERE id = ?`
    let data = [req.params.id]
    db.query(deleteQuery, data, function (err, deleted) {
        if (err) throw err;
    });

    res.send({ message: 'Data has been deleted' })
}

module.exports = {
    insertMerchant,
    listMerchant,
    updateMerchant,
    deleteMerchant
}