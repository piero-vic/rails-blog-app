require 'rails_helper'

RSpec.describe Like, type: :model do
  before do
    User.create(id: 1, name: 'User 1', email: 'test@test.com', password: '123456')
    Post.create(id: 1, author_id: 1, title: 'Hello 1', text: 'This is my first post')
  end

  it 'should update the post likes_counter when created' do
    Like.create(post_id: 1, author_id: 1)
    expect(Post.take.likes_counter).to eq 1
  end
end
