class StylistsController < ApplicationController
  before_action :set_stylist, only: [:show, :update, :destroy]

  # GET /stylists
  # GET /stylists.json
  api!
  def index
    @stylists = Stylist.all

    render json: @stylists
  end

  # GET /stylists/1
  # GET /stylists/1.json
  api :GET, '/stylists/:id'
  param :id, :number
  def show
    render json: @stylist
  end

  # POST /stylists
  # POST /stylists.json
  api!
  def create
    @stylist = Stylist.new(stylist_params)

    if @stylist.save
      render json: @stylist, status: :created, location: @stylist
    else
      render json: @stylist.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /stylists/1
  # PATCH/PUT /stylists/1.json
  def update
    @stylist = Stylist.find(params[:id])

    if @stylist.update(stylist_params)
      head :no_content
    else
      render json: @stylist.errors, status: :unprocessable_entity
    end
  end

  # DELETE /stylists/1
  # DELETE /stylists/1.json
  def destroy
    @stylist.destroy

    head :no_content
  end

  private

    def set_stylist
      @stylist = Stylist.find(params[:id])
    end

    def stylist_params
      params.require(:stylist).permit(:name, :email, :password)
    end
end
