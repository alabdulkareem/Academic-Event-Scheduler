require 'test_helper'

class SelectedTimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @selected_time = selected_times(:one)
  end

  test "should get index" do
    get selected_times_url
    assert_response :success
  end

  test "should get new" do
    get new_selected_time_url
    assert_response :success
  end

  test "should create selected_time" do
    assert_difference('SelectedTime.count') do
      post selected_times_url, params: { selected_time: { cell_status: @selected_time.cell_status, event_id: @selected_time.event_id, from_date: @selected_time.from_date, from_time: @selected_time.from_time, student_id: @selected_time.student_id, to_date: @selected_time.to_date, to_time: @selected_time.to_time } }
    end

    assert_redirected_to selected_time_url(SelectedTime.last)
  end

  test "should show selected_time" do
    get selected_time_url(@selected_time)
    assert_response :success
  end

  test "should get edit" do
    get edit_selected_time_url(@selected_time)
    assert_response :success
  end

  test "should update selected_time" do
    patch selected_time_url(@selected_time), params: { selected_time: { cell_status: @selected_time.cell_status, event_id: @selected_time.event_id, from_date: @selected_time.from_date, from_time: @selected_time.from_time, student_id: @selected_time.student_id, to_date: @selected_time.to_date, to_time: @selected_time.to_time } }
    assert_redirected_to selected_time_url(@selected_time)
  end

  test "should destroy selected_time" do
    assert_difference('SelectedTime.count', -1) do
      delete selected_time_url(@selected_time)
    end

    assert_redirected_to selected_times_url
  end
end
