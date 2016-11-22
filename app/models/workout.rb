class Workout < ApplicationRecord
    def next
        exercise.order("id ASC").where("id > ?", id).first ||  exercise.first
    end

    def previous
      exercise.order("id DESC").where("id < ?", id).last || exercise.last
    end
end
