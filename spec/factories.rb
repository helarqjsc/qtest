Factory.define :comment do |f|
	f.content = 'very interesting'
	f.association :question
end

Factory.define :question do |f|
	f.question_content = 'was scooby-doo a dog?'
	f.answer_content = 'yes he was!'
	f.has_answer = true
end