# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord

    has_many :enrollments,
        primary_key: :id,
        foreign_key: :student_id,
        class_name: :Enrollment

    has_many :enrolled_courses,
        through: :enrollments,
        source: :course
end

# has_many :chirps,
# primary_key: :id,
# foreign_key: :author_id,
# class_name: :Chirp

# has_many :likes,
# primary_key: :id,
# foreign_key: :liker_id,
# class_name: :Like

# has_many :liked_chirps,
# through: :likes,
# source: :chirp