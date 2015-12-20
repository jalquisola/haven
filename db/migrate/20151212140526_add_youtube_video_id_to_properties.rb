class AddYoutubeVideoIdToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :youtube_video_id, :string
  end
end
