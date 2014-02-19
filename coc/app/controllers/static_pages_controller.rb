require 'coc_tools_v2.rb'


class StaticPagesController < ApplicationController
  def index
  end


  def cocTool
    myArmy = getArmyFromParams params 
    # @message ||= myArmy.soldiers
    @food = myArmy.food 
    @water =  myArmy.water
  end




  def coc
    myArmy = getArmyFromParams params 
    # @message ||= myArmy.soldiers
    @food = myArmy.food 
    @water =  myArmy.water
  end


  def getArmyFromParams params
    # soldiers = [[0,0],[0,0],[0,0],[0,0],[0,0],[0,0],[0,0],[0,0],[0,0] ]
    soldiers = []
    SOLDIER.keys.each do |soldier|
        level = params[soldier.to_s+"_lv"] ? params[soldier.to_s+"_lv"].to_i : 0
        count = params[soldier.to_s] ? params[soldier.to_s].to_i : 0
        soldiers << [level, count]
    end
    Army.new("coc",soldiers)
  end
end

