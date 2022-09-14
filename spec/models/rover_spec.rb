require 'rails_helper'

describe Rover, type: :model do
  it 'can\'t save the rover if result is null' do
    rover = Rover.create(result: '')

    expect(rover.valid?).to be_falsey
  end
end
