require 'spec_helper'

describe Question do
	it 'should have an answer_content if has_answer == true' do
		lambda{
			FactoryGirl.create(:question, answer_content: '', has_answer: true)
		}.should raise_error	
	end

	it 'should have a body' do
		lambda{
			FactoryGirl.create(:question, question_content: '')
		}.should raise_error
	end
end
