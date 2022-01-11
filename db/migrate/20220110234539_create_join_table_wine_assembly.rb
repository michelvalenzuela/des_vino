class CreateJoinTableWineAssembly < ActiveRecord::Migration[6.1]
  def change
    create_join_table :wines, :assemblies do |t|
       t.index [:wine_id, :assembly_id]
       t.index [:assembly_id, :wine_id]
    end
  end
end
