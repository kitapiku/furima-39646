class CreateSalseStatuses < ActiveRecord::Migration[7.0]
  def change
    create_table :salse_statuses do |t|
      t.text :salse_status
    end
  end
end
