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

end
