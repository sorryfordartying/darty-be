module Api
  module V1
    class GameRecordsController < ApplicationController
      def create
        gr = GameRecord.create!(gr_params)

        render status: :created
      end

      private

      def gr_params
        params.permit(:game_type, :player, :starting_score, :number_of_darts)
      end
    end
  end
end
