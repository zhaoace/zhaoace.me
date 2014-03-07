class WelcomeController < ApplicationController

    
  def say

    @users = User.all
    @armys = Army.all
  end


  #post save => welcome#save
  def save
    @armys = Army.all
    @message = params
    # isSave = params["save_record"] if params.include? save_record
    if params["save_record"] then 
        commander = params["commander"]
        a = Army.where("commander = '#{commander}'").first
        @message =  "commander = '#{commander}'"
        a = Army.create unless a
        a.commander = params[:commander]
        a.food = params[:food]
        a.barbarian_lv = params[:barbarian_lv]
        a.barbarian_count = params[:barbarian_count]
        a.save
    end

  end


end
