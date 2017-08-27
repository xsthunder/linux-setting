define pv
	if $argc == 1
		p *($arg0._M_impl._M_start)@$arg0.size()
	else 
		print("err:pv take 1 arg")
	end 
end
define pa
	if $argc == 2
		p *($arg0)@$arg1
	else 
		print("err:pa take 2 arg")
	end
end
