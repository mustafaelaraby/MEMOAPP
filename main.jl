using SQLite
include("./src/memo.jl")


# create database.

db = SQLite.DB("entrylog.db")

# create table.

SQLite.execute(db, "CREATE TABLE IF NOT EXISTS user_entry 
                    (id INTEGER PRIMARY KEY AUTOINCREMENT, memo TEXT)")

memo(db)

# insert data.

