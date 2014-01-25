class CreateEmailMessages < ActiveRecord::Migration
  def change
    create_table :email_messages do |t|
      t.text :message
      t.date :send_date

      t.timestamps
    end
  end
end
