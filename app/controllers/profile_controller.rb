class ProfileController < ApplicationController
  before_action :authenticate_user!

  def publications
    puts "current_user[:id]", current_user[:id]
    # @news = News.find_by(user_id: current_user[:id])
    # @news = News.find_by_user_id current_user[:id]
    @news = News.where(user_id: current_user[:id])
    puts "@news", @news.to_json
  end
end
