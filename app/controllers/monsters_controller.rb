class MonstersController < ApplicationController

  def index
    @monsters = Monster.all
  end

  def show
    @monster = Monster.find(params[:id])
  end

  def new
    @monster = Monster.new
  end

  def create
    monster_params

    @monster = Monster.new( monster_params )

    if @monster.save
       redirect_to @monster
    else
       render 'new'
    end
  end

  def edit
    @monster = Monster.find(params[:id])
  end

  def update
    @monster = Monster.find( params[:id] )

    monster_params

    if @monster.update_attributes( monster_params )
       redirect_to @monster
    else
       render 'edit'
    end
  end

private

  def monster_params
    params.require( :monster ).permit( :name, :health, :image_url )
  end


end
