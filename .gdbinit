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
define pan
	if $argc == 2
		set $i=0
		while($i<$arg1)
			printf "array[%d]",$i
			p *($arg0+$i)
			set $i=$i+1
		end
	else 
		print("err:pa take 2 arg")
	end
end
define pw
	set $i=0
	while($i<10)
		if(treap[$i]!=0)
			printf "treap[%d]->w=%d\n",$i,treap[$i]->w
		end
		set $i=$i+1
	end
end
define pn
	if($argc==1)
		p *$arg0
	end
end 

