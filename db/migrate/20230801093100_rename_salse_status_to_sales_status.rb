class RenameSalseStatusToSalesStatus < ActiveRecord::Migration[7.0]
  def change
    rename_column :sales_statuses, :salse_status, :sales_status
  end
end
