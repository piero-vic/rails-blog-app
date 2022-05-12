require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(name: 'User 1', email: 'test@test.com', password: '123456') }
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
      (1..5).each do |i|
        subject.posts.create(title: "Hello #{i}", text: "This is the post number #{i}")
      end
      expect(subject.recent_posts.length).to eq 3
    end
  end
end
