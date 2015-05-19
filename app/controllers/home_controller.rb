class HomeController < ApplicationController
  layout 'application_public', only: 'index'
  def index

  end
end