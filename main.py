from db import run_query_select, run_update_query

print("Answer one")
movies = run_query_select(""" select * from movies """)
for movie in movies:
    print(movie)

print()
print("second Answer")

user_input = input("What would you like to see?: ")
matching_movies = run_query_select(""" select * from movies where movie_name LIKE ? """, (f"%{user_input}%",))
for movie in matching_movies:
    print(movie)

print()
print("Third Answer")

movie_name = input("Enter movie name: ")
genre = input("Enter genre: ")
country = input("Enter country: ")
language = input("Enter language: ")
year = input("Enter year: ")
revenue = input("Enter revenue: ")

run_update_query(""" INSERT INTO movies (movie_name, genre, country, language, year, revenue) VALUES (?, ?, ?, ?, ?, ?)""",(movie_name,genre,country,language,year,revenue))
print("Movie was added")
