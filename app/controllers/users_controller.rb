class UsersController < ApplicationController
  # GET /users
  # GET /users.json
  def index
    if params[:location_search].present?
      @users = User.near(params[:location_search], 30, :order => :distance)
      # Finds users within 30 miles
      @users.select!{|x| x.known_languages.map(&:name).include?(params[:language_search])}
    #elsif params[:location_search].present? && params[:interest_search].present?

    # Doesn't fully work yet:
    elsif params[:interest_search].present?
      @interest_search = User.search do
        fulltext params[:interest_search]
      end
      @users = @interest_search.results
    else
      @users = User.all

      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @users }
      end
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new
    @known_languages = KnownLanguage.all
    @desired_languages = DesiredLanguage.all

    respond_to do |format|
      format.html # new.html.erb
      format.js
    end
  end

  # GET /users/1/edit
  def edit
    # @user = User.find(params[:id])
    @user = current_user
    @known_languages = KnownLanguage.all
    @desired_languages = DesiredLanguage.all
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.js
      else
        format.html { render action: "new" }
        format.js
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  # def destroy
  #   @user = User.find(params[:id])
  #   @user.destroy

  #   respond_to do |format|
  #     format.html { redirect_to users_url }
  #     format.json { head :no_content }
  #   end
  # end
end
