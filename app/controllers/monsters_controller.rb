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

    monster_params = params.require( :monster ).permit( :name, :health, :image_url )

    @monster = Monster.new( monster_params )

    if @monster.save
       redirect_to @monster
    else
       render 'new'
    end
  end

end
