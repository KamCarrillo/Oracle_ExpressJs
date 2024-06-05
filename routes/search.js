const express = require("express")
const router = express.Router()


app.get('/search', async (req, res) => {
    const { query } = req.query; // Obtener el parámetro 'query' de la URL
    let connection;

    try {
        connection = await oracledb.getConnection(dbConfig);

        // Realizar la consulta con un parámetro
        const result = await connection.execute(
            `SELECT * FROM tu_tabla WHERE tu_campo LIKE :query`,
            [`%${query}%`]
        );

        res.json(result.rows);
    } catch (err) {
        console.error(err);
        res.status(500).send('Error en la consulta');
    } finally {
        if (connection) {
            try {
                await connection.close();
            } catch (err) {
                console.error(err);
            }
        }
    }
});