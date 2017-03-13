class Question < ApplicationRecord
  belongs_to :question_theme
  has_many :question_choices

  validates :category, :presence => true, :allow_blank => false
  validates :title, :presence => true, :allow_blank => false
end
