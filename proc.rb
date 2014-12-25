ifTrue = Proc.new {puts "True" }
ifFalse = Proc.new {puts "False" }


def _if (bool, ifTrue, ifFalse)
	if bool == true then
		ifTrue.call
	elsif bool == false then
		ifFalse.call
	end
end


_if(false, ifTrue, ifFalse)

