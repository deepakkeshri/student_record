require 'digest/sha1'
class StudentsController < ApplicationController
  
  #befor_filter :confirm_logged_in :except => [:login_student, :menu_student,:home_student]
    ##only => [:method]
  
  #def confirm_logged_in
   
  #end
    
  def index
    render(:action => 'menu')
  end
  
  def menu
    
  end
  
  def login
    
  end
  
  def home
     @students=Students.order("students.name ASC")
  end
  
  def show
    @student=Students.find(params[:id ])
    
  end
  
  def add
    @student = Students.new
  end
  
  def edit
     @student = Students.find(params[:id])
  end
  
  def delete
    @student = Students.find(params[:id])
    
  end
  
  def create
    @student = Students.new(params[:student])
    if @student.save
      redirect_to(:action => 'home')
    else
      render('add')
    end
  end
  
  def update
    @student = Students.find(params[:id])
    if @student.update_attributes(params[:student])
      redirect_to(:action => 'home' )
    else
      flash[:notice]= "Something Went Wrong"
      render('edit')
    end
  end
  
  def destroy
     student = Students.find(params[:id])
     student.destroy
     redirect_to(:action => 'home')
  end
  
  def logged
      redirect_to(:action => 'home')
  end
  
  #def self.new(passowrd="")
  #  Digest::SHA1.hexdigest(password)
 # end

end
