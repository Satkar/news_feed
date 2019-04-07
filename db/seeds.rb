# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = [{name: 'sansat1387'}, {name: 'satkar'}, {name: 'abhi'}, {name: 'john'}]
puts "== Creating Users =="
users = User.create(users)


posts = [{content: 'A sole survivor tells of the twisty events leading up to a horrific gun battle on a boat, which began when five criminals met at a seemingly random police lineup.'},
      {content: 'After being kidnapped and imprisoned for fifteen years, Oh Dae-Su is released, only to find that he must find his captor in five days.'},
      {content: "An industrial worker who hasn't slept in a year begins to doubt his own sanity."},
      {content: 'A troubled teenager is plagued by visions of a man in a large rabbit suit who manipulates him to commit a series of crimes, after he narrowly escapes a bizarre accident.'},
      {content: 'A private detective hired to expose an adulterer finds himself caught up in a web of deceit, corruption, and murder.'},
      {content: 'A lovelorn screenwriter becomes desperate as he tries and fails to adapt The Orchid Thief by Susan Orlean for the screen.'},
      {content: 'An insomniac office worker and a devil-may-care soapmaker form an underground fight club that evolves into something much, much more.' },
      {content: 'A man with a fateful secret embarks on an extraordinary journey of redemption by forever changing the lives of seven strangers.'},
      {content: 'After the rebels are brutally overpowered by the Empire on the ice planet Hoth, Luke Skywalker begins Jedi training with Yoda, while his friends are pursued by Darth Vader.'},
    ]

comments = [{content: "A series of thirteen webisodes known as Vikings: Athelstan's Journal was released by the History Channel. Each webisode serves as a journal entry for the Vikings character Athelstan"},
              {content: 'Star Wars: Episode V - The Empire Strikes Back'}, ]

puts "== Creating Posts for users and comments for post =="

users.each do |user|
	posts.each do |post|
		pst = user.posts.create(post)
		comments.each do |comment|
		 pst.comments.create(comment.merge({user_id: users[rand(2)].id}))
		end
	end
end

