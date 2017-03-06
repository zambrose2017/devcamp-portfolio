class PortfoliosController < ApplicationController
layout "portfolio"	

before_action :set_portfolio, only: [:edit, :update, :show, :destroy]

  def index
	@portfolio_items = Portfolio.all
	end
def angular
  @angular_portfolio_items = Portfolio.angular
end
	def new
		@portfolio_item = Portfolio.new
    3.times { @portfolio_item.technologies.build}	

  end

	def create
    @portfolio_item = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Your portfolio item is now live.' }
        format.json { render :show, status: :created, location: @blog }
      else
        format.html { render :new }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end
def edit
	end
def update
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
      	format.html { redirect_to portfolios_path, notice: 'The record successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

 def show 
    	
    end
def destroy
    #prefroms the look up
    #destroys/deletes the record
    @portfolio_item.destroy
    #redirect
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Portfolio successfully removed.' }
    end
  end

private
  def set_portfolio
    @portfolio_item = Portfolio.find(params[:id])
  end
   def portfolio_params
      params.require(:portfolio).permit(:title, :subtitle, :body,
      technologies_attributes: [:name])
    end
end
