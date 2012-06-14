FactoryGirl.define do
	factory :comment do
		content 'very interesting'
		association :question
	end

	factory :question do 
		question_content 'was scooby-doo a dog?'
		answer_content 'yes he was!'
		has_answer true
	end
end