
### Q3-1 ###
> library(randPack)
# the ratio of A, B and C = 4:1:2
> trts=c(A=4L,B=1L,C=2L)
> trts
A B C 
4 1 2 
> expd=new("PermutedBlockDesc",treatments= trts, type= "PermutedBlock", numBlocks=50L)
> expd
An object of class "PermutedBlockDesc"
Slot "numBlocks":
[1] 50

Slot "treatments":
A B C 
4 1 2 

Slot "type":
[1] "PermutedBlock"

# 350 patients will be assigned as the following treatments, A:200, B:50, C:100
> tot=randPack:::.newPBlock(expd)
> tot
  [1] "A" "B" "A" "A" "A" "C" "C" "A" "C" "C" "A" "A" "B" "A" "C" "A" "A" "B" "A"
 [20] "C" "A" "A" "C" "C" "B" "A" "A" "A" "C" "B" "A" "C" "A" "A" "A" "A" "A" "C"
 [39] "A" "B" "A" "C" "A" "C" "B" "A" "C" "A" "A" "A" "C" "A" "B" "A" "C" "A" "A"
 [58] "C" "A" "B" "C" "A" "A" "A" "B" "A" "C" "A" "A" "C" "A" "C" "A" "A" "C" "A"
 [77] "B" "A" "C" "B" "A" "C" "A" "A" "A" "A" "B" "C" "A" "C" "A" "A" "B" "C" "A"
 [96] "C" "A" "A" "A" "A" "C" "A" "A" "C" "B" "A" "B" "A" "A" "C" "C" "A" "B" "A"
[115] "A" "C" "A" "C" "A" "A" "A" "C" "A" "C" "A" "B" "C" "B" "A" "C" "A" "A" "A"
[134] "C" "C" "B" "A" "A" "A" "A" "A" "A" "A" "A" "C" "C" "B" "C" "A" "A" "B" "A"
[153] "A" "C" "A" "C" "A" "A" "B" "C" "A" "C" "B" "A" "A" "A" "A" "C" "A" "B" "C"
[172] "A" "A" "C" "A" "A" "A" "A" "A" "C" "C" "B" "A" "A" "A" "C" "A" "C" "B" "A"
[191] "A" "A" "C" "C" "B" "A" "C" "A" "C" "A" "A" "A" "B" "C" "B" "A" "A" "C" "A"
[210] "A" "A" "C" "A" "B" "A" "C" "A" "C" "A" "C" "A" "A" "B" "A" "A" "B" "A" "A"
[229] "A" "C" "C" "C" "C" "A" "A" "A" "A" "B" "A" "A" "A" "B" "A" "C" "C" "C" "A"
[248] "B" "A" "C" "A" "A" "A" "A" "A" "A" "C" "C" "B" "A" "C" "B" "A" "C" "A" "A"
[267] "A" "C" "A" "B" "A" "A" "C" "C" "A" "C" "A" "A" "A" "B" "A" "A" "C" "B" "A"
[286] "A" "C" "A" "C" "A" "C" "A" "B" "A" "A" "B" "C" "A" "A" "C" "A" "A" "C" "A"
[305] "A" "A" "B" "C" "A" "A" "C" "B" "A" "C" "A" "A" "B" "A" "A" "C" "A" "C" "C"
[324] "A" "A" "C" "B" "A" "A" "A" "B" "A" "C" "A" "C" "A" "C" "A" "C" "A" "A" "A"
[343] "B" "B" "C" "A" "A" "C" "A" "A"
> table(tot)
tot
  A   B   C 
200  50 100 

# Three stratum, age<40,  40<age<50, 50<age
> bls=rep(1:3,each=7)

# within strata age<40
> split(tot,bls)
$`1`
  [1] "A" "B" "A" "A" "A" "C" "C" "A" "C" "C" "B" "A" "A" "A" "A" "C" "B" "A" "C"
 [20] "A" "A" "A" "B" "A" "C" "A" "A" "C" "A" "A" "B" "C" "A" "C" "A" "A" "B" "A"
 [39] "A" "C" "C" "A" "C" "B" "A" "C" "A" "A" "A" "C" "A" "A" "B" "A" "A" "C" "A"
 [58] "B" "C" "A" "A" "C" "A" "A" "A" "A" "C" "C" "B" "A" "A" "C" "A" "B" "A" "C"
 [77] "A" "C" "C" "A" "A" "A" "A" "B" "A" "A" "A" "A" "C" "C" "B" "C" "A" "C" "A"
 [96] "A" "A" "B" "A" "B" "C" "A" "A" "C" "A" "A" "B" "A" "A" "C" "A" "C" "C" "A"
