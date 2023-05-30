def display_prompts
  puts 'Welcome to catalog of my things'
  puts ' '
  puts 'Choose an option from choices below:'

  puts '1 - List all books'
  puts '2 - List all music albums'
  puts '3 - List of games'
  puts "4 - List all genres (e.g 'Comedy', 'Thriller')"
  puts "5 - List all labels (e.g. 'Gift', 'New')"
  puts "6 - List all authors (e.g. 'Stephen King')"
  puts "7 - List all sources (e.g. 'From a friend', 'Online shop')"
  puts '8 - Add a book'
  puts '9 - Add a music album'
  puts '10 - Add a game'
  puts '11 - Exit'
  puts ' '
end

loop do
  display_prompts
  option = gets.chomp.to_i
  case option
  when 1
    list_all_books
  when 2
    list_all_music_albums
  when 3
    list_of_games
  when 4
    list_all_genres
  when 5
    list_all_labels
  when 6
    list_all_authors
  when 7
    list_all_sources
  when 8
    add_a_book
  when 9
    add_a_music_album
  when 10
    add_a_game
  when 11
    break
  else
    'Option is Invalid!'
  end
end