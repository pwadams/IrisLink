class ScoringController < ApplicationCotroller
  def index
    @scoring = Scoring.all
  end
end