[115] "C" "A" "A" "A" "B"

# within strata. 40<age<50
$`2`
  [1] "A" "C" "C" "A" "A" "B" "A" "C" "B" "A" "C" "A" "A" "A" "A" "C" "A" "B" "A"
 [20] "C" "A" "A" "C" "A" "A" "C" "A" "B" "A" "B" "C" "A" "C" "A" "A" "B" "A" "A"
 [39] "C" "A" "C" "A" "C" "C" "B" "A" "A" "A" "A" "A" "C" "A" "A" "B" "C" "A" "A"
 [58] "A" "A" "A" "C" "C" "B" "C" "A" "C" "A" "A" "A" "B" "C" "A" "C" "A" "A" "B"
 [77] "A" "A" "A" "A" "B" "A" "C" "C" "A" "C" "B" "A" "C" "A" "A" "A" "A" "C" "B"
 [96] "A" "A" "C" "A" "C" "A" "A" "A" "B" "C" "C" "A" "A" "C" "B" "A" "A" "B" "C"
[115] "A" "A" "C" "A" "A"

#. within strata age>50
$`3`
  [1] "C" "A" "A" "B" "A" "C" "A" "A" "A" "C" "A" "B" "A" "C" "A" "C" "A" "B" "C"
 [20] "A" "A" "A" "C" "B" "A" "C" "A" "A" "A" "A" "C" "A" "A" "C" "B" "A" "A" "C"
 [39] "A" "C" "A" "B" "A" "A" "A" "A" "C" "C" "B" "C" "B" "A" "A" "A" "A" "C" "A"
 [58] "A" "A" "C" "A" "C" "B" "C" "B" "A" "A" "C" "A" "A" "A" "B" "A" "A" "A" "C"
 [77] "C" "C" "A" "B" "A" "C" "A" "A" "A" "C" "A" "B" "A" "A" "C" "A" "C" "A" "C"
 [96] "A" "B" "A" "A" "A" "C" "B" "A" "C" "A" "A" "B" "A" "C" "A" "C" "A"

Warning message:
In split.default(tot, bls) :
  data length is not a multiple of split variable
> sapply(split(tot,bls),function(x) sum(x=="A"))
 1  2  3 
68 68 64 
Warning message:
In split.default(tot, bls) :
  data length is not a multiple of split variable
> sapply(split(tot,bls),function(x) sum(x=="B"))
 1  2  3 
17 17 16 
> sapply(split(tot,bls),function(x) sum(x=="C"))
 1  2  3 
34 34 32 
Warning message:
In split.default(tot, bls) :
  data length is not a multiple of split variable

# the subjects assignment of Treatment A within strata "age<40"         
> ageAs1=blockrand(n=68,levels=1, stratum = "age<40 Trt A")
> ageAs1
   id      stratum block.id block.size treatment
1   1 age<40 Trt A        1          3         1
2   2 age<40 Trt A        1          3         1
3   3 age<40 Trt A        1          3         1
4   4 age<40 Trt A        2          4         1
5   5 age<40 Trt A        2          4         1
6   6 age<40 Trt A        2          4         1
7   7 age<40 Trt A        2          4         1
8   8 age<40 Trt A        3          4         1
9   9 age<40 Trt A        3          4         1
10 10 age<40 Trt A        3          4         1
11 11 age<40 Trt A        3          4         1
12 12 age<40 Trt A        4          2         1
13 13 age<40 Trt A        4          2         1
14 14 age<40 Trt A        5          3         1
15 15 age<40 Trt A        5          3         1
16 16 age<40 Trt A        5          3         1
17 17 age<40 Trt A        6          1         1
18 18 age<40 Trt A        7          4         1
19 19 age<40 Trt A        7          4         1
20 20 age<40 Trt A        7          4         1
21 21 age<40 Trt A        7          4         1
22 22 age<40 Trt A        8          2         1
23 23 age<40 Trt A        8          2         1
24 24 age<40 Trt A        9          2         1
25 25 age<40 Trt A        9          2         1
26 26 age<40 Trt A       10          1         1
27 27 age<40 Trt A       11          2         1
28 28 age<40 Trt A       11          2         1
29 29 age<40 Trt A       12          2         1
30 30 age<40 Trt A       12          2         1
31 31 age<40 Trt A       13          3         1
32 32 age<40 Trt A       13          3         1
33 33 age<40 Trt A       13          3         1
34 34 age<40 Trt A       14          2         1
35 35 age<40 Trt A       14          2         1
36 36 age<40 Trt A       15          1         1
37 37 age<40 Trt A       16          4         1
38 38 age<40 Trt A       16          4         1
39 39 age<40 Trt A       16          4         1
40 40 age<40 Trt A       16          4         1
41 41 age<40 Trt A       17          1         1
42 42 age<40 Trt A       18          4         1
43 43 age<40 Trt A       18          4         1
44 44 age<40 Trt A       18          4         1
45 45 age<40 Trt A       18          4         1
46 46 age<40 Trt A       19          3         1
47 47 age<40 Trt A       19          3         1
48 48 age<40 Trt A       19          3         1
49 49 age<40 Trt A       20          3         1
50 50 age<40 Trt A       20          3         1
51 51 age<40 Trt A       20          3         1
52 52 age<40 Trt A       21          1         1
53 53 age<40 Trt A       22          2         1
54 54 age<40 Trt A       22          2         1
55 55 age<40 Trt A       23          1         1
56 56 age<40 Trt A       24          3         1
57 57 age<40 Trt A       24          3         1
58 58 age<40 Trt A       24          3         1
59 59 age<40 Trt A       25          4         1
60 60 age<40 Trt A       25          4         1
61 61 age<40 Trt A       25          4         1
62 62 age<40 Trt A       25          4         1
63 63 age<40 Trt A       26          1         1
64 64 age<40 Trt A       27          3         1
65 65 age<40 Trt A       27          3         1
66 66 age<40 Trt A       27          3         1
67 67 age<40 Trt A       28          4         1
68 68 age<40 Trt A       28          4         1
69 69 age<40 Trt A       28          4         1
70 70 age<40 Trt A       28          4         1

