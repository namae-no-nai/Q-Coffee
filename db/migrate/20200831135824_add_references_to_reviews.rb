class AddReferencesToReviews < ActiveRecord::Migration[6.0]
  def change
    add_reference :reviews, :users, null: false, foreign_key: true
    add_reference :reviews, :coffees, null: false, foreign_key: true
  end
end
