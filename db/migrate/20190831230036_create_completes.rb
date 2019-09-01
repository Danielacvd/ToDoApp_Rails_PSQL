class CreateCompletes < ActiveRecord::Migration[5.1]
  def change
    create_table :completes do |t|
      t.references :user, foreign_key: true
      t.references :tarea, foreign_key: true
      t.boolean :completo

      t.timestamps
    end
  end
end
