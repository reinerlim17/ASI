class InquiresController < ApplicationController
	before_filter :authenticate_user!

	def index
		@inquires = Inquire.all
	end

	def new
		@user = current_user
		@inquire = @user.inquires.build
	end

	def create
		@user = current_user
		@inquire = @user.inquires.build(params[:inquire])
		@inquire.save
		redirect_to @inquire
	end

	def show
		@inquire = Inquire.find(params[:id])
	end

	def destroy
		@inquire = Inquire.find(params[:id])
		@inquire.destroy
		redirect_to inquires_path
	end

	def edit
		@inquire = Inquire.find(params[:id])
	end

	def update
		@inquire = Inquire.find(params[:id])
		@inquire.update_attributes(params[:inquire])
		@inquire.save
		redirect_to @inquire
	end

	private
		def find_user_id
			@user = current_user
		end
end
