class NatureOfBusinessesController < ApplicationController
  # GET /nature_of_businesses
  # GET /nature_of_businesses.json
  def index
    @nature_of_businesses = NatureOfBusiness.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @nature_of_businesses }
    end
  end

  # GET /nature_of_businesses/1
  # GET /nature_of_businesses/1.json
  def show
    @nature_of_business = NatureOfBusiness.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @nature_of_business }
    end
  end

  # GET /nature_of_businesses/new
  # GET /nature_of_businesses/new.json
  def new
    @nature_of_business = NatureOfBusiness.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @nature_of_business }
    end
  end

  # GET /nature_of_businesses/1/edit
  def edit
    @nature_of_business = NatureOfBusiness.find(params[:id])
  end

  # POST /nature_of_businesses
  # POST /nature_of_businesses.json
  def create
    @nature_of_business = NatureOfBusiness.new(params[:nature_of_business])

    respond_to do |format|
      if @nature_of_business.save
        format.html { redirect_to @nature_of_business, notice: 'Nature of business was successfully created.' }
        format.json { render json: @nature_of_business, status: :created, location: @nature_of_business }
      else
        format.html { render action: "new" }
        format.json { render json: @nature_of_business.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /nature_of_businesses/1
  # PUT /nature_of_businesses/1.json
  def update
    @nature_of_business = NatureOfBusiness.find(params[:id])

    respond_to do |format|
      if @nature_of_business.update_attributes(params[:nature_of_business])
        format.html { redirect_to @nature_of_business, notice: 'Nature of business was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @nature_of_business.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nature_of_businesses/1
  # DELETE /nature_of_businesses/1.json
  def destroy
    @nature_of_business = NatureOfBusiness.find(params[:id])
    @nature_of_business.destroy

    respond_to do |format|
      format.html { redirect_to nature_of_businesses_url }
      format.json { head :no_content }
    end
  end
end
