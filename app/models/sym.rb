class Sym < ActiveRecord::Base
  has_many :samples, dependent: :destroy
  has_many :representations, dependent: :destroy
  has_many :latex_representations
  has_many :unicode_representations
  extend FriendlyId
  friendly_id :name, :use => :slugged
  validates_presence_of :name
  validates_uniqueness_of :name

  # top samples
  def sam
    samples.top.limit(5)
  end
end