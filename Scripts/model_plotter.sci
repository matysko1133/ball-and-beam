t = x_mer.time;
x_ref = x_ref.values;
x_mer = x_mer.values;
u_satur = u_satur.values;
u_nonsatur = u_nonsatur.values;
e = e.values;

figure(1);
subplot(2, 1, 1);
title("Časový priebeh akčných zásahov")
plot(t, u_nonsatur, 'g');
plot(t, u_satur, 'b');
h1 = legend("u_nonsatur", "u_satur");
h1.fill_mode = "on";
h1.background = color("white");
xlabel("Čas [s]");
ylabel("Akčný zásah [°]");
xgrid();
h = gca();
h.data_bounds = [0, 30, -100, 100];
subplot(2, 1, 2);
title("Časový priebeh žiadanej a meranej polohy")
plot(t, x_ref, 'r');
plot(t, x_mer, 'b');
xgrid();
h2 = gca();
h2.data_bounds = [0, 30, -1, 260];
legend("x_ref", "x_mer");
xlabel("Čas [s]");
ylabel("Poloha guľôčky [mm]");
figure(2);
title("Časový priebeh regulačnej odchýlky")
plot(t, e, 'black');
xlabel("Čas [s]");
ylabel("Regulačná odchýlka [mm]");
xgrid();
