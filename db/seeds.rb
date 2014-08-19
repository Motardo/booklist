# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Author.create([{ firstName: 'Alice', lastName: 'Foghorn'},
               { firstName: 'Zsa-zsa', lastName: 'Leghorn'},
               { firstName: 'Betty', lastName: 'Draper'},
               { firstName: 'Don', lastName: 'Draper'},
               { firstName: 'Peter', lastName: 'Cambell'}])
Book.create([{ title: 'Mundo 21', description: 'Lorem ipsum ...', readDate: '', author_id: '1' },
             { title: 'The Great Gastby', description: '', readDate: '', author_id: '1' },
             { title: 'War and Peace', description: '', readDate: '', author_id: '2' },
             { title: 'Grapes of Wrath', description: '', readDate: '', author_id: '3' },
             { title: 'The Fountainhead', description: '', readDate: '', author_id: '3' },
             { title: 'Altas Shrugged', description: '', readDate: '', author_id: '3' },
             { title: 'Farenheit 451', description: '', readDate: '', author_id: '4' },
             { title: 'The Blob', description: '', readDate: '', author_id: '5' },
             { title: 'Star Wars', description: '', readDate: '', author_id: '5' }])
