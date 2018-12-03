class FakeNewsController < ApplicationController
  before_action :set_fake_news, only: [:show, :edit, :update, :destroy]

  # GET /fake_news
  # GET /fake_news.json
  def index
    @fake_news = FakeNews.all
  end

  # GET /fake_news/1
  # GET /fake_news/1.json
  def show
  end

  # GET /fake_news/new
  def new
    @fake_news = FakeNews.new
  end

  # GET /fake_news/1/edit
  def edit
  end

  # POST /fake_news
  # POST /fake_news.json
  def create
    @fake_news = FakeNews.new(fake_news_params)

    respond_to do |format|
      if @fake_news.save
        format.html { redirect_to @fake_news, notice: 'Fake news was successfully created.' }
        format.json { render :show, status: :created, location: @fake_news }
      else
        format.html { render :new }
        format.json { render json: @fake_news.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fake_news/1
  # PATCH/PUT /fake_news/1.json
  def update
    respond_to do |format|
      if @fake_news.update(fake_news_params)
        format.html { redirect_to @fake_news, notice: 'Fake news was successfully updated.' }
        format.json { render :show, status: :ok, location: @fake_news }
      else
        format.html { render :edit }
        format.json { render json: @fake_news.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fake_news/1
  # DELETE /fake_news/1.json
  def destroy
    @fake_news.destroy
    respond_to do |format|
      format.html { redirect_to fake_news_index_url, notice: 'Fake news was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fake_news
      @fake_news = FakeNews.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fake_news_params
      params.require(:fake_news).permit(:title, :font_id, :scale_id, :population_id, :image)
    end
end
