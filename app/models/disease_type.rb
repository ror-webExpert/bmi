class DiseaseType < ApplicationRecord
  has_many :doctors
  has_many :diseases
  has_one_attached :image

  def disease_type_data
    {
      id: self.id,
      name: self.symbol.html_safe,
      # image_url: self.image.present? ? rails_blob_url(self.image) : '',
    }
  end
end
