Dog.destroy_all
Dog.reset_pk_sequence
DogWalker.destroy_all
DogWalker.reset_pk_sequence
Walk.destroy_all
Walk.reset_pk_sequence

obie = Dog.create(dog_name: "Oberon Party Boy", dog_address:"2020 N Central Park Ave")
hundo = Dog.create(dog_name: "Hundo Stacks", dog_address:"3456 W Armitage Ave")
dino = Dog.create(dog_name: "Dino", dog_address:"3300 W Division St")
demi = Dog.create(dog_name: "Demi", dog_address:"3000 W Logan Blvd")
solomon = Dog.create(dog_name: "Solomon", dog_address:"2000 N Albany Ave")
teeze = Dog.create(dog_name: "Teeze", dog_address:"2000 N Albany Ave")
cinnamon = Dog.create(dog_name: "Cinnamon", dog_address:"8543 N Kimball Ave")

delancey = DogWalker.create(walker_name: "Delance")
vaish = DogWalker.create(walker_name: "Vaish")
jesse = DogWalker.create(walker_name: "Jesse")
justin = DogWalker.create(walker_name: "Justin")
tam = DogWalker.create(walker_name: "Tam")
lonyota = DogWalker.create(walker_name: "Yoda")
jacki = DogWalker.create(walker_name: "Jacki")

walk1 = Walk.create(walk_appt: 20210219430, walker_id: delancey.id, dog_id: obie.id)
walk2 = Walk.create(walk_appt: 20212181215, walker_id: vaish.id, dog_id: hundo.id)
walk3 = Walk.create(walk_appt: 2021219230, walker_id: justin.id, dog_id: demi.id)
walk4 = Walk.create(walk_appt: 2021221115, walker_id: jesse.id, dog_id: dino.id)
walk5 = Walk.create(walk_appt: 2021217200, walker_id: tam.id, dog_id: solomon.id)
walk6 = Walk.create(walk_appt: 2021215300, walker_id: lonyota.id, dog_id: teeze.id)
walk7 = Walk.create(walk_appt: 20212141145, walker_id: jacki.id, dog_id: cinnamon.id)
walk8 = Walk.create(walk_appt: 20212181045, walker_id: delancey.id, dog_id: solomon.id)
walk9 = Walk.create(walk_appt: 2021225130, walker_id: vaish.id, dog_id: demi.id)
walk10 = Walk.create(walk_appt: 20213011230, walker_id: justin.id, dog_id: teeze.id)
walk11 = Walk.create(walk_appt: 20213021145, walker_id: jesse.id, dog_id: dino.id)
walk12 = Walk.create(walk_appt: 2021303130, walker_id: jacki.id, dog_id: hundo.id)
walk13 = Walk.create(walk_appt: 2021321145, walker_id: tam.id, dog_id: obie.id)
walk14 = Walk.create(walk_appt: 2021303130, walker_id: lonyota.id, dog_id: cinnamon.id)

binding.pry

puts "seeds created!"