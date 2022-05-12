require 'rails_helper'

RSpec.describe 'Users Show Page', type: :feature do
  before(:all) do
    @user = User.take
  end

  before(:each) do
    visit user_path(@user.id)
  end

  it 'has profile picture' do
    expect(page).to have_css('img')
  end

  it 'has the name of the user' do
    expect(page).to have_content(@user.name)
  end

  it 'displays number of posts' do
    expect(page).to have_content("Number of posts: #{@user.posts_counter}")
  end

  it 'displays the user bio' do
    expect(page).to have_content(@user.bio)
  end

  it 'displays the users most recent posts' do
    posts = @user.recent_posts
    posts.each { |post| expect(page).to have_content(post.title) }
    count = page.all('ul li').size
    expect(posts.length).to eq(count)
  end

  it 'has link to see all posts' do
    expect(page).to have_link('See All Posts')
  end

  it 'takes to root page when submitted with correct input' do
    click_link('See All Posts')
    expect(current_path).to eql(user_posts_path(@user.id))
  end
end
