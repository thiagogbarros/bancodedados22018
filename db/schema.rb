# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_12_03_175752) do

  create_table "communications", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fake_news", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.bigint "font_id"
    t.bigint "scale_id"
    t.bigint "population_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "content"
    t.index ["font_id"], name: "index_fake_news_on_font_id"
    t.index ["population_id"], name: "index_fake_news_on_population_id"
    t.index ["scale_id"], name: "index_fake_news_on_scale_id"
  end

  create_table "fonts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "news_communications", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "fake_news_id"
    t.bigint "communication_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["communication_id"], name: "index_news_communications_on_communication_id"
    t.index ["fake_news_id"], name: "index_news_communications_on_fake_news_id"
  end

  create_table "news_people", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "fake_news_id"
    t.bigint "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fake_news_id"], name: "index_news_people_on_fake_news_id"
    t.index ["person_id"], name: "index_news_people_on_person_id"
  end

  create_table "news_states", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "fake_news_id"
    t.bigint "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fake_news_id"], name: "index_news_states_on_fake_news_id"
    t.index ["state_id"], name: "index_news_states_on_state_id"
  end

  create_table "offices", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "description"
    t.bigint "power_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["power_id"], name: "index_offices_on_power_id"
  end

  create_table "parties", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.bigint "office_id"
    t.bigint "party_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["office_id"], name: "index_people_on_office_id"
    t.index ["party_id"], name: "index_people_on_party_id"
  end

  create_table "populations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "powers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scales", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "fake_news", "fonts"
  add_foreign_key "fake_news", "populations"
  add_foreign_key "fake_news", "scales"
  add_foreign_key "news_communications", "communications"
  add_foreign_key "news_communications", "fake_news"
  add_foreign_key "news_people", "fake_news"
  add_foreign_key "news_people", "people"
  add_foreign_key "news_states", "fake_news"
  add_foreign_key "news_states", "states"
  add_foreign_key "offices", "powers"
  add_foreign_key "people", "offices"
  add_foreign_key "people", "parties"
end
