class CreateNotices < ActiveRecord::Migration[7.0]
  def change
    create_table :notices do |t|
      t.string :date
      t.string :event
      t.timestamps
    end
  end
end
