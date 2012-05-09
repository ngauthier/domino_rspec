require 'spec_helper'

describe :index, :type => :request do
  before do
    visit '/'
  end

  it 'should have three people' do
    Dom::Person.count.should == 3
  end

  context 'John Doe' do
    subject { Dom::Person.find_by_name 'John Doe' }
    its(:age) { should == '47' }
  end
end
