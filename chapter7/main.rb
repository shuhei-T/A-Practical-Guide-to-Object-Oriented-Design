require './schedulable'
require './schedule'
require './bicycle'

require 'date'
starting = Date.parse("2015/09/04")
ending = Date.parse("2015/09/10")

b = Bicycle.new
b.schedulable?(starting, ending)

v = Vehicle.new
v.schedulable?(starting, ending)

m = Mechanic.new
m.schedulable?(starting, ending)