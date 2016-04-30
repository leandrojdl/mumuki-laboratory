class Book < ActiveRecord::Base
  validates_presence_of :name, :locale

  has_many :chapters
  has_many :complements

  markdown_on :preface

  def rebuild!(chapters)
    transaction do
      self.chapters.all_except(chapters).delete_all
      chapters.each_with_index do |it, index|
        it.number = index + 1
        it.save!
      end
      save!
    end
  end


end
