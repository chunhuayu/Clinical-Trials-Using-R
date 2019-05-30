# Q1:
# Hypothesis: H0: µ1 = µ2       Ha: µ1 ≠ µ2
# R code and results
# Input data
> data = matrix(0,24,3)
> data[,1]=c(2188,1719,1875,1797,1563,2344,1719,1875,2031,1719,2016,2188,1875,1797,2500,2266,2422,2031,2500,1875,2188,1797,1875,1875)
> data[,2]=c(2461,1641,1641,2215,1559,3117,2051,2215,1805,1969,2264,3117,2051,1969,3035,2953,2625,2379,3035,1723,2297,2215,2264,2215)
> data[,3]=c('B','B','B','A','B','A','A','B','B','A','A','A','B','B','B','A','B','A','A','B','B','A','A','A')
> write.table(data,"data.P1.txt",quote = F)
> data=read.table('data.p1.txt')
> data
     V1   V2 V3
1  2188 2461  B
2  1719 1641  B
3  1875 1641  B
4  1797 2215  A
5  1563 1559  B
6  2344 3117  A
7  1719 2051  A
8  1875 2215  B
9  2031 1805  B
10 1719 1969  A
11 2016 2264  A
12 2188 3117  A
13 1875 2051  B
14 1797 1969  B
15 2500 3035  B
16 2266 2953  A
17 2422 2625  B
18 2031 2379  A
19 2500 3035  A
20 1875 1723  B
21 2188 2297  B
22 1797 2215  A
23 1875 2264  A
24 1875 2215  A

### generate subsets of treatment A and B respectively
> id.B=which(data[,3]=='B')
> id.A=which(data[,3]=='A')
> id.A;id.B
 [1]  4  6  7 10 11 12 16 18 19 22 23 24
 [1]  1  2  3  5  8  9 13 14 15 17 20 21
> data.A=data[id.A,]
> data.B=data[id.B,]
> data.A;data.B
     V1   V2 V3
4  1797 2215  A
6  2344 3117  A
7  1719 2051  A
10 1719 1969  A
11 2016 2264  A
12 2188 3117  A
16 2266 2953  A
18 2031 2379  A
19 2500 3035  A
22 1797 2215  A
23 1875 2264  A
24 1875 2215  A
     V1   V2 V3
1  2188 2461  B
2  1719 1641  B
3  1875 1641  B
5  1563 1559  B
8  1875 2215  B
9  2031 1805  B
13 1875 2051  B
14 1797 1969  B
15 2500 3035  B
17 2422 2625  B
20 1875 1723  B
21 2188 2297  B

### calculate mean value
> Mean.A=mean(data.A[,2])
> Mean.B=mean(data.B[,2])
> Mean.A;Mean.B
[1] 2482.833
[1] 2085.167

### calculate var value
> Var.A=var(data.A[,2])
> Var.B=var(data.B[,2])
> Var.A;Var.B
[1] 191140.5
[1] 208393.1

### get the number of each subset
> N.A=nrow(data.A)
> N.B=nrow(data.B)
> N.A;N.B
[1] 12
[1] 12

### calculate the pool sem
> pool.sem=sqrt(((N.A-1)*Var.A+(N.B-1)*Var.B)/(N.A+N.B-2)*(1/N.A+1/N.B))
> pool.sem
[1] 182.4677

### calculate the test statistic
> T=(Mean.A-Mean.B)/(pool.sem)
> T
[1] 2.179381

### conclusion
### one sided test
> alpha=0.05
> t.critical.1=qt(1-alpha,df=N.A+N.B-2)
> t.critical.1
[1] 1.717144
### since T =2.18 is greater than t.critical.1 =1.72 we can reject the null hypothesis.

### two sided test
> t.critical.2=qt(1-alpha/2,df=N.A+N.B-2)
> t.critical.2
[1] 2.073873
> 
### since T = 2.18 is greater than t.critical.2=2.08, we can reject the null hypothesis.
