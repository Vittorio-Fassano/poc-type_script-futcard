import { Game } from "../types/types.js";
import { erros } from "../errors/genericErros.js";
import { insertGame, getAllGames } from "../repositories/repository.js";

async function postGame(game: Game) {
    const { teams, result, stadium } = game;
    const resultLowerCase = result.toLocaleLowerCase();
    try {
        await insertGame(teams, resultLowerCase, stadium);
    } catch (err) {
        console.error(err);
        throw erros();
    }
}

async function getGames() {
    try {
      const { rows } = await getAllGames();
      return rows;
    } catch (error) {
      console.error(error);
      throw erros();
    }
  }

const services = {
    postGame, 
    getGames,
};

export default services;