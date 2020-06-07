CREATE DATABASE equations;
\c equations

CREATE TABLE public.equations (
    numbers_in_equation INTEGER NOT NULL,
    additions           INTEGER NOT NULL,
    subtractions        INTEGER NOT NULL,
    multiplications     INTEGER NOT NULL,
    brackets            INTEGER NOT NULL,
    divisions           INTEGER NOT NULL
);