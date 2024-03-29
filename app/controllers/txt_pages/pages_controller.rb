module TxtPages
  class PagesController < ApplicationController
    
    def index
      @pages = Page.all
  
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @pages }
      end
    end

    def show
      @page = Page.find_by_permalink(params[:id])
      raise ActionController::RoutingError.new('Not Found') if @page.nil?
    end

    def new
      @page = Page.new
  
      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @page }
      end
    end

    def edit
      @page = Page.find_by_permalink(params[:id])
      raise ActionController::RoutingError.new('Not Found') if @page.nil?
    end

    def create
      @page = Page.new(params[:page])
  
      respond_to do |format|
        if @page.save
          format.html { redirect_to @page, notice: 'Page was successfully created.' }
          format.json { render json: @page, status: :created, location: @page }
        else
          format.html { render action: "new" }
          format.json { render json: @page.errors, status: :unprocessable_entity }
        end
      end
    end

    def update
      @page = Page.find_by_permalink(params[:id])
      raise ActionController::RoutingError.new('Not Found') if @page.nil?
  
      respond_to do |format|
        if @page.update_attributes(params[:page])
          format.html { redirect_to @page, notice: 'Page was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @page.errors, status: :unprocessable_entity }
        end
      end
    end

    def destroy
      @page = Page.find_by_permalink(params[:id])
      raise ActionController::RoutingError.new('Not Found') if @page.nil?
      @page.destroy
  
      respond_to do |format|
        format.html { redirect_to pages_url }
        format.json { head :no_content }
      end
    end
  end
end
