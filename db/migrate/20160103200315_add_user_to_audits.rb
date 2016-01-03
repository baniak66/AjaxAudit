class AddUserToAudits < ActiveRecord::Migration
  def change
    add_reference :audits, :user, index: true, foreign_key: true
  end
end
