class Inquiry < ApplicationRecord
	  include ActiveModel::Model
  	attr_accessor :name, :contents, :title, :mail

	validates :name, presence:true
	validates :title, presence: true
	validates :mail, presence: true
	validates :contents, presence: true
end
