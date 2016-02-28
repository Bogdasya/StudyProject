class Reading < ActiveRecord::Base
  scope :javascript, -> { where(theme: 'Javascript') }
  scope :it, -> { where(theme: 'IT') }
  scope :databases, -> { where(theme: 'Databases') }
end
