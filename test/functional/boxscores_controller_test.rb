require 'test_helper'

class BoxscoresControllerTest < ActionController::TestCase
  setup do
    @boxscore = boxscores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:boxscores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create boxscore" do
    assert_difference('Boxscore.count') do
      post :create, boxscore: { assists: @boxscore.assists, blocks: @boxscore.blocks, fgattempted: @boxscore.fgattempted, fgmade: @boxscore.fgmade, game_id: @boxscore.game_id, player_id: @boxscore.player_id, points: @boxscore.points, rebounds: @boxscore.rebounds, steals: @boxscore.steals, threepointattempted: @boxscore.threepointattempted, threepointmade: @boxscore.threepointmade, turnovers: @boxscore.turnovers }
    end

    assert_redirected_to boxscore_path(assigns(:boxscore))
  end

  test "should show boxscore" do
    get :show, id: @boxscore
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @boxscore
    assert_response :success
  end

  test "should update boxscore" do
    put :update, id: @boxscore, boxscore: { assists: @boxscore.assists, blocks: @boxscore.blocks, fgattempted: @boxscore.fgattempted, fgmade: @boxscore.fgmade, game_id: @boxscore.game_id, player_id: @boxscore.player_id, points: @boxscore.points, rebounds: @boxscore.rebounds, steals: @boxscore.steals, threepointattempted: @boxscore.threepointattempted, threepointmade: @boxscore.threepointmade, turnovers: @boxscore.turnovers }
    assert_redirected_to boxscore_path(assigns(:boxscore))
  end

  test "should destroy boxscore" do
    assert_difference('Boxscore.count', -1) do
      delete :destroy, id: @boxscore
    end

    assert_redirected_to boxscores_path
  end
end
