require 'rails_helper'

RSpec.describe GameRecord do
  describe 'validations' do
    it { should validate_presence_of :game_type }
    it { should validate_presence_of :player }
    it { should validate_presence_of :number_of_darts }

    it { should validate_numericality_of :number_of_darts }
    it { should validate_numericality_of :starting_score }
  end
end
