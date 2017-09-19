# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
3.times do |topic|
    Topic.create!(
        title: "Topic #{topic}"
    )    
end
puts "3 topics created."

10.times do |blog|
    Blog.create!(
        title: "My Blog Post #{blog}",
	    body: "Hello, it's me. Hello, it's me. Hello, it's me. Hello, it's me. Hello, it's me. Hello, it's me. Hello, it's me. Hello, it's me. Hello, it's me. Hello, it's me. Hello, it's me. Hello, it's me. Hello, it's me. Hello, it's me. Hello, it's me. Hello, it's me. Hello, it's me. Hello, it's me. Hello, it's me. Hello, it's me.", topic_id: Topic.last.id
    )
end
puts "10 blog posts created."

5.times do |skill|
    Skill.create!(
        title: "Rails #{skill}",
	    percent_utilized: 15
    )
end
puts "5 skills created."

1.times do |portfolio_item|
    Portfolio.create!(
        title: "Portfolio title: #{portfolio_item + 1}",
    	subtitle: "Ruby on Rails",
    	body: "Put some text here later. Don't forget to put some text here later.",
    	main_image: "https://placehold.it/600x400",
    	thumb_image: "https://placehold.it/350x200"
    )
end
puts "1 portfolio item created."

8.times do |portfolio_item|
    Portfolio.create!(
        title: "Portfolio title: #{portfolio_item + 2}",
    	subtitle: "HTML/CSS",
    	body: "Put some text here later. Don't forget to put some text here later.",
    	main_image: "https://placehold.it/600x400",
    	thumb_image: "https://placehold.it/350x200"
    )
end
puts "8 portfolio items created."

3.times do |technology|
    Portfolio.last.technologies.create!(
        name: "Technology #{technology}"
    )
end
puts "3 Technologies created."