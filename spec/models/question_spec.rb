require 'spec_helper'

describe Question do
	it 'should have an answer_content if has_answer == true' do
		question = FactoryGirl.create(:question, answer_content: '', has_answer: true)
		question.should_not be_valid	
	end

	it 'should have a body' do
		question = FactoryGirl.create(:question, question_content: '')
		question.should_not be_valid	
	end
	
	it 'with an answer can have comments' do
		question = FactoryGirl.create(:question)
		comment = FactoryGirl.create(:comment, question_id: nil)	
		
		question.add_comment(comment).should be_true
	end
	
	it 'without an answer can not have any comments' do
		question = FactoryGirl.create(:question, has_answer: false, answer_content: '')
		comment = FactoryGirl.create(:comment, question_id: nil)	
		
		question.add_comment(comment).should be_false
	end
	
end
