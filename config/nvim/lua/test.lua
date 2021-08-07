local tab={key1="hello", key2={key3=1}}
tab.key4={}
tab.key4=nil
function printTable(x,level) 
	if level==nil then
		level=0
	end
	if level>4 then
		return 
	end
	for key,val in pairs(x) do
		for i=0,level do
			io.write(" ")
		end
		print(key,val)
		if type(val)=="table" then
			printTable(val,level+4)
		end
	end
end

