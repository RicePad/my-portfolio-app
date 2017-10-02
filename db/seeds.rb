
10.times do |blog| 
    Blog.create!(
        title: "Ruby on Rails Installation #{blog}",
        body: "The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested"
        )
end

puts "10 blogs created"

5.times do |skill| 
    Skill.create!(
        title: "Ruby on Rails",
        percent_utilized: 70
        )
end

puts "5 skills"

9.times do |portofolio|
    Portofolio.create!(
        title: "Ruby on Rails",
        subtitle: "sudo service postgresql start",
        body: "The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested",
        main_image: "http://via.placeholder.com/600x400",
        thumb_image: "http://via.placeholder.com/350x200"
        )
end

puts "9 portofolios"