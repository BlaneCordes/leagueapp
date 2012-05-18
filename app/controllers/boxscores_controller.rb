class BoxscoresController < ApplicationController
  
  before_filter :get_game
  
  # GET /boxscores
  # GET /boxscores.json
  def index
    @boxscores = @game.boxscores

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @boxscores }
    end
  end

  # GET /boxscores/1
  # GET /boxscores/1.json
  def show
    @boxscore = @game.boxscores.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @boxscore }
    end
  end

  # GET /boxscores/new
  # GET /boxscores/new.json
  def new
    @game = Game.find(params[:game_id])
    @boxscore = @game.boxscores.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @boxscore }
    end
  end

  # GET /boxscores/1/edit
  def edit
    @boxscore = @game.boxscores.find(params[:id])
  end

  # POST /boxscores
  # POST /boxscores.json
  def create
    @boxscore = @game.boxscores.build(params[:boxscore])

    respond_to do |format|
      if @boxscore.save
        format.html { redirect_to game_boxscores_path(@game_id), notice: 'Boxscore was successfully created.' }
        format.json { render json: @boxscore, status: :created, location: @boxscore }
      else
        format.html { render action: "new" }
        format.json { render json: @boxscore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /boxscores/1
  # PUT /boxscores/1.json
  def update
    @boxscore = @game.boxscores.find(params[:id])
    

    respond_to do |format|
      if @boxscore.update_attributes(params[:boxscore])
        format.html { redirect_to game_boxscores_url(@game), notice: 'Boxscore was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @boxscore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boxscores/1
  # DELETE /boxscores/1.json
  def destroy
    @boxscore = @game.boxscores.find(params[:id])
    @boxscore.destroy

    respond_to do |format|
      format.html { redirect_to @game }
      format.json { head :no_content }
    end
  end
  
  private
  def get_game
    @game = Game.find(params[:game_id])
  end
end
