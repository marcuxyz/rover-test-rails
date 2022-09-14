class RoversController < ApplicationController
  def create   
    ParserRoverService.new.parse(file).each do |result|
      @rover = Rover.new(rover_params)
      @rover.result = result
      @rover.save!
    end

    flash.notice = 'Arquivo enviado com sucesso!'
    redirect_to root_path
  end

  private

  def rover_params
    params.required(:rover).permit(:file)
  end

  def file
    File.read(rover_params[:file])
  end
end