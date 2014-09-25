class Meeting < ActiveRecord::Base
  has_many :attendances
  has_many :users, through: :attendances

  def friendly_date
    date.strftime('%A %B %e, %Y at %l:%M %P')
  end

end
