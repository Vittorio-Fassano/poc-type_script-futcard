import { Card } from "../types/types.js";
import { erros } from "../errors/genericErros.js";
import { insertCard } from "../repositories/repository.js";

async function postCard(card: Card) {
    const { teams, result, stadium } = card;
    try {
        await insertCard(teams, result, stadium);
    } catch (err) {
        console.error(err);
        throw erros();
    }
}

const services = {
    postCard
};

export default services;