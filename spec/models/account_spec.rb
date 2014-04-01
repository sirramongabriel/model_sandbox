require 'spec_helper'

describe Account do
  let(:account) { Account.create! }
  let(:user)    { User.create! }

  it 'returns a valid .account object' do
    expect(account).to be_valid
  end

  it 'returns a valid .user object' do
    expect(user).to be_valid
  end

  it 'returns an array of users' do
    users = []
    user1 = create :user, fname: 'bill'
    user2 = create :user, fname: 'john'
    user3 = create :user, fname: 'todd'
    users << user2 << user1 << user3
    expect(users).to eq [user2, user1, user3]
  end
end
