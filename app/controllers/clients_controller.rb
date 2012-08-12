class ClientsController < ApplicationController
	
	def index
		@clients = Client.all
	end

	def new
		@client = Client.new
	end

	def create
		@client = Client.new(params[:client])
		@client.save
		redirect_to @client
	end

	def show
		@client = Client.find(params[:id])
	end

	def edit
		@client = Client.find(params[:id])
	end

	def update
		@client = Client.find(params[:id])
		@client.update_attributes(params[:client])
		@client.save
		redirect_to @client
	end

	def destroy
		@client = Client.find(params[:id])
		@client.destroy
		redirect_to clients_path
	end

end
