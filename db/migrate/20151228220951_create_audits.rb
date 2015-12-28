class CreateAudits < ActiveRecord::Migration
  def change
    create_table :audits do |t|
      t.string :name
      t.date :startDate
      t.date :endDate

      t.timestamps null: false
    end
  end
end
