require 'rails_helper'
require "spec_helper"




RSpec.describe Order, type: :model do
 	
	it "order_write_down_all_of_thing" do
    biccate = Bicyclecategory.create!(name:"car")
    bicpos = Bicyclepost.create!(name:"aa",value:222,bicyclecategory_id:biccate.id)
    user = User.create!(email:"hello@gmail.com",password:"123456")
    ord = Order.new(name:"UMA",phone:666,email:"qqq@gmail.com",bicyclepost_id:bicpos.id,user_id:user.id)
    ord.valid?
    expect(ord).to be_valid
  end


   #pending "add some examples to (or delete) #{__FILE__}"
 end
