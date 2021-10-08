Client.destroy_all
Trainer.destroy_all
Session.destroy_all

Client.reset_pk_sequence
Trainer.reset_pk_sequence
Session.reset_pk_sequence


Client.create([
    {name: "Denis", age: 23},
    {name: "Michael", age: 30},
    {name: "Barak", age: 27},
    {name: "Bin", age: 25},
    {name: "Eric", age: 31},
    {name: "David", age: 32},
    {name: "Isaac", age: 25},
    {name: "Itche", age: 26},
    {name: "Jenna", age: 25},
    {name: "Katie", age: 24},
    {name: "Kent", age: 23},
    {name: "Leo", age: 22},
    {name: "Mark", age: 30},
    {name: "Michelle", age: 28},
    {name: "Nicholas", age: 29},
    {name: "Ryan", age: 25},
    {name: "Sean", age: 30},
    {name: "Yosef", age: 28}
])

Trainer.create([
    {name: "Arnold Schwarzenegger" ,image: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F20%2F2019%2F08%2Fgettyimages-83149193-2000.jpg",rating: 8.5},
    {name: "Jason Statham",image: "https://etcanada.com/wp-content/uploads/2017/06/19050697_308744662911248_7466767650157232128_n.jpg?quality=80&strip=all&w=605",rating: 7},
    {name: "Sylvester Stallone",image: "https://i.insider.com/565dc87b84307663008b6652?width=1001&format=jpeg" ,rating: 9},
    {name: "Terry Crews",image: "https://manofmany.com/wp-content/uploads/2021/04/terry-crews-workout-diet-plan-2-1200x800.jpg",rating: 9},
    {name: "Jet Li",image: "https://i.pinimg.com/originals/86/c3/1e/86c31e0574e51ac03556f34269e05d3e.jpg" ,rating: 7.5},
    {name: "The Rock",image: "https://cdn.substack.com/image/fetch/f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fbucketeer-e05bbc84-baa3-437e-9518-adb32be77984.s3.amazonaws.com%2Fpublic%2Fimages%2F3bdb2575-9a92-42f8-8472-bb78c7bd118a_720x405.jpeg",rating: 9},
    {name: "Wesley Snipes",image: "https://www.nme.com/wp-content/uploads/2021/02/Wesley-Snipes-in-Blade-696x442.jpg",rating: 7},
    {name: "Chuck Norris",image: "https://pbs.twimg.com/profile_images/2519797916/xarxmdq5tmxh51ncropr_400x400.jpeg",rating: 10},
    {name: "Chris Hemsworth",image: "https://www.bosshunting.com.au/wp-content/uploads/2020/11/Chris-Hemsworth-Workout-Diet-Plan-1200x640.jpg",rating: 8},
    {name: "Jason Momoa",image: "https://img.cinemablend.com/filter:scale/quill/2/f/4/e/8/a/2f4e8a8372657667a3818959e777a4817657b1e3.jpg?fw=1200",rating: 8},
    {name: "Ronda Rousey",image: "https://i.redd.it/x8qgwktq4s841.jpg",rating: 9},
    {name: "Gal Gadot",image: "https://parade.com/wp-content/uploads/2020/05/Cover-Wonder-Woman-FTR.jpg",rating: 10},
    {name: "The Hulk",image: "https://qph.fs.quoracdn.net/main-qimg-b475b90cf9796e6ad885ea68c3fc1560",rating: 10}
])

Session.create([
    {workout_description: "weight training", date: "05-30-2021", time: "19:00", price: 100, client_id: Client.first.id, trainer_id: Trainer.first.id},
    {workout_description: "cardio", date: "05-30-2021",  time: "19:00", price: 75, client_id: Client.second.id, trainer_id: Trainer.second.id},
    {workout_description: "strength training", date: "05-30-2021", time: "8:00", price: 150, client_id: Client.third.id, trainer_id: Trainer.fifth.id},
    {workout_description: "calisthenic training", date: "05-30-2021", time: "8:00", price: 150, client_id: Client.fourth.id, trainer_id: Trainer.last.id},
    {workout_description: "calisthenic training", date: "05-30-2021", time: "8:00", price: 75, client_id: Client.fifth.id, trainer_id: Trainer.last.id},
    {workout_description: "strength training", date: "05-30-2021", time: "8:00", price: 150, client_id: Client.find(6).id, trainer_id: Trainer.third.id},
    {workout_description: "weight training", date: "05-30-2021", time: "8:00", price: 100, client_id: Client.find(7).id, trainer_id: Trainer.fourth.id},
    {workout_description: "cardio", date: "05-30-2021", time: "8:00", price: 75, client_id: Client.find(8).id, trainer_id: Trainer.fourth.id},
    {workout_description: "weight training", date: "05-30-2021", time: "8:00", price: 100, client_id: Client.find(9).id, trainer_id: Trainer.fifth.id},
    {workout_description: "weight training", date: "05-30-2021", time: "8:00", price: 100, client_id: Client.find(10).id, trainer_id: Trainer.second.id},
    {workout_description: "strength training", date: "05-30-2021", time: "8:00", price: 150, client_id: Client.find(11).id, trainer_id: Trainer.find(6).id},
    {workout_description: "calisthenic training", date: "05-30-2021", time: "8:00", price: 150, client_id: Client.find(12).id, trainer_id: Trainer.find(7).id},
    {workout_description: "calisthenic training", date: "05-30-2021", time: "8:00", price: 75, client_id: Client.find(13).id, trainer_id: Trainer.find(8).id},
    {workout_description: "weight training", date: "05-30-2021", time: "8:00", price: 100, client_id: Client.find(14).id, trainer_id: Trainer.find(9).id},
    {workout_description: "weight training", date: "05-30-2021", time: "8:00", price: 100, client_id: Client.find(15).id, trainer_id: Trainer.find(10).id},
    {workout_description: "strength training", date: "05-30-2021", time: "8:00", price: 150, client_id: Client.find(16).id, trainer_id: Trainer.find(11).id},
    {workout_description: "calisthenic training", date: "05-30-2021", time: "8:00", price: 100, client_id: Client.find(17).id, trainer_id: Trainer.find(12).id},
    {workout_description: "cardio", date: "05-30-2021", time: "8:00", price: 75, client_id: Client.find(18).id, trainer_id: Trainer.find(11).id},
])

# shotgun --port=9292
# just take out the equals
# leave the space between
#aka " shotgun --port 9292 "

puts "Created clients "
puts "hello world"