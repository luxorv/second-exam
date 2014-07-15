class Teacher < ActiveRecord::Base
  has_many :subjects, dependent: :destroy
  accepts_nested_attributes_for :subjects
end
