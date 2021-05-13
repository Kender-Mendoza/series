class Serie < ApplicationRecord
  belongs_to :prequel, class_name: "Serie", optional: true, dependent: :destroy
  belongs_to :sequel, class_name: "Serie", optional: true
  belongs_to :serie_type
  belongs_to :state

  has_many :episodes, dependent: :destroy
  accepts_nested_attributes_for :episodes, allow_destroy: true

  mount_uploader :cover_page_image, CoverPageImageUploader

  validates :prequel, uniqueness: true, allow_nil: true
  validates :sequel, uniqueness: true, allow_nil: true

  after_validation :link_prequel, if: -> { self.prequel_id.present? && self.prequel_id_changed? }
  after_validation :link_sequel, if: -> { self.sequel_id.present? && self.sequel_id_changed? }
  after_validation :unlink_prequel, if: -> { self.prequel_id.nil? && self.prequel_id_changed? }
  after_validation :unlink_sequel, if: -> { self.sequel_id.nil? && self.sequel_id_changed? }

  before_destroy :unlink_prequel, if: -> { self.prequel.present? }
  before_destroy :unlink_sequel, if: -> { self.sequel.present? }

  def link_prequel
    errors.add :prequel, message: "y sequela no pueden ser iguales." if self.prequel_id == self.sequel_id
    errors.add :prequel, message: "no puede ser la misma serie" if self.prequel_id == self.id
    errors.add :prequel, message: "ya tiene sequela" if self.prequel&.sequel_id&.present?

    serie_prequel = self.prequel
    serie_prequel.sequel = self
    serie_prequel.save(validate: false)
  end

  def link_sequel
    errors.add :sequel, message: "y sequela no pueden ser iguales." if self.prequel_id == self.sequel_id
    errors.add :sequel, message: "ya tiene prequela" if self.sequel&.prequel_id&.present?
    errors.add :sequel, message: "no puede ser la misma serie" if self.sequel_id == self.id

    serie_sequel = self.sequel
    serie_sequel.prequel = self
    serie_sequel.save(validate: false)
  end

  def unlink_prequel
    serie_prequel = Serie.find_by_id(self.prequel_id_was)
    serie_prequel.sequel = nil
    serie_prequel.save(validate: false)
  end

  def unlink_sequel
    serie_sequel = Serie.find_by_id(self.sequel_id_was)
    serie_sequel.prequel = nil
    serie_sequel.save(validate: false)

  def Serie.filter_index(letter, type, state)
    query = ""
    query = "name like '#{letter}%'" unless letter == "0"

    unless type == "0"
      query += " AND " unless query == "" 
      query += "serie_type_id = '#{type}'"
    end

    unless state == "0"
      query += " AND " unless query == "" 
      query += "state_id = '#{state}'"
    end

    Serie.where(query)
  end

end
