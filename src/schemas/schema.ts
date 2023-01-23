import Joi from "joi";

const cardSchema = Joi.object({
    teams: Joi.string().required(),
    result: Joi.string().required(),
    stadium: Joi.string().required()
})

export default cardSchema;