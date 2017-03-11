class QuestionChoice < ApplicationRecord
  belongs_to :question

  validates :choice, :presence => true, :allow_blank => false
end
