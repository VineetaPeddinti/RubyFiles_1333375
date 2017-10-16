s= "512+4*+3-"
sample=[]
for pos in 0...s.length
if(s[pos] =~ /[[:digit:]]/)
sample.push(s[pos])
else
x=sample.pop.to_i
y=sample.pop.to_i
case s[pos]
when "+"
  res=(x+y).to_s
  sample.push(res)
when "-"
  res=(y-x).to_s
  sample.push(res)
when "*"
  res=(x*y).to_s
  sample.push(res)
else
  puts "You just making it up!"
end
end
end
puts sample

