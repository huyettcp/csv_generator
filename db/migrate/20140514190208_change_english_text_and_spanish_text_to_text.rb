class ChangeEnglishTextAndSpanishTextToText < ActiveRecord::Migration
  def up
    change_column :translation_keys, :english_text, :text
    change_column :translation_keys, :spanish_text, :text
  end

  def down
    change_column :translation_keys, :english_text, :string
    change_column :translation_keys, :spanish_text, :string
  end
end


