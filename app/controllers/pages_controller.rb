class PagesController < ApplicationController
  def home
  end

  def index
    @pages = Pages.all
  end
end
