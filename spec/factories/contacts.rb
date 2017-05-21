FactoryGirl.define do
  factory :contact do
    name "MyString"
    email "MyString"
    phone "MyString"
    body "MyText"
  end

  factory :contact_invalid, parent: :contact do |f|
    f.email nil
  end

end
