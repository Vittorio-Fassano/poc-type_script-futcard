import { Request, Response, Router } from "express";
import { postCard } from "../controllers/controller.js";
// import { deleteCard, getCards, postCard, updateCard } from "../controllers/controller.js";
import { validatingSchema } from "../middlewares/middleware.js";
import cardSchema from "../schemas/schema.js";

const router = Router();

router.get("/health", (req: Request, res: Response) => {
    res.sendStatus(200)
})

router.post("/cards", validatingSchema(cardSchema), postCard);
// router.get("/cards", getCards);
// router.put("/cards/:id", validatingSchema(cardSchema), updateCard);
// router.delete("/cars/:id", deleteCard);

export default router;