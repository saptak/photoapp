datasource db {
  provider = "sqlite"
  url      = env("DATABASE_URL")
}

generator client {
  provider = "prisma-client-js"
}

model Photo {
  id          String   @id @default(cuid())
  title       String
  description String?
  imageUrl    String
  order       Int
  createdAt   DateTime @default(now())
  updatedAt   DateTime @updatedAt
}
