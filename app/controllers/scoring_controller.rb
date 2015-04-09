class ScoringController < ApplicationController
  def index
    @scoring = Scoring.all
  end
end
