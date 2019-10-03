class MainController < ApplicationController
  def index
    @tasks = Project.all
    puts "******"
    puts params[:todocreate].inspect
    puts "******"
  end

  def update
  end

  def create
    puts "******"
    puts params[:title].inspect
    puts "******"
    redirect_to root_path
  end
end
