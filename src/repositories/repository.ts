import { connectionDB } from "../database/db.js";

export async function insertCard(
  teams: string,
  result: string,
  stadium: string
) {
  return connectionDB.query(
    `INSERT INTO games (teams, result, stadium) 
    VALUES ($1, $2, $3);`, 
    [teams, result, stadium]
  );
}