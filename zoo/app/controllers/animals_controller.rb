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

  def edit
    @animal = Animal.find(params[:id])
  end

  def update
    animal_update = params[:animal]
    @animal = Animal.find(params[:id])
    @animal.update(name: animal_update[:name], species: animal_update[:species], age: animal_update[:age])
    redirect_to animal_path(params[:id])
  end
end
