class PagesController < ApplicationController
  def home
  	@posts=Blog.all
  	@skills=Skills.all
  end

  def about
  end

  def contact
  end
end