# the subjects assignment of Treatment A within strata "40<age<50"  
> ageAs2=blockrand(n=68,levels=1, stratum = "40<age<50 Trt A")
# the subjects assignment of Treatment A within strata "age>50"  
> ageAs3=blockrand(n=68,levels=1, stratum = "age>50 Trt A")
         
> ageBs1=blockrand(n=68,levels=1, stratum = "age<40 Trt B")
> ageBs2=blockrand(n=68,levels=1, stratum = "40<age<50 Trt B")
> ageBs3=blockrand(n=68,levels=1, stratum = "age>50 Trt B")
         
> ageCs1=blockrand(n=68,levels=1, stratum = "age<40 Trt C")
> ageCs2=blockrand(n=68,levels=1, stratum = "40<age<50 Trt C")
> ageCs3=blockrand(n=68,levels=1, stratum = "age>50 Trt C")
 
### Q3-II ###
# Applying the minimization randomization method. to this trial
> rd=new("RandomDesc",treatments= trts, type="Minimization",numPatients=350L)
> tot.rd=randPack:::.newRandom(rd)
> tot.rd
  [1] "A" "C" "A" "C" "A" "C" "A" "C" "A" "A" "A" "B" "A" "C" "A" "C" "A" "B" "C" "C"
 [21] "B" "B" "B" "A" "B" "B" "C" "A" "A" "A" "A" "A" "B" "C" "A" "A" "B" "A" "A" "C"
 [41] "A" "C" "A" "A" "B" "B" "C" "A" "A" "B" "C" "A" "A" "A" "A" "B" "A" "A" "C" "A"
 [61] "B" "A" "C" "C" "A" "C" "A" "A" "C" "A" "B" "A" "A" "C" "C" "C" "A" "A" "A" "A"
 [81] "C" "C" "A" "A" "C" "A" "B" "C" "A" "A" "B" "A" "A" "A" "A" "C" "A" "C" "C" "B"
[101] "B" "A" "A" "B" "A" "A" "A" "A" "C" "A" "A" "C" "C" "A" "C" "A" "C" "A" "C" "A"
[121] "A" "A" "A" "A" "B" "C" "A" "A" "B" "B" "A" "A" "A" "A" "A" "A" "A" "A" "C" "B"
[141] "B" "B" "C" "A" "A" "B" "A" "A" "A" "A" "B" "A" "A" "A" "A" "A" "A" "A" "B" "A"
[161] "A" "C" "A" "B" "B" "A" "A" "C" "C" "A" "C" "A" "A" "C" "A" "A" "C" "A" "A" "C"
[181] "C" "C" "A" "A" "A" "C" "A" "A" "C" "A" "A" "C" "A" "B" "A" "C" "A" "A" "A" "A"
[201] "A" "A" "A" "A" "A" "A" "A" "A" "C" "C" "C" "B" "A" "A" "B" "A" "A" "C" "B" "B"
[221] "B" "A" "A" "C" "A" "A" "A" "A" "C" "C" "C" "C" "A" "B" "A" "B" "A" "A" "A" "A"
[241] "A" "C" "A" "B" "C" "C" "A" "A" "C" "A" "A" "C" "A" "A" "A" "B" "B" "A" "A" "C"
[261] "A" "C" "A" "A" "A" "C" "A" "A" "A" "A" "A" "A" "B" "A" "C" "A" "C" "A" "A" "C"
[281] "B" "C" "A" "C" "C" "A" "C" "C" "A" "A" "A" "A" "C" "A" "B" "A" "C" "A" "A" "C"
[301] "C" "A" "C" "A" "A" "A" "A" "C" "C" "A" "A" "C" "C" "B" "C" "B" "A" "A" "C" "A"
[321] "A" "B" "A" "A" "C" "C" "B" "B" "C" "B" "C" "A" "C" "A" "A" "B" "C" "B" "B" "C"
[341] "A" "A" "C" "A" "A" "A" "A" "A" "A" "C"
> table(tot.rd)
tot.rd
  A   B   C 
