class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home about contact team faq]

  def home
  end

  def about
  end

  def contact
  end
end
