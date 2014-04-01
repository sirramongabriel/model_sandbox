class User < ActiveRecord::Base
  attr_accessible :fname, :gender, :lname

  belongs_to :account
end
