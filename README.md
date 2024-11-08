# Pricing European Options

## Project Overview
This project focuses on estimating the price of European-style options at time $t=0$ using Monte Carlo simulation methods, alongside various variance reduction techniques. By implementing and comparing different methods, the project aims to identify the most efficient approach to pricing options in terms of accuracy and computational efficiency.

## Objectives
The main objectives of this project are:
- To implement four Monte Carlo methods : **Standard Monte Carlo**, **Importance Sampling**, **Control Variates**, and **Antithetic Variates**.
- To analyze each method’s performance by comparing key metrics, particularly variance and convergence speed.
- To determine which method provides the most accurate pricing estimates for options, with a focus on minimizing variance.

## Project Contents 
- **Matlab Code Files :** Scripts implementing each Monte Carlo method and the associated variance reduction techniques.
- **Project Report :** In-depth analysis of the methods and results, detailing the variance, convergence rates, and accuracy comparisons.

## Results and Conclusion 
Among the four Monte Carlo methods tested, the Control Variates approach was found to be the most effective, providing the lowest variance and highest precision in estimating option prices (both call $C$ ant put $P$). This method particularly excelled in large-scale simulations (e.g., $n=10^4$ and $n=10^6$), showcasing its reliability and accuracy as a variance reduction technique. Overall, variance reduction methods like Control Variates significantly improved the precision of option price estimates.

## Usage
- **Matlab Code :**
  1. Clone the repository :
     git clone https://github.com/Thibaut5599/Pricing_European_Options.git
  2. Open the Matlab project files in Matlab.
  3. Run the scripts for each Monte Carlo method to observe the results and compare performance.
