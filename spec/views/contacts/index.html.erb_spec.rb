require 'rails_helper'

RSpec.describe "contacts/index", type: :view do
  before(:each) do
    assign(:contacts, [
      Contact.create!(
        :name => "Name",
        :email => "Email",
        :phone => "Phone",
        :body => "MyText"
      ),
      Contact.create!(
        :name => "Name",
        :email => "Email",
        :phone => "Phone",
        :body => "MyText"
      )
    ])
  end

  it "renders a list of contacts" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
