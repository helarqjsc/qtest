require 'spec_helper'

describe Comment do

	it 'belongs to a question' do 
		comment = FactoryGirl.create(:comment)	
		comment.question.should be_true
	end
	
	it 'should have a body' do 
		comment = FactoryGirl.create(:comment, content: '')
		comment.should_not be_valid		
	end
	 
end
