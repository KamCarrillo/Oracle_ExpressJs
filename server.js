const port = process.env.PORT || 3000,
    express = require('express'),
    app = express();

const oracledb = require('oracledb');
const userRouter = require("./routes/users");

app.use(express.static("views"))
app.use(express.urlencoded( {extended: true } ))
app.use(express.json());



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

        // Execute a simple query
        //const result = await connection.execute(`SELECT * FROM your_table`);
        //console.log(result.rows);

    } catch (err) {
        console.error(err);
    } finally {
        if (connection) {
            try {
                // Always close the connection
                await connection.close();
            } catch (err) {
                console.error(err);
            }
        }
    }
}

run();

app.set("view engine", "ejs")

app.get("/", (req, res)=> {
    res.render('index');
})

app.use("/users", userRouter)

app.listen(port, () => {
    console.log(`Example app listening at http://localhost:${port}`);
});