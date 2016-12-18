require 'test_helper'

class PossibleDaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @possible_day = possible_days(:one)
  end

  test "should get index" do
    get possible_days_url
    assert_response :success
  end

  test "should get new" do
    get new_possible_day_url
    assert_response :success
  end

  test "should create possible_day" do
    assert_difference('PossibleDay.count') do
      post possible_days_url, params: { possible_day: { day: @possible_day.day, event_id: @possible_day.event_id, from_date: @possible_day.from_date, from_time: @possible_day.from_time, to_date: @possible_day.to_date, to_time: @possible_day.to_time } }
    end

    assert_redirected_to possible_day_url(PossibleDay.last)
  end

  test "should show possible_day" do
    get possible_day_url(@possible_day)
    assert_response :success
  end

  test "should get edit" do
    get edit_possible_day_url(@possible_day)
    assert_response :success
  end

  test "should update possible_day" do
    patch possible_day_url(@possible_day), params: { possible_day: { day: @possible_day.day, event_id: @possible_day.event_id, from_date: @possible_day.from_date, from_time: @possible_day.from_time, to_date: @possible_day.to_date, to_time: @possible_day.to_time } }
    assert_redirected_to possible_day_url(@possible_day)
  end

  test "should destroy possible_day" do
    assert_difference('PossibleDay.count', -1) do
      delete possible_day_url(@possible_day)
    end

    assert_redirected_to possible_days_url
  end
end
