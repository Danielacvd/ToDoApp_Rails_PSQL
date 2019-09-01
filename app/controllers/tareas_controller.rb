class TareasController < ApplicationController
  def index
    @tareas = Tarea.all
  end

  def show
    @tarea = Tarea.find(params[:id])
    @top = Complete.all.where(tarea_id: @tarea).order(:created_at).limit(5).pluck('user_id')
    @all = Complete.all.where(tarea_id: @tarea).pluck('user_id')
  end
end
