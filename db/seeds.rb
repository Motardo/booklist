# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Author.create([{ first_name: 'Alice', last_name: 'Foghorn'},
               { first_name: 'Zsa-zsa', last_name: 'Leghorn'},
               { first_name: 'Betty', last_name: 'Draper'},
               { first_name: 'Don', last_name: 'Draper'},
               { first_name: 'Peter', last_name: 'Cambell'}])
Book.create([{ title: 'Mundo 21', description: 'Lorem ipsum ...', read_date: '', author_id: '1' },
             { title: 'The Great Gastby', description: '', read_date: '', author_id: '1' },
             { title: 'War and Peace', description: '', read_date: '', author_id: '2' },
             { title: 'Grapes of Wrath', description: '', read_date: '', author_id: '3' },
             { title: 'The Fountainhead', description: '', read_date: '', author_id: '3' },
             { title: 'Altas Shrugged', description: '', read_date: '', author_id: '3' },
             { title: 'Farenheit 451', description: '', read_date: '', author_id: '4' },
             { title: 'The Blob', description: '', read_date: '', author_id: '5' },
             { title: 'Star Wars', description: '', read_date: '', author_id: '5' }])
