class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.string :location
      t.date :expiry_date
      t.string :lister_email
      t.string :lister_tel
      t.boolean :sms_notify

      t.timestamps null: false
    end
  end
end
