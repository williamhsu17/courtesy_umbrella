class Umbrella < ApplicationRecord
  belongs_to :umbrella_holder, :polymorphic => true
  belongs_to :enterprises, :optional => true

  has_many :umbrella_rent_histories
end
