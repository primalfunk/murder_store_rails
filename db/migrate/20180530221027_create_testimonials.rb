class CreateTestimonials < ActiveRecord::Migration[5.2]
  def change
    create_table :testimonials do |t|
      t.string :author
      t.text :desc
      t.belongs_to :item, foreign_key: true

      t.timestamps
    end
  end
end
