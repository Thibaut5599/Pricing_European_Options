# Pricing European Options

This project was followed as part of my second year of a Master of Mathematics at Université de Lorraine. This is a guided project carried out in the “Stochastic Modeling” teaching unit. This project is written entirely in French.

## Project Overview
This project focuses on estimating the price of European-style options at time $t=0$ using Monte Carlo simulation methods, alongside various variance reduction techniques. By implementing and comparing different methods, the project aims to identify the most efficient approach to pricing options in terms of accuracy and computational efficiency.

## Objectives
The main objectives of this project are :
- To implement four Monte Carlo methods : **Standard Monte Carlo**, **Importance Sampling**, **Control Variates**, and **Antithetic Variates**.
- To analyze each method’s performance by comparing key metrics, particularly variance and convergence speed.
- To determine which method provides the most accurate pricing estimates for options, with a focus on minimizing variance.

## Project Contents 
- **Screenshots :** The Screenshots folder contains the PNG files that are included in the report (mainly screenshots of the matlab code and the results that the code returns).
- **Matlab Code Files :** Matlab_Code folder contains Matlab scripts implementing each Monte Carlo method and the associated variance reduction techniques.
  - **montecarlo_C.m :** script implementing standard Monte Carlo method for call pricing.
  - **montecarlo_P.m :** script implementing standard Monte Carlo method for put pricing.
  - **Echantillonnage_pref.m :** script implementing Importance Sampling method for call pricing.
  - **montecarlo_varcontrol.m :** script implementing Control Variates method for call pricing.
  - **montecarlo_var_antithetiques.m :** script implementing Antithetic Variates method for call pricing.
- **LaTeX file :** Report_PricingOptions.tex is a LaTex script of Report.
- **Project Report :** Report_PricingOptions.pdf is the final report presentign in-depth analysis of the methods and results, detailing the variance, convergence rates, and accuracy comparisons.

## Results and Conclusion 
Among the four Monte Carlo methods tested, the Control Variates approach was found to be the most effective, providing the lowest variance and highest precision in estimating option prices (both call $C$ ant put $P$). This method particularly excelled in large-scale simulations (e.g., $n=10^4$ and $n=10^6$), showcasing its reliability and accuracy as a variance reduction technique. Overall, variance reduction methods like Control Variates significantly improved the precision of option price estimates.

## Usage
**To run the Matlab code, here is the procedure to follow :**
  1. Clone the repository :\
     git clone https://github.com/Thibaut5599/Pricing_European_Options.git
  2. Open the Matlab code files in Matlab.
  3. Use the Monte Carlo Functions : Each Matlab script contains a function corresponding to a Monte Carlo method. To run a method and view the results, call the relevant function in the Matlab console, specifying the number of simulations n. For example :
     
     % For the standard Monte Carlo method\
     [I, V, e, B1, B2] = montecarlo_C(1e6); % where 1e6 corresponds to the number of simulations, here n = 10^6

     % For the importance sampling method\
     [I, V, e, B1, B2] = Echantillonnage_pref(1e6);

     % For the control variates method\
     [I, V, e, B1, B2] = montecarlo_varcontrol(1e6);

     % For the anithetic variates method\
     [I, V, e, B1, B2] = montecarlo_var_antithetiques(1e6);
     
  4. Interpret the results : Each function call returns the simulation results, including the estimated option price (I), the variance estimator (V), the standard error (e), the lower limit of the confidence interval at the 95% level (B1) and la limite supérieure de l'intervalle de confiance au niveau de 95 % (B2).
     
## Author
Project designed by Université de Lorraine, carried out by Thibaut LANNERS.

