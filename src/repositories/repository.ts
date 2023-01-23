import { connectionDB } from "../database/db.js";

export async function insertGame(
  teams: string,
  resultLowerCase: string,
  stadium: string
) {
  return connectionDB.query(
    `INSERT INTO games (teams, result, stadium) 
    VALUES ($1, $2, $3);`, 
    [teams, resultLowerCase, stadium]
  );
}

export async function getAllGames(){
    return connectionDB.query(
    `SELECT * FROM games;`);
}
