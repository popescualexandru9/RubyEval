class CreateTaggedArticle < ActiveRecord::Migration[7.0]
  def change
    create_table :tagged_articles do |t|
      t.belongs_to :tag
      t.belongs_to :article

      t.timestamps
    end
  end
end
