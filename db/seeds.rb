# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


posts = Post.create([
  { title: 'a sailor went to sea',
    body: "A sailor went to sea, sea, sea
    To see what he could see, see, see
    But all that he could see, see, see
    Was the bottom of the deep blue sea, sea, sea!",
    user_id: 1 },
  { title: 'bingo',
    body: 'There was a farmer who had a dog,
    And Bingo was his name-O.
    B-I-N-G-O!
    B-I-N-G-O!
    B-I-N-G-O!
    And Bingo was his name-O!',
    user_id: 1 },
  { title: 'head shoulders knees and toes',
    body: 'Head, shoulders, knees and toes,
    Knees and toes.
    Head, shoulders, knees and toes,
    Knees and toes.
    And eyes, and ears, and mouth, and nose.
    Head, shoulders, knees and toes,
    Knees and toes.',
    user_id: 1 },
  { title: 'hey diddle diddle',
    body: 'Hey diddle diddle,
    The cat and the fiddle,
    The cow jumped over the moon.
    The little dog laughed to see such sport,
    And the dish ran away with the spoon.',
    user_id: 1 },
  { title: 'humpty dumpty',
    body: 'Humpty Dumpty sat on a wall,
    Humpty Dumpty had a great fall.
    All the King’s horses and all the King’s men,
    Couldn’t put Humpty together again.',
    user_id: 1 },
  { title: 'incy wincy spider',
    body: 'Incy wincy spider
    climbed up the water spout,
    Down came the rain
    and washed poor Wincy out,
    Out came the sun shine
    and dried up all the rain,
    And Incy Wincy spider
    climbed up the spout again.',
    user_id: 1 },
  ])
