class Admin::NewsItemsController < AdminController
  expose(:news_item, attributes: :news_item_params)
  expose(:news_items)

  def create
    redirect_to news_items_path if news_item.save
  end

  def destroy
    redirect_to action: :index if news_item.destroy
  end

  def update
    redirect_to news_items_path if news_item.save
  end

  private
  def news_item_params
    params.require(:news_item).permit(
      :title,
      :date_text,
      :featured_image,
      :content
    )
  end
end
