class CreateShippingFeeStatuses < ActiveRecord::Migration[7.0]
  def change
    create_table :shipping_fee_statuses do |t|
      t.string :shipping_fee_status
    end
  end
end
