class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email

      t.timestamps
    end

    create_table :articles do |t|
      t.string :title
      t.text :body
      t.belongs_to :user

      t.timestamps
    end

    create_table :tags do |t|
      t.string :name

      t.timestamps
    end
  end
end
