const express = require("express")
const router = express.Router()

//route.use(logger)

router.get('/', (req, res) =>{
    res.send("User List")
})

router.get("/new", (req, res) => {
    res.render("users/new")
})

router.post("/", (req, res)=>{
    res.send("Create user")
})

router.get("/:id", (req, res)=>{
    res.send(`Get user with ID ${req.params.id}`)

}) 
router.put("/:id", (req, res)=>{
    res.send(`Update user with ID ${req.params.id}`)
})
router.delete("/:id", (req, res)=>{
    res.send(`Delete user with ID ${req.params.id}`)
})

router.get('/redirect', (req, res) => {
    res.redirect('/login.html');
});

//function logger(req, res, next){
//    next()
//}

module.exports = router