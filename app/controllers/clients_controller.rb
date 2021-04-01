class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :update, :destroy]
  before_action :authenticate_token, except: [:login, :create]
  before_action :authorize_client, except: [:login, :create, :index]

  # GET /clients
  def index
    @clients = Client.all

    render json: @clients
  end
  # Login Method
  def login 
    client = Client.find_by(username: params[:client][:username])

    if client && client.authenticate(params[:client][:password])
      token = create_token(client.id, client.username)
      render json: { status: 200, token: token, client: client }
    else
      render json: { status: 401, message: "Unauthorized" }
    end
  end

  # GET /clients/1
  def show
    render json: get_current_client
  end

  def authorize_client
    puts "AUTHORIZE CLIENT"
    puts "client id: #{get_current_client.id}"
    puts "params: #{params[:id]}"
    render json: { status: 401, message: 'Unauthorized'} unless get_current_client.id == params[:id].to_i
  end

  # POST /clients
  def create
    @client = Client.new(client_params)

    if @client.save
      render json: @client, status: :created, location: @client
    else
      render json: @client.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /clients/1
  def update
    if @client.update(client_params)
      render json: @client
    else
      render json: @client.errors, status: :unprocessable_entity
    end
  end

  # DELETE /clients/1
  def destroy
    @client.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client
      @client = Client.find(params[:id])
    end
    # method that creates the token with the payload
    def create_token(id, username)
      JWT.encode(payload(id, username), ENV['JWT_SECRET'], 'HS256')
    end
    # adding JWT payload info below
    def payload(id, username)
      {
        exp: (Time.now + 30.minutes).to_i,
        iat: Time.now.to_i,
        iss: ENV['JWT_ISSUER'],
        client: {
          id: id,
          username: username
        }
      }
    end
    

    # Only allow a list of trusted parameters through.
    def client_params
      params.require(:client).permit(:username, :password_digest)
    end
end
