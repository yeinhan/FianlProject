/* DB 설정정보 */
module.exports =
{
    user : process.env.NODEORACLEDB_USER || 'FINAL',
    password : process.env.NODEORACLEDB_PASSWORD || '1234',
    connectString : process.env.NODE_ORACLEDB_CONNECTIONSTRING || 'localhost/xe'
}