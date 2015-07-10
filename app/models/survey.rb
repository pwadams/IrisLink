class Survey < ActiveRecord::Base
  belongs_to :patient
  validates :q1, presence: true
  validates :q2, presence: true
  validates :q3, presence: true
  validates :q4, presence: true
  validates :q5, presence: true
  validates :q6, presence: true
  validates :q7, presence: true
  validates :q8, presence: true
  validates :q9, presence: true
  validates :q10, presence: true
  validates :q11, presence: true
  validates :q12, presence: true
  validates :q13, presence: true
  validates :q14, presence: true
  validates :q15, presence: true
  validates :q16, presence: true
  validates :q17, presence: true
  validates :q18, presence: true

  def results
    results = {}
    results["q1"] = q1
    results["q2"] = q2
    results["q3"] = q3
    results["q4"] = q4
    results["q5"] = q5
    results["q6"] = q6
    results["q7"] = q7
    results["q8"] = q8
    results["q9"] = q9
    results["q10"] = q10
    results["q11"] = q11
    results["q12"] = q12
    results["q13"] = q13
    results["q14"] = q14
    results["q15"] = q15
    results["q16"] = q16
    results["q17"] = q17
    results["q18"] = q18
    results
  end

  def internal
    q1 + q6 + q8 + q12 + q13 + q17
  end

  def chance
    q2 + q4 + q9 + q11 + q15 + q16
  end

  def doctors
    q3 + q5 + q14
  end

  def other_people
    q7 + q10 + q18
  end

end
