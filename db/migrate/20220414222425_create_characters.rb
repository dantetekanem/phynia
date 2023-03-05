class CreateCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :class
      t.string :status
      t.integer :max_hp
      t.integer :hp
      t.integer :max_mp
      t.integer :mp
      t.integer :gauge
      t.integer :xp
      t.integer :next_level_xp
      t.integer :level
      t.integer :str
      t.integer :dex
      t.integer :res
      t.integer :mag
      t.integer :equip_load
      t.integer :equip_weapon_id
      t.integer :equip_armor_id
      t.integer :equip_accessory_1_id
      t.integer :equip_accessory_2_id

      t.timestamps
    end
  end
end
