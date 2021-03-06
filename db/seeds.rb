# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Users
first_user = User.create(name: 'Tom', photo: 'https://randomuser.me/api/portraits/men/75.jpg', 
                        bio: 'Teacher from Mexico.', email: 'tom@qwerty.com', password: 'qweqwe123',
                        confirmed_at: DateTime.now)
second_user = User.create(name: 'Lilly', photo: 'https://randomuser.me/api/portraits/women/75.jpg', 
                          bio: 'Teacher from Poland.', email: 'lilly@qwerty.com', password: 'qweqwe123')

# Posts
first_post = Post.create(author_id: first_user.id, title: 'Hello', text: 'This is my first post')
second_post = Post.create(author_id: first_user.id, title: 'Hello 2', text: 'This is my second post')
third_post = Post.create(author_id: first_user.id, title: 'Hello 3', text: 'This is my third post')
fourth_post = Post.create(author_id: first_user.id, title: 'Hello 4', text: 'This is my fourth post')
fifth_comment = Post.create(author_id: first_user.id, title: 'Hello 5', text: 'This is my fifth post')

# Comments
first_comment = Comment.create(post_id: first_post.id, author_id: second_user.id, text: 'Hi Tom!')
second_comment = Comment.create(post_id: first_post.id, author_id: second_user.id, text: 'Hello Tom!')
third_comment = Comment.create(post_id: first_post.id, author_id: second_user.id, text: 'Nice Post Tom!')
fourth_comment = Comment.create(post_id: first_post.id, author_id: second_user.id, text: 'Hola Tom!')
fifth_comment = Comment.create(post_id: first_post.id, author_id: second_user.id, text: 'Ciao Tom!')
sixth_comment = Comment.create(post_id: first_post.id, author_id: second_user.id, text: 'Hallo Tom!')
