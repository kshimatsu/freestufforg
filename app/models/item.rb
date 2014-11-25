class Item < ActiveRecord::Base
  include ActionView::Helpers::DateHelper

  has_many :media
  has_many :messages

  def remaining_days
    time_ago_in_words(self.expiry_date) + " left"
  end
end
