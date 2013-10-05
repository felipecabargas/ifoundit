require 'test_helper'

class ReportsControllerTest < ActionController::TestCase
  setup do
    @report = reports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create report" do
    assert_difference('Report.count') do
      post :create, report: { address: @report.address, age: @report.age, colors: @report.colors, contexture: @report.contexture, description: @report.description, gmaps: @report.gmaps, height: @report.height, latitude: @report.latitude, longitude: @report.longitude, med_detail: @report.med_detail, medical: @report.medical, raza: @report.raza, sex: @report.sex, size: @report.size, skin: @report.skin, status: @report.status, type: @report.type }
    end

    assert_redirected_to report_path(assigns(:report))
  end

  test "should show report" do
    get :show, id: @report
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @report
    assert_response :success
  end

  test "should update report" do
    patch :update, id: @report, report: { address: @report.address, age: @report.age, colors: @report.colors, contexture: @report.contexture, description: @report.description, gmaps: @report.gmaps, height: @report.height, latitude: @report.latitude, longitude: @report.longitude, med_detail: @report.med_detail, medical: @report.medical, raza: @report.raza, sex: @report.sex, size: @report.size, skin: @report.skin, status: @report.status, type: @report.type }
    assert_redirected_to report_path(assigns(:report))
  end

  test "should destroy report" do
    assert_difference('Report.count', -1) do
      delete :destroy, id: @report
    end

    assert_redirected_to reports_path
  end
end
