class PagesController < ApplicationController
  def home
    @q = Room.ransack(params[:q])
    @rooms = @q.result.page(params[:page]).per(Settings.per_page.default)
  end

  def search

  end
end
