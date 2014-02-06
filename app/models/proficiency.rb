class Proficiency < ActiveRecord::Base
  belongs_to :user
  belongs_to :skill

  validates :user_id, presence: true
  validates :skill_id, presence: true
  validates :years_experience, presence: true, numericality: { greater_than_or_equal_to: 0}
  validates :formal_education, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than: 2 }

end
