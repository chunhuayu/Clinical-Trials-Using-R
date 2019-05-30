Q2: code and results
### Method 1 ###
### Hypothesis: H0: µd = 0                                             Ha: µd ≠ 0

> data.bb=cbind(data.B[,1:2],data.B[,1]-data.B[,2])
> data.bb
     V1   V2 data.B[, 1] - data.B[, 2]
1  2188 2461                      -273
2  1719 1641                        78
3  1875 1641                       234
5  1563 1559                         4
8  1875 2215                      -340
9  2031 1805                       226
13 1875 2051                      -176
14 1797 1969                      -172
15 2500 3035                      -535
17 2422 2625                      -203
20 1875 1723                       152
21 2188 2297                      -109
> n = nrow(data.bb)
> n
[1] 12
### calculate mean
> 
> mean.b.d = mean(data.bb[,3])
> mean.b.d
[1] -92.83333
> 
### calculate sem
> var.b.d = var(data.bb[,3])
> var.b.d
[1] 56511.24
> sem.d = sqrt(var.b.d/n)
> sem.d
[1] 68.62412
> 
### Test statistic
> 
> T.d = mean.b.d/sem.d
> T.d
[1] -1.35278
> 
### Cut off
### for two sided test
> alpha = 0.05
> t.critical = qt(1-alpha/2,n-1)
> t.critical
[1] 2.200985

### conclusion
>  abs.T.d = abs(T.d)
>  abs.T.d
[1] 1.35278
### since abs.T.d < t.critical, not reject H0 
>

### Method 2 ###
### Hypothesis: H0: µ.pre = µ.post  Ha: µ.pre ≠ µ.post
### calculate mean values
> data.b
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
> 
> n=nrow(data.b)
> n
[1] 12
> mean.b.1 = mean(data.b[,1])
> mean.b.2 = mean(data.b[,2])
> mean.b.1; mean.b.2
[1] 1992.333
[1] 2085.167
> 
### Calculate sem
> 
> var.b.1 = var(data.b[,1])
> var.b.2 = var(data.b[,2])
> var.b.1; var.b.2
[1] 79333.33
[1] 208393.1
> 
> sd.b.1 = sd(data.b[,1])
> sd.b.2 = sd(data.b[,2])
> sd.b.1; sd.b.2
[1] 281.6617
[1] 456.5009
> 
> corr.b = cor(data.b[,1],data.b[,2])
> corr.b
[1] 0.8991183
> 
> sem = sqrt((var.b.1 + var.b.2-2*corr.b*sd.b.1*sd.b.2)/n)
> sem
[1] 68.62412
 
### Test statistic
> T.p = (mean.b.1-mean.b.2)/sem
> T.p
[1] -1.35278
 
### Cut off
### for two sided test
> alpha = 0.05
> t.critical = qt(1-alpha/2,n-1)
> t.critical
[1] 2.200985

### conclusion
>  abs.T.p = abs(T.p)
>  abs.T.p
[1] 1.35278
### since abs.T.p=1.35 < t.critical=2.2, not reject H0


### Mehtod 3 ###
>  n = nrow(data.b)
>  n
[1] 12
> 
>  mean.within = apply(data.b[,1:2],1,mean)
>  mean.within
     1      2      3      5      8      9     13     14     15     17     20 
2324.5 1680.0 1758.0 1561.0 2045.0 1918.0 1963.0 1883.0 2767.5 2523.5 1799.0 
    21 
2242.5 
>  SS.within = sum((data.b[,1]-mean.within)^2 + (data.b[,2]-mean.within)^2)
> 
>  mean.b.1 = mean(data.b[,1])
>  mean.b.2 = mean(data.b[,2])
>  mean.b.1; mean.b.2
[1] 1992.333
[1] 2085.167
>  mean.all = (mean.b.1+mean.b.2)/2
>  mean.all
[1] 2038.75
> 
>  SS.treatment = n*(mean.b.1-mean.all)^2+n*(mean.b.2-mean.all)^2
>  SS.treatment
[1] 51708.17
> 
>  SS.residual = SS.within - SS.between
>  SS.residual
[1] 310811.8
> 
>  F = (SS.treatment/1)/(SS.residual/(n-1))
>  F
[1] 1.830013

### cut off
>  alpha = 0.05;
>  F.critical = qf(1-alpha,1,n-1)
>  F.critical
[1] 4.844336
### since F = 1.83 < F.critical, not reject H0. sqrt(F)=1.35 ~ t distribution.
