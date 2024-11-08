# Pricing European Options

This project was followed as part of my second year of a Master of Mathematics at Université de Lorraine. This is a guided project carried out in the “Stochastic Modeling” teaching unit. This project is written entirely in French.

## Project Overview
This project focuses on estimating the price of European-style options at time $t=0$ using Monte Carlo simulation methods, alongside various variance reduction techniques. By implementing and comparing different methods, the project aims to identify the most efficient approach to pricing options in terms of accuracy and computational efficiency.

## Objectives
The main objectives of this project are:
- To implement four Monte Carlo methods : **Standard Monte Carlo**, **Importance Sampling**, **Control Variates**, and **Antithetic Variates**.
- To analyze each method’s performance by comparing key metrics, particularly variance and convergence speed.
- To determine which method provides the most accurate pricing estimates for options, with a focus on minimizing variance.

## Project Contents 
- **Screenshots :** The Screenshots folder contains the PNG files that are included in the report (mainly screenshots of the matlab code and the results that the code returns).
- **Matlab Code Files :** Matlab_Code folder contains Matlab scripts implementing each Monte Carlo method and the associated variance reduction techniques.
  - **montecarlo_Call.m :** script implementing standard Monte Carlo method for call pricing.
  - **montecarlo_Put.m :** script implementing standard Monte Carlo method for put pricing.
  - **Echantillonnage_pref.m :** script implementing Importance Sampling method for call pricing.
  - **montecarlo_varcontrol.m :** script implementing Control Variates method for call pricing.
  - **montecarlo_var_antithetiques.m :** script implementing Antithetic Variates method for call pricing.
- **LaTeX file :** Report_PricingOptions.tex is a LaTex script of Report.
- **Project Report :** Report_PricingOptions.pdf is the final report presentign in-depth analysis of the methods and results, detailing the variance, convergence rates, and accuracy comparisons.

## Results and Conclusion 
Among the four Monte Carlo methods tested, the Control Variates approach was found to be the most effective, providing the lowest variance and highest precision in estimating option prices (both call $C$ ant put $P$). This method particularly excelled in large-scale simulations (e.g., $n=10^4$ and $n=10^6$), showcasing its reliability and accuracy as a variance reduction technique. Overall, variance reduction methods like Control Variates significantly improved the precision of option price estimates.

## Usage
- **Matlab Code :**
  1. Clone the repository :
     git clone https://github.com/Thibaut5599/Pricing_European_Options.git
  2. Open the Matlab project files in Matlab.
  3. Run the scripts for each Monte Carlo method to observe the results and compare performance.
