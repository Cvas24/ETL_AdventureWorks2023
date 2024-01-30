--Create schema
CREATE SCHEMA parameters;

-- CreateTable
CREATE TABLE parameters."parameters" (
    "id" SERIAL NOT NULL,
    "sistema" TEXT NOT NULL,
    "nombre_param" TEXT NOT NULL,
    "valor_param" TEXT NOT NULL,

    CONSTRAINT "variables_pkey" PRIMARY KEY ("id")
);

INSERT INTO parameters.parameters (id, sistema, nombre_param, valor_param)
    VALUES (1,'PROYECT_PIXELDEV','HOSTNAME','localhost'),
           (2,'PROYECT_PIXELDEV','DATABASENAME','PIXELDEV'),
           (3,'PROYECT_PIXELDEV','PORTNUMBER','5432'),
           (4,'PROYECT_PIXELDEV','USERNAME','postgres'),
           (5,'PROYECT_PIXELDEV','SCHEMA','DATA WAREHOUSE'),
           (6,'PROYECT_PIXELDEV','DIR_FILE','C:\WAITS\PIXELDEV\'),
           (7,'PROYECT_PIXELDEV','PASSWORD','cvas')

select sistema, nombre_param, valor_param from parameters.parameters