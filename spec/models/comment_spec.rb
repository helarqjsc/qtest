require 'spec_helper'

describe Comment do

	it 'belongs to question' do 
		comment = FactoryGirl.create(:comment)	
		comment.question.should be_true
	end
	
	it 'can be only added to an answered question' do
		question1 = FactoryGirl.create(:question, has_answer: false, answer_content: '')
		question2 = FactoryGirl.create(:question)
		comment = FactoryGirl.create(:comment, question_id: nil)	
		
		question1.add_comment(comment).should be_false
		question2.add_comment(comment).should be_true
	end
	
end
