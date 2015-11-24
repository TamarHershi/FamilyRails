class Child < ActiveRecord::Base
  belongs_to :mom
  has_many :toys
end
