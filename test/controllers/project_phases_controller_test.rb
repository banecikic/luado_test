require 'test_helper'

class ProjectPhasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project_phase = project_phases(:one)
  end

  test "should get index" do
    get project_phases_url
    assert_response :success
  end

  test "should get new" do
    get new_project_phase_url
    assert_response :success
  end

  test "should create project_phase" do
    assert_difference('ProjectPhase.count') do
      post project_phases_url, params: { project_phase: { job_title: @project_phase.job_title, price: @project_phase.price, project_id: @project_phase.project_id, timeframe: @project_phase.timeframe } }
    end

    assert_redirected_to project_phase_url(ProjectPhase.last)
  end

  test "should show project_phase" do
    get project_phase_url(@project_phase)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_phase_url(@project_phase)
    assert_response :success
  end

  test "should update project_phase" do
    patch project_phase_url(@project_phase), params: { project_phase: { job_title: @project_phase.job_title, price: @project_phase.price, project_id: @project_phase.project_id, timeframe: @project_phase.timeframe } }
    assert_redirected_to project_phase_url(@project_phase)
  end

  test "should destroy project_phase" do
    assert_difference('ProjectPhase.count', -1) do
      delete project_phase_url(@project_phase)
    end

    assert_redirected_to project_phases_url
  end
end
