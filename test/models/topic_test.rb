require 'test_helper'

describe Topic do
  subject { Topic.new }
  context 'Title:' do
    it { must have_valid(:title).when('Pizza Places', 'What is this?') }
    it { wont have_valid(:title).when('', nil) }
  end
  context 'Body:' do
    it { must have_valid(:body).when('This is my favorite pizza place!') }
    it { wont have_valid(:body).when('', nil) }
  end
end
