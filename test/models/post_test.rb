require 'test_helper'

describe Post do
  subject { Post.new }
  context 'Body:' do
    it { must have_valid(:body).when('This is my favorite pizza place!') }
    it { wont have_valid(:body).when('', nil) }
  end
end
