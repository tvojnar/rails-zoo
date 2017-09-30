class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def show
    @animal = Animal.find(params[:id])
  end

  def new
    @animal = Animal.new
  end

  def create
    animal = Animal.new(name: params[:animal][:name], species: params[:animal][:species], age: params[:animal][:age])
    animal.save
    redirect_to animals_path
  end
end
