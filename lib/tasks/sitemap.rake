namespace :sitemap do
  desc 'Upload the sitemap files to S3'
  task upload_to_s3: :environment do
    puts "Starting sitemap upload to S3..."

    Aws.config.update({
      region: 'us-east-1',
      credentials: Aws::Credentials.new(ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']) 
    })
    s3 = Aws::S3::Resource.new
    bucket = s3.bucket(ENV['AWS_S3_BUCKET'])

    puts "bucket: #{bucket.inspect}"
    Dir.entries(File.join(Rails.root, "tmp", "sitemaps")).each do |file_name|
      next if ['.', '..', '.DS_Store'].include? file_name
      path = "sitemaps/#{file_name}"
      file = File.join(Rails.root, "tmp", "sitemaps", file_name)

      begin
        obj = bucket.object(path)
        obj.upload_file(file, acl: 'public-read')
      rescue Exception => e
        raise e
      end
      puts "Saved #{file_name} to S3"
    end
  end
end
