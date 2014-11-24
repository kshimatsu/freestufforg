class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :email
      t.string :tel
      t.text :message
      t.boolean :sms_notify
      t.boolean :weekly_newsletter

      t.timestamps null: false
    end
  end
end
