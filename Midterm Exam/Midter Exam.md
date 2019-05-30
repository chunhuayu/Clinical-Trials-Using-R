1. What are phases of clinical trials? Please compare these phases. 

2. Which issues do we need to design a clinical trial?

3. In phase II study, X denotes the number of patients who completely respond, and it follows the binomial distribution with the total number of patient (n) and the probability of getting complete response (p). What’s the point estimator of p, and the distribution of this estimator? Please compute 99% confidence interval for true p when the estimator of response rate is 0.25 and total number of patients is 25. 

4. In a phase II trial, 4 of 20 patients respond to a new drug for lung cancer. Please find the exact confidence 95% interval for the response rate (p) for X=k, k=4, and n=20. What about 95% confidence interval of the response rate (p)? Compare the exact confidence 95% interval with 95% confidence interval.

5. Please briefly describe the Gehan’s two stage design. Suppose the minimal response rate (p0) is 0.3. How large must n be so that if there are 0 responses among n patients we are relatively confident that the response rate is not 30% or better for X~Bin(n, p) and α=0.025. We want the 99% confidence interval for the response rate to be within +-16% when a new drug is considered minimally effective at p0=30%, what about the sample size necessary for this degree of precision is? Please use these values to interpret the Gehan’s two stage design.

6. Please briefly describe the Simon’s two stage design. Suppose X1 is the number of patients who respond in the first stage and X2 is the number of patients who respond in the second stage where n1 = 6, n=14. X1>2 and X1+X2>5. Please draw the figure to show the combinations that satisfy the two conditions. How many pairs (combinations) satisfy these conditions?

7. For a Hierarchical Model, X_i |n_i,π_i   ~ Bin(n_i,π_i ),i=1,…,N and π_1,…,π_N  are iid (μ_π,δ_π^2). Let p_i=X_i/n_i  denote the sample proportion that respond from the ith study. What about conditional expectation and conditional variance of p_i given n_i,π_i (i.e., E(p_i|n_i,π_i) and Var(p_i|n_i,π_i))? What about the expectation and variance of of p_i (i.e., E(p_i )and Var(p_i)? What’s the estimate for δ_π^2?

8. Example for results of one particular treatment for lung cancer.

|Study|	# of patients	|% response rate|
|:---:|:---:|:---:|
|A study	|12	|65|
|B study	|52	|12|
|C study	|26	|5|
|D study	|39	|42|
|E study	|148	|35|
|F study	|10	|17|
|G study	|47	|21|
Using this example to estimate δ_π^2.

9-10. There is a clinical trial regarding the Hypertension disease: two treatments are involved in this study (Treatment A and Treatment B), and the DBP values of 30 subjects are recorded at time point 1 and time point 5 for two treatments. 

Subject	TRT	DBP1	DBP5	Age	Sex
1	A	114	105	43	F
2	A	116	101	51	M
3	A	119	98	48	F
4	A	115	101	42	F
5	A	116	105	49	M
6	A	117	102	47	M
7	A	118	99	50	F
8	A	120	102	61	M
9	A	114	103	43	F
10	A	115	97	51	M
11	A	117	101	47	F
12	A	116	102	45	M
13	A	119	104	54	F
14	A	118	99	52	M
15	A	115	102	42	F
16	B	114	113	39	M
17	B	116	110	40	F
18	B	114	109	39	F
19	B	114	115	38	M
20	B	116	109	39	F
21	B	114	110	41	M
22	B	119	115	56	F
23	B	118	112	56	M
24	B	114	108	38	F
25	B	120	113	57	M
26	B	117	115	47	F
27	B	118	110	48	M
28	B	121	115	61	F
29	B	116	111	49	M
30	B	118	112	52	M
									
9. Please design the hypothesis and test the mean difference of DBP5 between treatment A and treatment B, and write down the formula, results and your codes? (Please write down all equations and statistics)

10. For each treatment, DBP1 and DBP5 will be paired data, please use three methods we have learned in the class to test the difference between DBP1 and DBP5 for treatment A?
