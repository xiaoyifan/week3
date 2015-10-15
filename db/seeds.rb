List.destroy_all

['Grocery List', 'Research', 'Movie Recommendations'].each do |list_title|
  List.create title: list_title
end

movie_list = List.find_by_title('Movie Recommendations')
movies = ['Apollo 13', 'The Martian', 'Guardians of the Galaxy', 'Star Wars', "Raiders of the Lost Ark"]
movies.each do |movie_title|
  movie_list.items.create content: movie_title
end

puts "There are now #{List.count} lists."
