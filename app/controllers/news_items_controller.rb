class NewsItemsController < ApplicationController
  expose(:news_items)
  expose(:news_item) { NewsItem.find_by(slug: params[:id]) }

  def index
    respond_to do |format|
      format.json { render json: { news: news_items.map(&:to_hash) } }
      format.html { redirect_to '/#/news' }
    end
  end

  def show
    respond_to do |format|
      format.json { render json: { news_item: news_item.to_hash } }
      format.html { redirect_to "/#/news/#{news_item.slug}" }
    end
  end
end
