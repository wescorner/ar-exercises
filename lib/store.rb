class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than: 0 }
  validate :mens_or_womens

  private

  def mens_or_womens
    if mens_apparel == false && womens_apparel == false
      errors.add(:mens_or_womens, "Store must carry either men's apparel or women's apparel")
    end
  end

end
