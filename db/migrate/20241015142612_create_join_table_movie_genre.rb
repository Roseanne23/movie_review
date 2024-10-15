class CreateJoinTableMovieGenre < ActiveRecord::Migration[7.0]
  def change
    create_join_table :movies, :genres do |t|
    end
  end
end
