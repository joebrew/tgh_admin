Health Information, Treatment, and Worker Productivity 
=========
Andrew Dillon, Jed Friedman, Pieter Sernells.

###Main Idea
Agriculture and other physical labor activities are a large part of many countries growth and productivity. Malaria and other diseases can affect labor supply, productivity, and choice of jobs. Health is assumed to be a source of human capital. 

###Method

- Workers are divided into 8 groups of 100, each with one supervisor. 
- They choose between cutting and scrabbling. 
- Scrabbling is bundling sugarcane rods and loading them in trucks. it is less physically intensive than cutting, can be selected by a sugar cane cutter if he is not feeling at full strength.
- They use records on worker daily productivity and job choice (cutter or scrabbler) and supplement this with data from worker interviews- socio demographic, work history, and self reported health information, and collect blood samples for malaria testing. 
- **Key**: The experimental design randomizes the order in which workers are tested and treated over time with all workers receiving one test (and medical treatment if positive) over 6 week survey period. 
-  This exploits the exogenous variation in the timing of access to testing and treatment for malaria to identify the effects of the intervention. 
- They construct a time-series of worker-week observations that permits them to compare the labor outcomes of treated and untreated for the same weeks of observations.
- The experiment compares outcomes in a given week between workers randomly offered treatment and those not yet offered, so controlling for the work group specific temporal viariation in oucomes will also be critical (which they do).


###Primary Results 
Large **intent to treat effect** of intervention-- the offer of a workplace based malaria testing and treatment program increases earnings by 10% over the weeks following the offer. 

**Three effects**: When estimating these three effects they include workgroup-workweek fixed effects  to control for potential non random placement of workers across workgroups, as well as natural weekly variation in work outcomes both across and within workgroups.

1) **ITT (intent to treat)** - effect of overall intervention or joint effect of malaria testing and treatment on labor outcomes- compare labor outcomes of workers offered this program to a counterfactual of workers who have not yet received it.  Accounts for 10% increase in earnings.

2) **TOT (treatment on treated)** or joint effect of testing and treatment for the malaria positives) - compare workers who tested positive for malaria with outcomes from workers who did not yet have access to treatment but are assumed sick as they tested positive in previous weeks - or the effect of testing for malaria negatives. Also 10% gain in earnings, but as a result of labor supply increase, essentially meaning they could increase hours worked but not necessarily productivity.
3) **TmUT - (treatment on the medically untreated)** or effect of testing for malaria negatives) - isolated effect of providing possibly new and unexpected info regarding ones own health status to those who test negative for malaria. (assumption: those who test negative constitute a valid counterfactual group for workers given a healthy diagnosis). Same effect at ITT for workers who are told that they are malaria free. Suggests even healthy workers update their health beliefs and modify their labor decisions. "Malaria" is associated with general illness, so a healthy malaria diagnosis is likely to convey a broad meaning of good health. This leads, presumably I think, to higher earnings through increased labor productivity. 

###Secondary Results
Also looks at the effect of health info by contrasting program effect by worker's revealed health status: workers who test positive for malaria, the treatment of illness **increases labor supply**, leading to higher earnings. For workers who test negative and especially for those workers most likely to be surprised by the healthy diagnosis, health info leads to increased earnings via **increased productivity**. 

##reason 
selection into higher return tasks within the plantation as a result of changes in the perceived cost of effort. They use a model to allow health expectations partly to determine the supply of effort-- inaccurate health perceptions may lead workers to suboptimal labor allocation. 

###Theoretical Framework 
- worker output depends on ability (A) and work effort (e).
- effort (e) depends on physical work capacity (health (H)). In this case it is perceived health (H').
	- x = f(e(H'), A), x is a workers output. 
	- H' = g(H,I)  perceived health is function of real health and info about one's own health. d
	- Utility from cane cutting is higher than utility of scrabbling because of wage differentials, but it requires more effort. So there are 3 types of workers: 
		- (1) cane cutters, 
		- (2) scrabblers, 
		- (3) and those that switch between the two depending on their health expectations. If health expectations increase then output goes up and so does expected return as cane cutting is simply a fixed return activity. 
- Their theory allows for 4 main observations:
		1) Workers supply labor on plantation if required daily expected effort provides higher returns than off plantation work,  conditioned on health and available info. 
	2) Each day workers choose to cut cane or scrabble depending on their own percieved health.
	3) Workers decided how much effort to expend, also function of percieved health. 
	4) worker's total earnings in a period can be assessed as a product of their cumulative daily labor supply, their task choice, and job effort. 
	
###Previous Literature and This Paper's Innovation
**Issues with previous studies:** 
**Problem** Focused on real health rather than perceived health. So workers health may be correlated with error term (some sort of endowment effect). 
**Solution** This study uses randomization which results in exogenous change in malaria health status due to medical treatment of those affected.
**Problem** Previous literature problem of reverse causality between health status and labor. 
**Solution** The exogenous change in malaria status induced through medical treatment rules out this possibility. 
**Problem** Other studies use multiple farms, but cant account for unobserved heterogeneity. 
**Soluation** This study uses just one. 
**Problem** Most studies identify malaria infection through self reporting. 
**Solution** Using plantation in rural Nigeria- 800 sugarcane cutters- paid a piece rate wage.