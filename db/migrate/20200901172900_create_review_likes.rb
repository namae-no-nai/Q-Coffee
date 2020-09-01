class CreateReviewLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :review_likes do |t|
      t.references :review, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
