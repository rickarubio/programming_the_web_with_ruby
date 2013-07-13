# Blocks are not objects
# they can be converted into objects of class Proc by calling lambda method
prc = lambda {puts 'Hello'}
# method call invokes the Blocks
prc.call

# another example
toast = lambda do
	'Cheers'
end
puts toast.call