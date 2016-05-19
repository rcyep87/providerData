class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.integer :prov_id
      t.string :name
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :hospital_referral_region
      t.integer :total_discharges
      t.integer :avg_covered_charges
      t.integer :avg_total_payments
      t.integer :avg_cms_payments

      t.timestamps null: false
    end
  end
end
