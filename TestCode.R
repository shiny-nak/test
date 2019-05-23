###test code

#Prime number Search
PrimeTemp<-c(2)
flag<-F
for(i in 3:10000){
  
  for(j in PrimeTemp){
    if(i%%j==0){
      flag<-F
      break
    }else{
      flag<-T
    }
  }
  
  if(flag==T){
    PrimeTemp<-append(PrimeTemp,i)
    flag<-F
  }

}
print(PrimeTemp)

#rand function
RandomTemp<-rnorm(100)

#plot
plot(hist(RandomTemp))

#print
print(sum(RandomTemp>0))
print(order(RandomTemp))


