require "json"

f = File.open("liste.txt")
all = []
for line in f do 
    values =  line.split("|||") 
    x  = { "avatar" => values[1] , "name"  => values[0]} 
    p x
    all.push(x) 
end 
p all.to_json 
oFile = File.open("datas.json","w") 

oFile.write(all.to_json)
f.close() 



