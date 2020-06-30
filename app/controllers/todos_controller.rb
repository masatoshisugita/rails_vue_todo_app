class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create    
    @todo = Todo.new(todo_params)
  
    respond_to do |format|
      if @todo.save
        format.html { redirect_to @todo, notice: 'todo was successfully created.' }
        format.json { render :show, status: :created, location: @todo }
      else
        format.html { render :new }
        format.json { render json: @todo.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

  def edit
  end

  private

  def todo_params
    params.require(:todo).permit(:title,:priority,:content)
  end
end
