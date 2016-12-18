class Event < ApplicationRecord
	has_many :possible_days
	has_many :selected_times
	has_many :students

	accepts_nested_attributes_for :possible_days
	accepts_nested_attributes_for :selected_times, allow_destroy: true
	accepts_nested_attributes_for :students, allow_destroy: true
end
