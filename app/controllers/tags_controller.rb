class TagsController < ApplicationController

  def new
    @tags = Tag.all
    @tag = Tag.new
    @user = current_user.list_id
  end

  def create
    @tag = Tag.new(tag_params)
    if @tag.save
     redirect_to new_tag_path, notice: "You have created tag successfully."
    else
     @ltags = Tag.all
     render :new, notice: "miss"
    end
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    redirect_to new_tag_path
  end

  private
  def tag_params
    params.require(:tag).permit(:tag_name)
  end

end
