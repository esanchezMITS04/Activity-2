class MyFriendsController < ApplicationController
  before_action :set_my_friend, only: [:show, :edit, :update, :destroy]

  # GET /my_friends
  # GET /my_friends.json
  def index
    @my_friends = MyFriend.all
  end

  # GET /my_friends/1
  # GET /my_friends/1.json
  def show
  end

  # GET /my_friends/new
  def new
    @my_friend = MyFriend.new
  end

  # GET /my_friends/1/edit
  def edit
  end

  # POST /my_friends
  # POST /my_friends.json
  def create
    @my_friend = MyFriend.new(my_friend_params)

    respond_to do |format|
      if @my_friend.save
        format.html { redirect_to @my_friend, notice: 'My friend was successfully created.' }
        format.json { render :show, status: :created, location: @my_friend }
      else
        format.html { render :new }
        format.json { render json: @my_friend.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_friends/1
  # PATCH/PUT /my_friends/1.json
  def update
    respond_to do |format|
      if @my_friend.update(my_friend_params)
        format.html { redirect_to @my_friend, notice: 'My friend was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_friend }
      else
        format.html { render :edit }
        format.json { render json: @my_friend.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_friends/1
  # DELETE /my_friends/1.json
  def destroy
    @my_friend.destroy
    respond_to do |format|
      format.html { redirect_to my_friends_url, notice: 'My friend was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_friend
      @my_friend = MyFriend.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_friend_params
      params.require(:my_friend).permit(:fullname, :age, :birthdate, :salary, :motto)
    end
end
