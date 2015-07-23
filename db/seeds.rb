[Rails.env.to_s].each do |seeds_env|
  Dir.glob(Rails.root.join("db/seeds/#{seeds_env}/*_seed.rb")).sort.each do |f|
    t1 = Time.now
    load f
    t2 = Time.now
    puts "#{t2 - t1} elapsed time for #{File.basename(f)}"
  end
end
