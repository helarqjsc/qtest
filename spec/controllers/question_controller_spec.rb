require 'spec_helper'

describe QuestionController do
	it 'should render a question list on #show_all action' do
		get 'show_all'
		response.should be_success
	end	
	
	it 'should render a single question on #show action' do
		question = FactoryGirl.create(:question)
		get 'show', {id: question.id}
		response.should be_success
	end	
	
	it 'should create a question in db on #add action' do
		post 'add', {content: 'what is the meaning of life?'}
		Question.all.should_not be_empty
	end
end
