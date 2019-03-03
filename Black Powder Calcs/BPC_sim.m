press_i = 1000; %psig
L_i = 6; %in
gamma = 1.4; 
D = 6; %in
A = (pi / 4) * D^2;
V_i = A * L_i;
m_lbm = 13;
m = m_lbm / 32.174; %slugs

C = press_i * V_i^gamma;

delta_t = 0.1; %s
t = 0;
L_max = 24;

L = L_i;
vel = 0;

F_drag = 10;
while 1
    v_current = L * A;
    P_current = max(0, C / (v_current^gamma));
    F = P_current / A - F_drag;
    a = F / m;
    vel = vel + a * delta_t * 12;
    L = L + vel * delta_t;
    if L > L_max
        break
    end
    t = t + delta_t;
end
