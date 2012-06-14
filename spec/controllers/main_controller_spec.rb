require 'spec_helper'

describe MainController do
	it 'should have "index" action' do
		subject.should respond_to(:index)
	end
end
