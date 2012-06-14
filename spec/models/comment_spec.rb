require 'spec_helper'

describe Comment do
	it 'belongs to a question' do 
		comment = FactoryGirl.create(:comment)	
		comment.question.should be_true
	end
	
	it 'should have a body' do 
		lambda{
			FactoryGirl.create(:comment, content: '')
		}.should raise_error		
	end
	 
end
