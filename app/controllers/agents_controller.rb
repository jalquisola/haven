class AgentsController < ApplicationController
  before_action :authorize_admin
  before_action :set_agent, only: [:show, :edit, :update, :destroy]
  layout 'zoner/scaffold'

  # GET /agents
  def index
    @agents = Agent.all
  end

  # GET /agents/1
  def show
  end

  # GET /agents/new
  def new
    @agent = Agent.new
  end

  # GET /agents/1/edit
  def edit
  end

  # POST /agents
  def create
    @agent = Agent.new(agent_params)

    if @agent.save
      redirect_to @agent, notice: 'Agent was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /agents/1
  def update
    respond_to do |format|
      if @agent.update(agent_params)
        format.html { redirect_to @agent, notice: 'Agent was successfully updated.' }
        format.json { respond_with_bip(@agent) }
      else
        format.html { render :edit }
        format.json { respond_with_bip(@agent) }
      end
    end
  end

  # DELETE /agents/1
  def destroy
    @agent.destroy
    redirect_to agents_url, notice: 'Agent was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agent
      @agent = Agent.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def agent_params
      params[:agent].permit(:name, :contact_no, :facebook_url, :avatar_url, :email, :linked_in_url, :skype, :whatsapp, :viber, :contact_no, :nrds, :google_plus_url)
    end
end
