class Question < ApplicationRecord
  belongs_to :question_theme
  has_many :question_choices

  validates :title, :presence => true, :allow_blank => false
  validates :type, :presence => true, :allow_blank => false
end
