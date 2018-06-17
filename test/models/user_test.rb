require 'test_helper'

class UserTest < ActiveSupport::TestCase

   test "user has email" do
      u=User.new(email: "heba2016@gmail.com")
      #u=User.new(fixture[:one][:email])
      #u.save
      assert u.email == "heba2016@gmail.com"
   end

  # test "users count" do
   #assert User.count == 2
   #end
end
