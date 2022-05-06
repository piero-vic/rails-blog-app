require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(id: 1, name: 'User 1') }

  before { subject.save }

  it 'should have name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'should have posts_counter' do
    subject.posts_counter = nil
    expect(subject).to_not be_valid
  end

  it 'posts_counter should be an integer' do
    subject.posts_counter = 1.1
    expect(subject).to_not be_valid
  end

  it 'posts_counter should be greater or equal to 0' do
    subject.posts_counter = -1
    expect(subject).to_not be_valid
  end

  describe '#recent_posts' do
    it 'should return 3 posts' do
      Post.create(author_id: 1, title: 'Hello 1', text: 'This is my first post')
      Post.create(author_id: 1, title: 'Hello 2', text: 'This is my second post')
      Post.create(author_id: 1, title: 'Hello 3', text: 'This is my third post')
      Post.create(author_id: 1, title: 'Hello 4', text: 'This is my fourth post')
      Post.create(author_id: 1, title: 'Hello 5', text: 'This is my fifth post')
      expect(subject.recent_posts.length).to eq 3
    end
  end
end
