class User < ActiveRecord::Base
  enum class_level: { freshman: 1, sophmore: 2, junior: 3, senior: 4, graduate: 5 }

  has_many :attendances
  has_many :meetings, through: :attendances
end
