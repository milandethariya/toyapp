class MicropostsController < ApplicationController
	layout :false
  def index
  	@microposts = Micropost.all
  end

  def new
  	@micropost = Micropost.new
  end

  def create
  	@micropost = Micropost.new(micropost_params)

  	if @micropost.save
  		redirect_to(microposts_path)
		else
			render("new")
		end

	end


  def edit
  
  end

  def update
	end

  def delete
  end

  def destroy
	end

end

private
	
	def micropost_params
		params.require(:micropost).permit(:content, :user_id)
	end
