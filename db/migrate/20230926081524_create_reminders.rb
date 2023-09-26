class CreateReminders < ActiveRecord::Migration[7.0]
  def change
    create_table :reminders do |t|
      t.date :date
      t.text :subject
      t.text :description
      t.text :email
      t.string :contact
      t.string :sms_no
      t.text :rec_next

      t.timestamps
    end
  end
end
