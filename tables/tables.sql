CREATE DATABASE futcard;

CREATE TYPE "result_types" AS ENUM (
    'vitória',
    'empate',
    'derrota'
);

CREATE TABLE "games" (
    "id" SERIAL PRIMARY KEY,
    "teams" TEXT NOT NULL,
    "result" result_types NOT NULL,
    "stadium" TEXT NOT NULL,
    "createdAt" TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW()
);