200  54  96 
> bls.rd=rep(1:3)
> split(tot.rd,bls.rd)
$`1`
  [1] "A" "C" "A" "A" "A" "C" "C" "B" "B" "A" "A" "C" "B" "C" "A" "B" "A" "A" "A" "A"
 [21] "B" "C" "A" "A" "A" "C" "A" "C" "C" "C" "B" "A" "A" "B" "A" "A" "C" "C" "C" "A"
 [41] "A" "A" "A" "B" "A" "A" "C" "B" "A" "A" "B" "A" "A" "A" "A" "A" "C" "A" "A" "A"
 [61] "C" "A" "A" "A" "A" "C" "A" "A" "A" "A" "C" "A" "A" "B" "A" "A" "C" "C" "A" "A"
 [81] "A" "B" "A" "A" "A" "B" "A" "C" "A" "A" "A" "A" "C" "C" "A" "A" "A" "A" "B" "A"
[101] "C" "A" "A" "A" "C" "B" "C" "B" "C" "B" "C" "A" "C" "C" "C" "A" "A"

$`2`
  [1] "C" "A" "C" "A" "C" "A" "C" "B" "B" "A" "A" "A" "A" "A" "A" "C" "B" "A" "B" "C"
 [21] "A" "A" "A" "B" "C" "A" "A" "A" "A" "A" "A" "A" "C" "B" "B" "A" "A" "C" "A" "C"
 [41] "A" "B" "A" "A" "A" "A" "B" "C" "B" "A" "A" "A" "A" "A" "B" "A" "A" "A" "A" "A"
 [61] "C" "A" "A" "A" "B" "A" "A" "A" "A" "C" "B" "B" "C" "B" "C" "A" "C" "A" "B" "A"
 [81] "C" "C" "A" "A" "A" "B" "C" "A" "C" "A" "A" "C" "A" "B" "C" "C" "A" "C" "A" "A"
[101] "A" "A" "C" "A" "B" "A" "A" "A" "C" "C" "A" "A" "B" "A" "A" "A" "C"

$`3`
  [1] "A" "C" "A" "B" "A" "B" "B" "A" "C" "A" "B" "A" "A" "C" "B" "A" "C" "A" "A" "A"
 [21] "C" "C" "C" "A" "C" "A" "C" "A" "B" "A" "A" "C" "C" "A" "A" "A" "A" "A" "C" "A"
 [41] "A" "C" "B" "A" "A" "A" "B" "A" "A" "A" "A" "A" "B" "C" "B" "C" "C" "C" "C" "C"
 [61] "A" "C" "C" "C" "A" "A" "A" "A" "A" "C" "A" "A" "B" "A" "A" "A" "C" "B" "A" "A"
 [81] "A" "C" "C" "C" "A" "A" "A" "A" "A" "A" "B" "A" "A" "C" "C" "C" "A" "A" "C" "C"
[101] "C" "A" "C" "C" "C" "A" "A" "A" "B" "B" "C" "B" "B" "A" "A" "A"

Warning message:
In split.default(tot.rd, bls.rd) :
  data length is not a multiple of split variable
> sapply(split(tot.rd,bls.rd), function(x) sum(x=="A"))
 1  2  3 
69 69 62 
Warning message:
In split.default(tot.rd, bls.rd) :
  data length is not a multiple of split variable
> sapply(split(tot.rd,bls.rd), function(x) sum(x=="B"))
 1  2  3 
17 20 17 
Warning message:
In split.default(tot.rd, bls.rd) :
  data length is not a multiple of split variable
> sapply(split(tot.rd,bls.rd), function(x) sum(x=="C"))
 1  2  3 
31 28 37 

