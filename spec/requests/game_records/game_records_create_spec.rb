require 'rails_helper'

RSpec.describe 'it creates a new game record' do
  it 'creates a new game record' do
    expect(GameRecord.count).to eq(0)

    game_type = '01'
    player = "JRK"
    starting_score = 301
    number_of_darts = 10

    post "/api/v1/game_records?game_type=#{game_type}&player=#{player}&starting_score=#{starting_score}&number_of_darts=#{number_of_darts}"

    expect(response).to be_successful
    expect(GameRecord.count).to eq(1)
    expect(GameRecord.first.game_type).to eq('zero_one')
    expect(GameRecord.first.player).to eq(player)
    expect(GameRecord.first.starting_score).to eq(starting_score)
    expect(GameRecord.first.number_of_darts).to eq(number_of_darts)
  end
end