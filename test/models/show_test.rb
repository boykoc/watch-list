require 'test_helper'

class ShowTest < ActiveSupport::TestCase
  test "should save show" do 
    user = User.create(uid: '01-0123456',
                       name: 'R2-D2')
    show = Show.new(season: 1,
                    episode: 2,
                    title: 'Friends',
                    user: user) 
    assert show.save
  end
end
