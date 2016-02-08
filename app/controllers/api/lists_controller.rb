class Api::ListsController < ApiController
  before_action :authenticated?

  def create
    list = List.new

    # Thinking this: didn't work
    # @user = params([:user][:id])
    # list = @user.lists.create(list_params)
    if list.save
      render json: list
    else
      render json: { errors: list.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    begin
      list = List.find(params[:id])
      list.destroy
      render json: {}, status: :no_content
    rescue ActiveRecord::RecordNotFound
      render :json => {}, :status => :not_found
    end
  end

  private
  # Can't get the name or user_id to save
  def list_params
    params.require(:list).permit(:name)
  end
end
