import { Request, Response } from "express";
import services from "../services/service.js";
import { erros } from "../errors/genericErros.js";
import { Game } from "../types/types.js";

export async function postGame(req: Request, res: Response) {
  const card = req.body as Game;
  try {
    await services.postGame(card);
    res.sendStatus(201);
    return;
  } catch (err) {
    console.error(err);
    res.status(500).send(erros());
    return;
  }
}

export async function getGames(req: Request, res: Response) {
  try {
    const games: Game[] = await services.getGames();
    res.status(200).send(games);
    return;
  } catch (err) {
    console.error(err);
    res.sendStatus(500);
    return;
  }
}

export async function updateGame(req: Request, res: Response) {
  const { id } = req.params;
  const newGame = req.body as Game;
  try {
    await services.updateGame(id, newGame)
    res.sendStatus(200);
    return;
  } catch (err) {
    console.error(err);
    res.status(500).send(erros());
    return;
  }
}