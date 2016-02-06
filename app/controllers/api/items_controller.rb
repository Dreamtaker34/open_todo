class Api::ItemsController < ApiController
  before_action :authenticated?

  def create
    item = Item.new(item_params)

    if item.save
      render json: item
    else
      render json: { errors: item.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private
  # Was testing here: tried a few combos and not sure how to get list_id
  # into the create
  def item_params
    params.require(:list).permit(item: :description)
  end
end
