class InitialMigration < ActiveRecord::Migration[5.2]
  def change
    create_table :admins do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.bigint :phone
      t.string :image_url
      t.string :title
      t.timestamps
    end

    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.bigint :phone
      t.string :email
      t.string :password_digest
      t.string :image_url
      t.integer :integer
      t.timestamps
    end

    create_table :cohorts do |t|
      t.date :start_date
      t.date :end_date
      t.string :name
      t.integer :course_type
      t.integer :course_type, :integer  
      t.timestamps
    end

    create_table :assignments do |t|
      t.integer :cohort_id
      t.string :name
      t.text :body
      t.date :due_date
      t.timestamps
    end

  create_table :submissions do |t|
    t.integer :assignment_id
    t.integer :student_id
    t.string :url
    t.string :body
    t.boolean :is_approved
    t.timestamps
  end

    create_table :student_notes do |t|
      t.integer :admin_id
      t.integer :student_id
      t.string :body
      t.timestamps
    end

    create_table :submission_comments do |t|
      t.integer :admin_id
      t.integer :submission_id
      t.string :body
      t.timestamps
    end

    create_table :events do |t|
      t.string :name
      t.integer :company_id
      t.integer :contact_id
      t.integer :cohort_id
      t.date :date
      t.time :time
      t.string :name
      t.string :body
      t.timestamps
    end

    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.bigint :phone
      t.string :email
      t.string :title
      t.timestamps
    end

    create_table :contact_notes do |t|
      t.integer :admin_id
      t.integer :contact_id
      t.string :body
      t.timestamps
    end

    create_table :company_notes do |t|
      t.integer :admin_id
      t.string :body
      t.timestamps
    end

    create_table :companies do |t|
      t.string :name
      t.string :address
      t.string :website
      t.bigint :phone
      t.timestamps
    end

  end
end
