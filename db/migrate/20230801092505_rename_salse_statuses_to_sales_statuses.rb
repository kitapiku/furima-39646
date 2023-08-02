class RenameSalseStatusesToSalesStatuses < ActiveRecord::Migration[7.0]
  def change
    rename_table :salse_statuses, :sales_statuses
  end
end
