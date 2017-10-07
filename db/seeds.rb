3.times do | topic |
    Topic.create!(
        title: "Topic #{topic}"
        )
end

puts "3 topics created"

10.times do |blog| 
    Blog.create!(
        title: "Ruby on Rails Installation #{blog}",
        body: "The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested",
        topic_id: Topic.last.id
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

8.times do |portofolio|
    Portofolio.create!(
        title: "Ruby on Rails",
        subtitle: "sudo service postgresql start",
        body: "The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested",
        main_image: "http://via.placeholder.com/600x400",
        thumb_image: "http://via.placeholder.com/350x200"
        )
end


1.times do |portofolio|
    Portofolio.create!(
        title: "Ruby on Rails",
        subtitle: "Angular",
        body: "The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested",
        main_image: "http://via.placeholder.com/600x400",
        thumb_image: "http://via.placeholder.com/350x200"
        )
end
puts "9 portofolios"

