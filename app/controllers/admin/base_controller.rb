class Admin::BaseController < ApplicationController

  layout 'admin'

  before_action :authenticate_user!
  before_action :admin_required!

  private

  def admin_required!
    redirect_to root_path, alert: t('controllers.admin.base.unathorized') unless current_user.admin?
  end
end
