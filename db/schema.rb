# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120619170257) do

  create_table "advertisements", :force => true do |t|
    t.date     "ad_date"
    t.integer  "ad_author"
    t.string   "ad_text"
    t.integer  "group_id"
    t.integer  "ad_recipient"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "book_of_classes", :force => true do |t|
    t.integer  "user_id"
    t.integer  "discipline_id"
    t.integer  "group_id"
    t.date     "boc_date"
    t.string   "boc_type"
    t.integer  "boc_quantityhours"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "book_of_visits", :force => true do |t|
    t.integer  "student_id"
    t.boolean  "bov_presence"
    t.date     "bov_date"
    t.integer  "discipline_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "bov_type"
  end

  create_table "cell_skeds", :force => true do |t|
    t.integer  "number_couple"
    t.time     "start_time"
    t.time     "end_time"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "commentaries", :force => true do |t|
    t.integer  "user_id"
    t.string   "com_text"
    t.string   "com_file_file_name"
    t.string   "com_file_content_type"
    t.integer  "com_file_file_size"
    t.datetime "com_file_updated_at"
    t.string   "cfile_type"
    t.integer  "cfile_object"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "competences", :force => true do |t|
    t.string   "comp_name"
    t.string   "comp_group"
    t.string   "comp_subgroup"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "couples", :force => true do |t|
    t.integer  "couple_week"
    t.integer  "couple_dayweek"
    t.integer  "cell_sked_id"
    t.integer  "group_id"
    t.integer  "discipline_id"
    t.string   "couple_cabinet"
    t.string   "couple_teacher"
    t.string   "couple_comment"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "couple_type"
  end

  create_table "disciplines", :force => true do |t|
    t.integer  "speciality_id"
    t.string   "disc_name"
    t.string   "disc_cycle"
    t.string   "disc_partofcycle"
    t.integer  "disc_semester"
    t.integer  "disc_course"
    t.string   "disc_formoftraining"
    t.string   "disc_objective"
    t.string   "disc_tasks"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "events", :force => true do |t|
    t.integer  "ev_author"
    t.string   "ev_text"
    t.date     "ev_date"
    t.integer  "cell_sked_id"
    t.integer  "group_id"
    t.integer  "ev_recipient"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "formation_of_competences", :force => true do |t|
    t.integer  "discipline_id"
    t.integer  "competence_id"
    t.boolean  "foc_type"
    t.string   "foc_knowledge"
    t.string   "foc_ability"
    t.string   "foc_skills"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "groups", :force => true do |t|
    t.integer  "speciality_id"
    t.integer  "gr_course"
    t.string   "gr_cipher"
    t.integer  "gr_quantity"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "interim_attestations", :force => true do |t|
    t.integer  "ia_semester"
    t.integer  "discipline_id"
    t.string   "ia_formoftraining"
    t.string   "ia_checkpoint"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "materials", :force => true do |t|
    t.string   "mfile_file_name"
    t.string   "mfile_content_type"
    t.integer  "mfile_file_size"
    t.datetime "mfile_updated_at"
    t.string   "file_name"
    t.string   "file_type"
    t.string   "file_number"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "messages", :force => true do |t|
    t.integer  "user_id"
    t.integer  "group_id"
    t.integer  "mes_recipient"
    t.string   "mes_theme"
    t.string   "mes_text"
    t.string   "mes_file_file_name"
    t.string   "mes_file_content_type"
    t.integer  "mes_file_file_size"
    t.datetime "mes_file_updated_at"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "module_of_disciplines", :force => true do |t|
    t.integer  "mod_number"
    t.integer  "discipline_id"
    t.string   "mod_name"
    t.integer  "mod_numberofhours"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "reschedulings", :force => true do |t|
    t.date     "res_date"
    t.integer  "res_week"
    t.integer  "res_dayofweek"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "specialities", :force => true do |t|
    t.string   "spec_name"
    t.string   "spec_redaction"
    t.string   "spec_description"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "spec_description2"
    t.string   "spec_exams"
    t.string   "spec_shifr"
  end

  create_table "students", :force => true do |t|
    t.string   "stud_surname"
    t.string   "stud_name"
    t.string   "stud_secondname"
    t.integer  "group_id"
    t.boolean  "stud_captain"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "teachers", :force => true do |t|
    t.string   "teach_name"
    t.string   "teach_surname"
    t.string   "teach_secondname"
    t.string   "teach_rank"
    t.string   "teach_description"
    t.string   "teach_img_file_name"
    t.string   "teach_img_content_type"
    t.integer  "teach_img_file_size"
    t.datetime "teach_img_updated_at"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "themes", :force => true do |t|
    t.integer  "module_of_discipline_id"
    t.integer  "discipline_id"
    t.string   "theme_name"
    t.integer  "theme_inmodule"
    t.integer  "theme_indiscipline"
    t.string   "theme_type"
    t.integer  "theme_numberofhour"
    t.string   "theme_technologytraining"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "user_name"
    t.string   "user_surname"
    t.string   "user_secondname"
    t.string   "user_email"
    t.string   "user_icq"
    t.string   "encrypted_password"
    t.string   "salt"
    t.integer  "group_id"
    t.string   "user_status"
    t.date     "user_birthday"
    t.string   "user_phone"
    t.string   "user_avatar_file_name"
    t.string   "user_avatar_content_type"
    t.integer  "user_avatar_file_size"
    t.datetime "user_avatar_updated_at"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  add_index "users", ["user_email"], :name => "index_users_on_user_email", :unique => true

end
