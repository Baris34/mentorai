/*
  Warnings:

  - You are about to drop the column `icon` on the `Ders` table. All the data in the column will be lost.
  - You are about to drop the column `path` on the `Ders` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "public"."Ders" DROP COLUMN "icon",
DROP COLUMN "path";
