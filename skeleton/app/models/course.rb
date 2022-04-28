# == Schema Information
#
# Table name: courses
#
#  id            :bigint           not null, primary key
#  name          :string
#  prereq_id     :integer
#  instructor_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Course < ApplicationRecord

  has_many :enrollments,
    primary_key: :id,
    foreign_key: :course_id,
    class_name: :Enrollment

    has_many :enrolled_students,
        through: :enrollments,
        source: :student

    has_many :prereq,
        primary_key: :prereq_id,
        foreign_key: :id,
        class_name: :Course

    has_many :instructor,
        primary_key: :instructor_id,
        foreign_key: :id,
        class_name: :User
end

# belongs_to :author,
# primary_key: :id,
# foreign_key: :author_id,
# class_name: :User

# has_many :likes,
# primary_key: :id,
# foreign_key: :chirp_id,
# class_name: :Like

# has_many :likers,
# through: :likes,
# source: :liker