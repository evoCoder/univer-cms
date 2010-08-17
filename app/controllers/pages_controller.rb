class PagesController < ApplicationController

uses_yui_editor       

  def index
    if logged_in?
      @pages = Page.all
    else
      redirect_to root_url
    end
  end
  
  def show
      @page = Page.find(params[:id])
  end
  
  def new
    if logged_in?
      @page = Page.new
    else  
      redirect_to pages_url
      flash[:notice] = "Access denied."
    end
  end
  
  def create
    @page = Page.new(params[:page])
    if @page.save
      flash[:notice] = "Successfully created page."
      redirect_to @page
    else
      render :action => 'new'
    end
  end
  
  def edit
    if logged_in? 
      @page = Page.find(params[:id])
    else  
      redirect_to pages_url
      flash[:notice] = "Access denied."
    end
  end
  
  def update
    @page = Page.find(params[:id])
    if @page.update_attributes(params[:page])
      flash[:notice] = "Successfully updated page."
      redirect_to @page
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @page = Page.find(params[:id])
    @page.destroy
    flash[:notice] = "Successfully destroyed page."
    redirect_to pages_url
  end
end
