const port = process.env.PORT || 3000,
    express = require('express'),
    app = express();

const oracledb = require('oracledb');

async function run() {
    let connection;

    try {
        // Connect to the database
        connection = await oracledb.getConnection({
            user: 'cc_proy_admin',       
            password: 'cc',   
            connectString: '172.17.0.2:1521/cursobd.fi.unam'
        });

        console.log('Connected to the database!');

    } catch (err) {
        console.error(err);
    } finally {
        if (connection) {
            try {

                await connection.close();
            } catch (err) {
                console.error(err);
            }
        }
    }
}

run();



app.get("/", (req, res)=> {
    //res.sendStatus(500)
    //res.json({message: Error})
    //res.download("index.js")
    res.render("index")
})



console.log("Texto prueba")


app.listen(port, () => {
    console.log(`Example app listening at http://localhost:${port}`);
});
