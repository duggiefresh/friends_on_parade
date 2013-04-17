require 'test_helper'

describe Account do
  subject { Account.new }
  context 'Name:' do
    it { must have_valid(:first_name).when('Doug', 'George', 'Nicola') }
    it { wont have_valid(:first_name).when('', nil) }
    it { must have_valid(:last_name).when('Washington', 'Tesla') }
    it { wont have_valid(:last_name).when('', nil) }
  end
  context 'Email:' do
    it { must have_valid(:email).when('cat@dog.com', 'doug@college.edu') }
    it { wont have_valid(:email).when('', 'bad@email@something.com', nil) }
  end
end
