CREATE TABLE "passenger"(
    "id" INTEGER,
    "first_name"  TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "age" INTEGER NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE "check_in"(
    "passenger_id" INTEGER,
    "datetime" TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "flight_id" INTEGER,
    FOREIGN KEY ("passenger_id") REFERENCES "passenger"("id"),
    FOREIGN KEY ("flight_id") REFERENCES "flight"("id")
);

CREATE TABLE "airline"(
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "concource" TEXT NOT NULL,
    PRIMARY KEY("id")
);

CREATE TABLE "flight" (
    "id" INTEGER,
    "airline_id" INTEGER,
    "flight_number" INTEGER NOT NULL,
    "departure_airport" TEXT NOT NULL,
    "heading_airport" TEXT NOT NULL,
    "departure_time" TIMESTAMP,
    "arrival_time" TIMESTAMP,
    FOREIGN KEY ("airline_id") REFERENCES "airline"("id")
);