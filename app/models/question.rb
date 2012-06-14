class Question < ActiveRecord::Base
	validates_presence_of :question_content
	validates_each :has_answer do |record, attr, value|
      record.errors.add(attr, 'doesn\'t have an answer body but has_answer is true') if (record.has_answer ==  true) and (record.answer_content.blank? == true)
	end
end
