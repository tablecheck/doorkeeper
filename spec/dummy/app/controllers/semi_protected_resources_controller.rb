class SemiProtectedResourcesController < ApplicationController
  before_filter :doorkeeper_authorize!, only: :index

  def index
    render plain: 'protected index'
  end

  def show
    render plain: 'non protected show'
  end
end
