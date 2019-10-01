class Show < ActiveRecord::Base
  def highest_rating
    self.maximum(:rating)
  end

  def most_popular_show
    self.maximum(:rating).title
  end

  def lowest_rating
    self.minimum(:rating)
  end

  def least_popular_show
    self.minimum(:rating).title
  end

  def ratings_sum
    self.sum(:rating)
  end

  def popular_shows
    self.where("rating > ?", 5)
  end

  def shows_by_alphabetical_order
    self.order(name: :desc)
  end
end
