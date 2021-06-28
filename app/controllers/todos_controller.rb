class TodosController < ApplicationController


    before_action :set_todo, only: [:update, :edit, :show, :destroy]


    def index
        @todos = Todo.all
    end
    
    def new
        @todo = Todo.new
    end

    def show
        
    end
    def create
        todo = Todo.create(todo_params)
        redirect_to todo_path(todo.id)
        
    end

    def update
        @todo.update(todo_params)
        redirect_to todos_path
    end

    def destroy
        @todo.destroy
        redirect_to todos_path
    end

    private

    def todo_params
        params.require(:todo).permit(:title, :description, :date)
    end

    def set_todo
        @todo = Todo.find(params[:id])
    end

end