class AccountsController < ApplicationController
  before_filter :check_for_public_profiles, :only => :show
  
  def edit
    redirect_to :controller => "registrations", :action => "edit"
  end
  
  def show
    if params[:id].blank?
      @user = current_user
    else
      @user = User.find(params[:id])
    end
  end

  private
  
  def check_for_public_profiles
    require_user unless @site.public_profiles?
  end

end
