require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should save user" do 
    user = User.create(uid: "01-01256-014",
                       name: "Fred")
    assert user.save
  end
end
