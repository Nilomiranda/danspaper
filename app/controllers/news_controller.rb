class NewsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :update, :destroy]

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
    puts("params", publication_params)

    @news = News.create publication_params
    @news.user_id = current_user[:id]

    @news.thumbnail.attach(publication_params[:thumbnail])

    if @news.save
      redirect_to news_path(id: @news.id)
    else
      @errors = @news.errors.messages[:content][0]
      puts("@errors", @errors)
    end
  end

  def edit
    @news = News.find_by(id: params[:id])
  end

  def update
    @news = News.find_by(id: params[:id])

    if @news.update publication_params
      redirect_to news_path(id: @news.id)
    else
      @errors = @news.errors.messages[:content][0]
      puts("@errors", @errors)
    end
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

  def remove_thumbnail
    @news = News.find_by(id: params[:id])
    if @news.thumbnail.attached?
      @news.thumbnail.attachment.purge

      redirect_back fallback_location: edit_news_path(id: params[:id])
    end
  end

  private

  def publication_params
    params.require(:publication).permit(:content, :published, :thumbnail, :reading_time, :title)
  end
end
