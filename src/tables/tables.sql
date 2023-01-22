CREATE TABLE "games" (
    "id" SERIAL PRIMARY KEY,
    "teams" TEXT NOT NULL,
    "result" TEXT NOT NULL,
    "stadium" TEXT NOT NULL,
    "createdAt" TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW()
);