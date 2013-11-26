class UsersController < ApplicationController
  def index
    @users = Rails.cache.fetch("users", :expires_in => 30.seconds) do
      User.by_karma.limit(50).all
    end
  end
end
