class CreateTranslationKeys < ActiveRecord::Migration
  def change
    create_table :translation_keys do |t|
        t.string :account_name
        t.string :translation_key_name
        t.string :english_text
        t.string :spanish_text
      t.timestamps
    end
  end
end
