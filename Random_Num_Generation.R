#set a random seed
set.seed(29347)
#this is the number of cpcs per state in alphabetical order of state name
number=c(53,9,53,37,149,58,21,6,161,91,6,19,86,98,49,37,54,29,11,48,25,99,77,29,69,18,20,7,15,37,22,107,83,7,119,48,43,125,3,32,11,65,203,7,8,51,47,14,57,12)
#The above creates a set of values which correspond to 10% of the original number of cpcs.
for(i in number){
  ten = number*.1
}
#Rounding off the decimal point because decimals suck.
ten<-round(ten,digits = 0)
#Replace all values less than 3 with 3 (the list "ten" now contains the number of cpcs we have to select).
ten<-replace(ten,ten<3,3)
#create the random sample of CPCs from each state
random_sample=vector("list",50)
q=1
for(j in ten){
  random_sample[[q]]=sample(number,j)
  q=q+1
}
df=cbind(state.name,number,ten,random_sample)
df