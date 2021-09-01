const mariadb = required('mariadb');

const pool = mariadb.creatConnection({
    host:'localhost',
    user:'root',
    password:'',
    database:'mariadb'
})

async function main(){
    try{
        let conn = await pool.getConnection();
        let rows = await conn.query("SELECT * FROM usuario")
        console.log(rows);
    }
}catch(err){
    console.log("Cu");

}

finally{
    console.log("Pinto");
}
main()