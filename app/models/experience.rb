class Experience < ApplicationRecord
  belongs_to :category
  belongs_to :supplier
  monetize :price_cents
end
