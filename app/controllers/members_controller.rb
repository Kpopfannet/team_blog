class MembersController < ApplicationController
    include ApplicationHelper
    before_action :set_member, only: [:show, :edit, :update, :destroy]
  
    # 라우팅 주석 절대 지우지 말 것
    def login
        set_session(Member.find_by_name(params[:name]))
        
        respond_to do |format|
            format.html { redirect_to members_path, notice: '로그인 성공!' }
            format.json { head :no_content }
        end
    end
  
    def logout
        destroy_session

        respond_to do |format|
            format.html { redirect_to members_path, notice: '잘가라 빠잉' }
            format.json { head :no_content }
        end
    end
  
    # GET /members
    def index
        @members = Member.all
    end

    # GET /members/1
    def show
    end
    
    # GET /members/new
    def new
        @member = Member.new
    end
    
    # GET /members/1/edit
    def edit
    end

    # POST /members
    def create
        @member = Member.new(member_params)
        
        respond_to do |format|
            if @member.save
                format.html { redirect_to @member, notice: 'Member was successfully created.' }
            else
                format.html { render :new }
            end
        end
    end

    # PATCH/PUT /members/1
    def update
        respond_to do |format|
            if @member.update(member_params)
                format.html { redirect_to @member, notice: 'Member was successfully updated.' }
                format.json { render :show, status: :ok, location: @member }
            else
                format.html { render :edit }
                format.json { render json: @member.errors, status: :unprocessable_entity }
            end
        end
    end

    # DELETE /members/1
    def destroy
        @member.destroy
        respond_to do |format|
            format.html { redirect_to members_url, notice: 'Member was successfully destroyed.' }
            format.json { head :no_content }
        end
    end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member
        @member = Member.find(params[:id])
    end

    def set_session(member)
        session[:user] = member unless user_signed_in?
    end
  
    def destroy_session
        session[:user] = nil
    end
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def member_params(sign_mode = false)
        if sign_mode
            params.require(:member).permit(:name)
        else
            params.require(:member).permit(:name, :subname, :img, :desc, :favorite, :hate, :wannabe, :birthday)
        end
    end
end
