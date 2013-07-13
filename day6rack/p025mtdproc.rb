=begin  
  You cannot pass methods into other methods (but you can pass procs into methods),  
  and methods cannot return other methods (but they can return procs)  
=end  

def some_mtd some_proc
	puts 'Start of mtd'
	some_proc.call
	puts 'End of mtd'
end

say = lambda do
	puts 'Hello'
end

some_mtd say

# another example of passing arguments using lambda
a_Block = lambda {|x| "Hello #{x}!"}
puts a_Block.call 'World'