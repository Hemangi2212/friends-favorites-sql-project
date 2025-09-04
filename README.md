# friends-favorites-sql-project

# Friends & Their Favorites 🎶🍕✈️

This is a **mini SQL database project** that manages friends, their favorite places, foods, and songs.  
It demonstrates **database creation, table relationships, CRUD operations, and SQL queries**.

---

## 📌 Project Overview
The project is divided into two main tables:

1. **`favs`** – Stores details about friends such as:
   - `user_id` (Primary Key)
   - `name`
   - `email`
   - `fav_place`
   - `fav_food`
   - `mobile_no` (added later)
   - `travel` (whether they use Bike, Car, Train, etc.)

2. **`fav_songs`** – Stores details of their favorite songs:
   - `song_id` (Auto Increment, Primary Key)
   - `user_id` (Foreign Key referencing `favs`)
   - `song_name`
   - `singer`
   - `genre`
   - `release_year`

---

## 🛠️ Features & SQL Concepts Covered
- **Database creation** (`CREATE DATABASE`)
- **Table creation with constraints** (`PRIMARY KEY`, `UNIQUE`, `FOREIGN KEY`)
- **Insert, Update, Delete operations** (CRUD)
- **ALTER TABLE** (adding new columns later)
- **Aggregate functions** (`COUNT`, `GROUP BY`)
- **Joins** (linking `favs` and `fav_songs`)
- **Filtering with WHERE conditions**

---
