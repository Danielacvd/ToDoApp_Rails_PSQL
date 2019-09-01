class CompletesController < ApplicationController
  before_action :authenticate_user!
  def create
    @tarea = Tarea.find(params[:tarea_id])
    @complete = Complete.create(tarea: @tarea, user: current_user, completo: true)

    if @complete
      redirect_to tareas_path, notice: 'Se completo la tarea'
    else
      redirect_to tareas_path, alert: 'Tarea no completada'
    end
  end

  def destroy
    @tarea = Tarea.find(params[:tarea_id])
    @complete = Complete.find_by(tarea: @tarea, user: current_user, completo: true)

    if Complete.exists?(user_id: current_user.id, tarea_id: @tarea.id , completo: true)
      @complete.destroy
      redirect_to tareas_path, alert: 'La tarea no esta completeda'
    else
      redirect_to tareas, alert: 'Tarea no completa'
    end
  end
end
