library(GOSemSim)
library(org.Sc.sgd.db)

function compare()
{
  value = read.csv('go.csv', stringsAsFactors = F)
  ##  Gene ontology (biological process)
  ##print(NROW(value)) 
  ##print(ncol(value)) 
  
  
  #读取第一列
  #bp = value[c(2)]
  #读取第七行
 # bp1=as.vector(bp[7,])
  #读取第八行
 # bp2=as.vector(bp[8,])
  
  #注入
  #go1<-c(bp1)
  #go2<-c(bp2)
  
  #比较
 # mgoSim(go1, go2,semData = d, measure="Wang")
  
  
  ##循环比较
  i<-1
  ##t<-numeric(nrow(value))
  for (i in 1:nrow(value)) {  ##从第一行遍历
    ##print(i)
    bp1=as.vector(bp[i,])   #把这一行赋值
    #print(i)
    #print(bp1)
    for(j in i:nrow(value))
    {
      bp2=as.vector(bp[j,])
      #print(bp2)
      t = mgoSim(go1, go2,semData = d, measure="Wang")
      print(t)
    }
    i=i+1
  }
  
  
  
  
}
