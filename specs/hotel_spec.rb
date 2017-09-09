require_relative 'spec_helper'
require_relative '../lib/hotel'

describe 'Hotel' do

  before do
    @test_hotel = Property::Hotel.new
  end

  it "can be initialized" do
    @test_hotel.must_be_instance_of Property::Hotel
  end
  it "responds to its attr_reader" do
    @test_hotel.must_respond_to :reservations
    @test_hotel.must_respond_to :rooms
    @test_hotel.must_respond_to :room_price
  end

  it "can access the list of all of the rooms in the hotel" do
    @test_hotel.rooms.must_equal (1..20).to_a
  end

  it "there should be 20 total rooms" do
    @test_hotel.rooms.count.must_equal 20
  end

  it "room always costs $200/night" do
    @test_hotel.room_price.must_equal 200
  end
end

describe "reserve_room" do

    before do
      @test_hotel = Property::Hotel.new
      @check_in = Date.new(2017, 05, 05)
      @check_out = @check_in + 3
    end


    it "cannot book invalid room number" do
      room = "garbage"
      proc {@test_hotel.reserve_room(room, @check_in, @check_out)}.must_raise ArgumentError
    end

  it "raises an error if tried to double-book room " do
    room = 5
    @test_hotel.reserve_room(room, @check_in, @check_out)
    proc {@test_hotel.reserve_room(room, @check_in, @check_out)}.must_raise ArgumentError
  end

  it "adds the reservation to @reservations" do
    test_rez = @test_hotel.reserve_room(10, @check_in, @check_out)
    @test_hotel.reservations.must_include test_rez
  end

it "can reserve a room for a given date range" do

end

it "can access the list of reservations for a specific date" do

end

it "I can get the total cost for a given reservation" do

end

it "room always costs $200/night" do

end

it "last day of a reservation is the checkout day, so the guest should not be charged for that night" do

end


it "I can view a list of rooms that are not reserved for a given date range" do

end

it "I can reserve an available room for a given date range" do

end

it "Your code should raise an exception when asked to reserve a room that is not available" do

end

it " I can create a block of rooms:"do

end

# need a date range, collection of rooms and a discounted room rate
it "block should only include rooms that are available for the given date range" do

end
it "a room is set aside in a block, it is not available for reservation by the general public, nor can it be included in another block" do

end
it "a room is set aside in a block it can't be included in another block" do

end
it "can check whether a given block has any rooms available" do

end

it "can reserve a room from within a block of rooms" do

end

it "A block can contain a maximum of 5 rooms" do

end

it "When a room is reserved from a block of rooms, the reservation dates will always match the date range of the block" do

end

it "All of the availability checking logic from Wave 2 should now respect room blocks as well as individual reservations" do

end
end
