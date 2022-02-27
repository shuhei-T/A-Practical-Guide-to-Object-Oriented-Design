require './bicycle'
require './parts_factory'
require './parts'
# require './part'
# require './roadbike_parts'
# require './mountainbike_parts'

# road_bike = Bicycle.new(size: 'L', parts: RoadBikeParts.new(tape_color: 'red'))
# mountain_bike = Bicycle.new(size: 'L', parts: MountainBikeParts.new(rear_shock: 'Fox'))

# puts road_bike.size
# # L
# puts road_bike.spares 
# # {:tire_size=>"23", :chain=>"10-speed", :tape_color=>"red"}
# puts mountain_bike.size
# # L
# puts mountain_bike.spares
# {:tire_size=>"2.1", :chain=>"10-speed", :rear_shock=>"Fox"}

# chain = Part.new(name: 'chain', description: '10-speed')
# road_tire = Part.new(name: 'tire_size', description: '23')
# tape = Part.new(name: 'tape_color', description: 'red')
# mountain_tire = Part.new(name: 'tire_size', description: '2.1')
# rear_shock = Part.new(name: 'rear_shock', description: 'Fox')
# front_shock = Part.new(name: 'front_shock', description: 'Manitou', needs_spare: false)

# road_bike_parts = Parts.new([chain, road_tire, tape])

# road_bike = Bicycle.new(size: 'L', parts: Parts.new([chain, road_tire, tape]))
# puts road_bike.size

# p road_bike.spares

# mountain_bike = Bicycle.new(size: 'L', parts: Parts.new([chain, mountain_tire, front_shock, rear_shock]))
# p mountain_bike.size
# puts  "スペア：#{mountain_bike.spares}"
# p "パーツ：#{mountain_bike.parts}"

# road_parts = PartsFactory.build(road_config)

# mountain_parts = PartsFactory.build(mountain_config)

road_config =
[['chain', '10-speed'],
 ['tire_size', '23'],
 ['tape_color', 'red']]

mountain_config =
[['chain', '10-speed'],
 ['tire_size', '2.1'],
 ['front_shock', 'Manitou', false],
 ['rear_shock', 'Fox']]

recumbent_config =
[['chain', '9-speed'],
 ['tire_size', '28'],
 ['flag', 'tall and orange']]

road_bike = Bicycle.new(size: 'L', parts: PartsFactory.build(road_config))


puts road_bike.spares
#<OpenStruct name="chain", description="10-speed", needs_spare=true>
#<OpenStruct name="tire_size", description="23", needs_spare=true>
#<OpenStruct name="tape_color", description="red", needs_spare=true>

mountain_bike = Bicycle.new(size: 'L', parts: PartsFactory.build(mountain_config))

puts mountain_bike.spares
#<OpenStruct name="chain", description="10-speed", needs_spare=true>
#<OpenStruct name="tire_size", description="2.1", needs_spare=true>
#<OpenStruct name="rear_shock", description="Fox", needs_spare=true>

recumbent_bike = Bicycle.new(size: 'L', parts: PartsFactory.build(recumbent_config))

puts recumbent_bike.spares
#<OpenStruct name="chain", description="9-speed", needs_spare=true>
#<OpenStruct name="tire_size", description="28", needs_spare=true>
#<OpenStruct name="flag", description="tall and orange", needs_spare=true>