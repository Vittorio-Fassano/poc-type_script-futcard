import { Request, Response } from "express";
import services from "../services/service.js";
import { erros } from "../errors/genericErros.js";
import { Card } from "../types/types.js";

export async function postCard(req: Request, res: Response) {
    const card = req.body as Card;
    try {
        await services.postCard(card);
        res.sendStatus(201);
        return;
    } catch (err) {
        console.error(err);
        res.status(500).send(erros());
        return;
    }
}