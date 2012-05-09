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


describe :index_without_domino, :type => :request do
  before do
    visit '/'
  end

  it 'should have three people' do
    page.all('ul li').count.should == 3
  end

  context 'John Doe' do
    subject do
      page.all('ul li').find do |node|
        node.find('.name').text == 'John Doe'
      end
    end

    it 'should have an age of 47' do
      subject.find('.age').text.should == '47'
    end
  end
end
