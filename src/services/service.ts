import { Card } from "../types/types.js";
import { erros } from "../errors/genericErros.js";
import { insertCard, getAllCards } from "../repositories/repository.js";

async function postCard(card: Card) {
    const { teams, result, stadium } = card;
    try {
        await insertCard(teams, result, stadium);
    } catch (err) {
        console.error(err);
        throw erros();
    }
}

async function getCards() {
    try {
      const { rows } = await getAllCards();
      return rows;
    } catch (error) {
      console.error(error);
      throw erros();
    }
  }

const services = {
    postCard, 
    getCards,
};

export default services;