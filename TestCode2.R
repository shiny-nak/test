###test code

#Prime number Search
max_t<-10000
PrimeTemp<-c(2)
flag<-F
for(i in 3:max_t){
  
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

#Sieve of Eratosthenes エラトステネスのふるい
PrimeTemp2<-c(2:max_t)
i<-1
while(PrimeTemp2[i]<=(sqrt(max_t))){
  temp<-(PrimeTemp2%%PrimeTemp2[i]==0)
  temp[i]<-F
  PrimeTemp2<-PrimeTemp2[-which(temp)]
  i<-i+1
}
print(PrimeTemp2)

#rand function
RandomTemp<-rnorm(100)

#plot
plot(hist(RandomTemp))

#print
print(sum(RandomTemp>0))
print(order(RandomTemp))


