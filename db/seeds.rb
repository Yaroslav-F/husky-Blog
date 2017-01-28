# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

Post.find_or_create_by(
  header: "Up for the challenge!",
  body: "After viewing and reading the Many Personae of the Siberian Husky, if you can honestly say that you can't wait for the Siberian challenge to begin, you are as crazy and stubborn as the rest of us Siberian owners. Despite their many challenges, the more time you spend with a Siberian the more you will understand that there is usually a logical explanation for most of their outlandish behaviors. While the Siberian will not submit quickly to your will and will insist that you prove yourself as a good and reliable leader, once you have earned his or her respect you will be rewarded for years to come. If you are up for the Siberian challenge, Tails of the Tundra Siberian Husky Rescue is waiting to hear how many you want!. The next step in adopting is to fill out the adoption application. You can do that now by going to our online adoption application. Don't forget to check out our main Breed Introduction page, which features many great books to help you learn more about this amazing breed."
)

Post.find_or_create_by(
  header: "Personality",
  body: "Siberian Huskies are hard to resist, with their joyful demeanor, exuberance, friendliness, striking appearance, and incredibly beautiful smile. However, as appealing as these traits may be, Huskies are not the breed for every dog owner. After learning more about the Siberian, many have decided to only admire from afar, while others can't get enough of them. Many Siberian Huskies have become strays, ended up in dog shelters, injured or worse on the road, become the neighborhood nuisance, or abused and mistreated because the owner did not understand the breed. For these reasons, it is important for any potential owner to learn about the typical traits of the Siberian Husky before entering the challenging commitment of living with one. Before embarking on the Siberian adventure, please visit the personalities provided on these pages to learn more about each aspect that the Siberian has to offer. Each page includes pictures with Siberian Huskies caught in the act."
)