import DBConfig from '../configs/db-config.js';
import pkg from 'pg'
const { Client, Pool }  = pkg;

export default class UsersRepository {
    getByUsernameAsync = async (entity) => {
        let returnEntity = null;
        const client = new Client(DBConfig);
        await client.connect();
        try {
            const sql = `SELECT * FROM public."Usuarios" WHERE public."Usuarios".email LIKE $1 AND public."Usuarios".contrasena LIKE $2`;
            const values = [
                entity?.email  ??'',
                entity?.contrasena  ??''
            ];
            const result = await client.query(sql, values);
            await client.end();
            if (result.rows.length > 0){
                returnEntity = result.rows[0];
            }
            
        } catch (error) {
            console.log(error);
            returnEntity = false;
        }
        return returnEntity;
    }

    createAsync = async (entity) => {
        let returnArray = null;
        const client = new Client(DBConfig);
        try {
            await client.connect();
            const sql = `INSERT INTO public."Usuarios"(
                email, 
                nombre, 
                apellido, 
                direccion, 
                contrasena, 
                "idGenero", 
                foto, 
                "FechaNacimiento"
            ) VALUES ($1,
                $2,
                $3,
                $4,
                $5,
                $6,
                $7,
                $8)`;
            const values = [
                entity?.email ??'',
                entity?.nombre ??'', 
                entity?.apellido ??'', 
                entity?.direccion ??'', 
                entity?.contrasena ??'', 
                entity?.idGenero ??'', 
                entity?.foto ??'', 
                entity?.FechaNacimiento    ??''
            ]
            const result = await client.query(sql, values);
            await client.end();
            returnArray = result.rowCount;
        } catch (error) {
            console.log(error);
        }
        return returnArray;
    }
}