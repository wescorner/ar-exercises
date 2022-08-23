class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than: 0 }
  validate :mens_or_womens

  before_destroy :can_destroy, prepend: true

  private

  def mens_or_womens
    if mens_apparel == false && womens_apparel == false
      errors.add(:mens_or_womens, "Store must carry either men's apparel or women's apparel")
    end
  end

  def can_destroy
    if Employee.find_by(store_id: self.id)
      errors.add(:can_destroy, "cannot delete non-empty store")
      throw :abort
    end
  end
end
