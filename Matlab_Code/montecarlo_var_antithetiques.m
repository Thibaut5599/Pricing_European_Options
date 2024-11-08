function [I,V,e,B1,B2] = montecarlo_var_antithetiques(n)
% retourne l'estimation du prix de l'opion d'achat a t=0 (c'est-a-dire l'estimation de C) par Monte Carlo, 
% l'estimateur de la variance, l'erreur standard, la borne inf de l'IC au niveau 95%,
% et la borne sup de l'IC au niveau 95% apres n simulations
% n : nombre de simulations
% I : valeur estimee de C
% e : erreur standard
S1=0; % S1 correspond a la somme des Y_i : on initialise S1 a 0 car on n'a pas encore fait de simultaion a ce stade
S2=0; % S2 correspond a la somme des (Y_i)^2 : on initialise S2 a 0 car on n'a pas encore fait de simultaion a ce stade
Ivect=[]; % Vecteur qui stocke l'estimateur de C pour chaque iteration de la simulation
B1=[]; % Vecteur qui stocke les bornes inferieures des intervalles de confiance pour chaque iteration de la simulation
B2=[]; % Vecteur qui stocke les bornes superieures des intervalles de confiance pour chaque iteration de la simulation
hold on; % Pour avoir tous les traces sur le meme graphe
for i=1:n
    x=sqrt(-2*log(rand()))*sin(2*pi*rand()); % On simule une v.a de loi normale centree et reduite (correspond a X_i)
    y=(1/2)*(max(exp(x)-1, 0) + max(exp(-x)-1, 0)); % On simule une v.a de loi Y_1 (correspond a Y_i)
    S1=S1+y; S2=S2+y^2;
    I=S1/i;
    Ivect=[Ivect I];
    V=(S2-S1^2/i)/(i-1); % Estimateur de la variance pour i simulations
    e=sqrt(V/i); % Erreur standard pour i simulations
    B1=[B1 I-1.96*e]; 
    B2=[B2 I+1.96*e]; 
end
abscisses=[1:n];
plot(abscisses,Ivect); % On trace le graphe de la valeur approchee de C en fonction du nombre de simulations
axis([1 n 0 2]);
C=exp(1/2)*0.8413-1/2; % Valeur de C donnee par la formule exacte (cf. Exo1-1.) (on est dans le cas ou beta=1 et K=1)
plot([0,n],[C,C]); % On trace une droite horizontale qui a pour ordonnee la valeur exacte de C  
plot(abscisses,B1); % On trace le graphe de la valeur de la borne inferieure de l'IC en fonction du nombre de simulations
plot(abscisses,B2); % On trace le graphe de la valeur de la borne superieure de l'IC en fonction du nombre de simulations
xlabel("Nombre de simulations");
ylabel("Prix de C a t=0 (Prime)");
title("Valeur approchee de C en fonction du nombre de simulations par la methode de Monte Carlo avec variables antithetiques");
legend('Valeur approchee de C par Monte Carlo', 'Valeur exacte de C', 'Borne inferieure IC', 'Borne superieure IC');
V=(S2-S1^2/n)/(n-1); % Estimateur de la variance pour n simulations
e=sqrt(V/n); % Erreur standard pour n simulations
B1=I-1.96*e; % Borne inferieure de l'IC pour n simulations
B2=I+1.96*e; % Borne superieure de l'IC pour n simulations
end




