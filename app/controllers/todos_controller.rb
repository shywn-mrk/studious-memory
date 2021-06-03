class TodosController < ApplicationController
    def create
        render json: Todo.create(todo_params)
    end

    def index
        render json: Todo.all
    end

    def show
        render json: Todo.find(params[:id])
    end

    def update
        todo = Todo.find(params[:id])
        todo.update(todo_params)
        render json: todo
    end

    def destroy
        todo = Todo.destroy(params[:id])
    end

    private 
        def todo_params
            params.require(:todo).permit(:text, :completed)
        end
end
