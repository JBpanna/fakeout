class FakeController < ApplicationController
  
  def index
  	@users = User.all.offset(20).limit(10)
  end

  def hundred
  	for i in 0..100 do
  		user = User.create(
  			first: Faker::Name.first_name,
  			last: Faker::Name.last_name,
  			phone_number: Faker::Number.number(10),
  			address: Faker::Address.street_address,
  			city: Faker::Address.city,
  			state: Faker::Address.state,
  			zip: Faker::Address.zip
  			)
  	end
  	head :ok
  end

end
