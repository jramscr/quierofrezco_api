class Api::V1::OffersController < ApplicationController
  before_action :set_offer, only: [:show, :update, :destroy]

  # GET /offers
  # GET /offers.json
  def index
    @offers = Offer.all

    render json: @offers
  end

  # GET /offers/1
  # GET /offers/1.json
  def show
    render json: @offer
  end

  # POST /offers
  # POST /offers.json
  def create
    @offer = Offer.new(offer_params)

    if @offer.save
      render json: @offer, status: :created, location: @offer
    else
      render json: @offer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /offers/1
  # PATCH/PUT /offers/1.json
  def update
    @offer = Offer.find(params[:id])

    if @offer.update(offer_params)
      head :no_content
    else
      render json: @offer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /offers/1
  # DELETE /offers/1.json
  def destroy
    @offer.destroy

    head :no_content
  end

  private

    def set_offer
      @offer = Offer.find(params[:id])
    end

    def offer_params
      params[:offer]
    end
end
