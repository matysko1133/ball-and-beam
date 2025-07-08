m = 0.042 //kg - mass of the ball
R = 0.02875 //m - radius of the ball
d = 0.06 //m - lever arm offset
g = -9.81 //m.s^-2 - gravitational acceleration
L =  0.26//m - length of the beam
J = 1.388625e-5 //kg.m^2 - moment of inertia of the ball
bk = 4.5; //kg.s^-1 odpor prostredia
// r - ball position coordinate, alpha - beam angle coordinate, theta - servo gear angle

//Tf
K2 = 383/3175; // gain
T = 0.3199414; // tau
D = 0;// transport delay

a = (5*bk)/(7*m);
tau = 0.3199414;
g = -9.81;
K1 = (-5/7)*g;
K2 = 388/3175;

theta_max = 90-127/2;
theta_min = -127/2;
Ts = 0.05
N = 20;

K = K1 * K2 * (1/a);
Tsum = 1/a + tau;
 
b = 0.707; // tlmenie
k0 = 1; // koeficient realneho posunutia
omega0 = 1.4; // pasmo priepustnosti
condition = (1/Tsum)*(1/(2*b+k0));
condition_platnost = omega0 > (1/Tsum)*(1/(2*b+k0));
// pre funkcnost je potrebne odkomentovat prislusnu cast 
// "zle" parametre
/*Kp = (omega0^2*(2*b*k0+1)*Tsum)/K;
Ki = (k0*omega0^3*Tsum)/K;
Kd = (Tsum*omega0*(2*b+k0)-1)/K;*/

// "dobre" parametre
/*Kp = 1;
Ki = 0.3;
Kd = 0.6;*/

Kp = 2;
Ki = 0.7;
Kd = 0.5;

