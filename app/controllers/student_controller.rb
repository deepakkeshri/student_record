class StudentController < ApplicationController
  
  def index
    render(:action => 'menu_student')
  end
  def menu_student
    
  end
  def home_student
     @students=Student.order("students.name ASC")
  end
  
  def show_student
    @student=Student.find(params[:id ])
    
  end
  
  def add_student
    @student = Student.new
  end
  
  def edit_student
     @student = Student.find(params[:id])
  end
  
  def delete_student
    @student = Student.find(params[:id])
    
  end
  
  def create
    @student = Student.new(params[:student])
    if @student.save
      redirect_to(:action => 'home_student')
    else
      render('add_student')
    end
  end
  
  def update
    @student = Student.find(params[:id])
    if @student.update_attributes(params[:student])
      redirect_to(:action => 'home_student' )
    else
      
      render('edit_student')
    end
  end
  
  def destroy
     student = Student.find(params[:id])
     student.destroy
     redirect_to(:action => 'home_student')
  end
  #def delete
   # @student = Student.find(params[:student])
  #end
end
