# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_08_02_010052) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "feedbacks", force: :cascade do |t|
    t.string "text"
    t.string "recipient_handle"
    t.string "tweet_url"
    t.string "tweet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

# Active Record is a ORM(Object Relationship Mapper)

# Feedback.find_by(text: "put text here") will return the first one they find 
# vs Feedback.where(text: "put text here") will return multiple ones
# Feedback.all() lets you see all the things
# Feedback.find(1) 1 is the index id of the database
# Feedback.create(text: "i hate you", recipient_handle: "elonmusk")
# Feedback.count()
# Feedback.create!() vs Feedback.create() - ! rasises a exception on failure
# Feedback.last - gives you the last created feedback
# Feedback.update(text: "new text here")
