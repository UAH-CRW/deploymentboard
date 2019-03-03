function N =  BPC(P, V)
% Note: Tube Length is length of tube assuming internal masses are shoved
%tightly far into the tube. The only open volume exists between the charge
%well and these masses.
%P: target pressure (psi)
%V: enclosed volume (in^3)
%N: black powder charge size (g)

R = 266;            %in-lbf/lbm
T = 3307;           %R

N = P*V/R/T*454;     %grams
%fprintf('\n%2.3f grams of black powder required.\n\n',N)
end
