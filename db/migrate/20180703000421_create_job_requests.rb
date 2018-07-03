class CreateJobRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :job_requests do |t|
      t.string :title
      t.date :day
      t.text :desc
      t.time :time
      t.integer :user_id

      t.timestamps
    end
  end
end
