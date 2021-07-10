class NewsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :update, :delete]

  def index

  end

  def show
    dom_sanitizer = Rails::Html::SafeListSanitizer.new
    @news = News.find_by(id: params[:id])
    @news.content = dom_sanitizer.sanitize(@news.content, attributes: %w(id class style))
  end

  def new
    @news = News.new
  end

  def create
    @news = News.create publication_params
    @news.user_id = current_user[:id]

    if @news.save
      redirect_to news_path(id: @news.id)
    else
      @errors = @news.errors.messages[:content][0]
      puts("@errors", @errors)
    end
  end

  def update

  end

  def destroy
    news_id = params[:id]
    puts("news_id", news_id)

    @news = News.find_by(id: news_id)

    puts("@news", @news.to_json)

    nil unless @news.present?

    if @news.destroy
      redirect_to root_url
    end

  end

  private

  def publication_params
    params.require(:publication).permit(:content, :published, :thumbnail_url, :reading_time, :title)
  end
end
