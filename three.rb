s1 = "my&friend&Paul has heavy hats! &"
s2 = "my friend John has many many friends &"
h = Hash.new
h1 = Hash.new
fhash1=Hash.new
temp=""
def cr_hash(s,h)
s.each_char{|i|
  if h.has_key?(i)
      h[i] = h[i] + 1
    else
      h[i] = 1
    end
}
return h
end
h=cr_hash(s1,h)
h1=cr_hash(s2,h1)
h.each{|elem|
h1.each{|el|
if(elem[0] == el[0] && elem[0] =~ /[[:alpha:]]/ &&el[0] =~ /[[:alpha:]]/)
if(elem[1]-el[1] == 0)
str=elem[0] * elem[1]
temp = "=:#{str}/"
fhash1[temp] = elem[1]
elsif(elem[1]-el[1]>0)
str=elem[0] * elem[1]
temp ="1:#{str}/"
fhash1[temp]=elem[1]
else
str=elem[0] * el[1]
temp ="2:#{str}/"
fhash1[temp]=el[1]
end
end
}
}
fhash1.sort {|a,b| b[1]<=>a[1]}.each { |elem|
  print "#{elem[0]}"
}
puts ""




