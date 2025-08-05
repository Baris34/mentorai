-- CreateTable
CREATE TABLE "public"."Ders" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "icon" TEXT,
    "path" TEXT,

    CONSTRAINT "Ders_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "public"."Konu" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "dersId" INTEGER NOT NULL,
    "konuCalismasiTamamlandi" BOOLEAN NOT NULL DEFAULT false,
    "tekrar1Tamamlandi" BOOLEAN NOT NULL DEFAULT false,
    "tekrar2Tamamlandi" BOOLEAN NOT NULL DEFAULT false,
    "tekrar3Tamamlandi" BOOLEAN NOT NULL DEFAULT false,
    "tekrar4Tamamlandi" BOOLEAN NOT NULL DEFAULT false,
    "kaynak1Tamamlandi" BOOLEAN NOT NULL DEFAULT false,
    "kaynak2Tamamlandi" BOOLEAN NOT NULL DEFAULT false,
    "kaynak3Tamamlandi" BOOLEAN NOT NULL DEFAULT false,
    "kaynak4Tamamlandi" BOOLEAN NOT NULL DEFAULT false,

    CONSTRAINT "Konu_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Ders_name_key" ON "public"."Ders"("name");

-- AddForeignKey
ALTER TABLE "public"."Konu" ADD CONSTRAINT "Konu_dersId_fkey" FOREIGN KEY ("dersId") REFERENCES "public"."Ders"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
