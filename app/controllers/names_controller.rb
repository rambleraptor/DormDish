class NamesController < ApplicationController
  def index
    @names = Name.order(:title).where("title like ?", "%#{params[:term]}%")
    render json: @names.map(&:title)
  end
end
