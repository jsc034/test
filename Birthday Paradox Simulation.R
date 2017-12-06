#comment that I actually edited in

percentage <- 0
runs <- 10000
for(index in 1:runs){
  room <- sample(1:365,23,replace=T)
  #23 for 50% chance, 70 for 99.9% chance
  #print(room)
  for(i in 1:length(room)){
    #print(i)
    birthday1 <- room[i]
    for(j in 1:length(room)){
      if(j==i){
       next;
      }
      #print(j)
      found <- (room[i]==room[j])
      #print(found)
      if(found==TRUE){
        break
      }
    }
  if(found==TRUE){
    break
  }
}
# print(found)
# print(room)
if(found){
  percentage <- percentage + 1
}
}
percentage <- percentage/runs
print(percentage)

