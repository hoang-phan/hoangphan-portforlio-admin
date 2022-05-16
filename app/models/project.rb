class Project < ApplicationRecord
  acts_as_taggable_on :tags
  belongs_to :company, optional: true

  has_one_attached :image

  def tag_list_str=(value)
    self.tag_list = value.split(",").map(&:strip).select(&:present?)
  end

  def tag_list_str
    tag_list.join(",")
  end
end
