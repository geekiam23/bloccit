FactoryGirl.define do
  factory :question do
    title RandomData.random_sentence
    body RandomData.random_sentence
    resolve false
  end
end
