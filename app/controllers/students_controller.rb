class StudentsController < ApplicationController
  def new
    @student= Student.new
  end

  def create
   @student= Student.new(:name => params[:student][:name],
      :age => params[:student][:age],
      :gender => params[:student][:gender],
      :phoneno => params[:student][:phoneno],
      :address => params[:student][:address],
      :subject => params[:student][:subject])
  
  @student.save
    
    
    
  end

  def index
   @student= Student.all

  end
  def index2
   @student= Student.all
  end

  def show
   
   @student= Student.find(params[:id])
  end

  def edit
    @student= Student.find(params[:id])
  end

  def update
    @student= Student.find(params[:student][:id])
    if @student.update(student_params)
      redirect_to students_index_path
    end
  end

  def delete
    @student= Student.find(params[:id])
    if @student.destroy
      redirect_to students_index_path
    end
  end
  private
  def student_params
   params.require(:student).permit!
  end
end
