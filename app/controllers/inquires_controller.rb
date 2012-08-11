class InquiresController < ApplicationController

	def index
		@inquires = Inquire.all
	end

	def new
		@inquire = Inquire.new
	end

	def create
		@inquire = Inquire.new(params[:inquire])
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
end
