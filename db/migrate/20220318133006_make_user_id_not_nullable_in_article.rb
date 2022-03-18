class MakeUserIdNotNullableInArticle < ActiveRecord::Migration[7.0]
  def change
    change_column_null(:articles, :user_id, false)
    change_column_null(:tagged_articles, :tag_id, false)
    change_column_null(:tagged_articles, :article_id, false)

    add_foreign_key :articles, :users
    add_foreign_key :tagged_articles, :tags
    add_foreign_key :tagged_articles, :articles
  end
end
