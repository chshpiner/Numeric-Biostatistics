function dydt = myfun4(t,y,k)
dydt = [y(2);-k*(1-cos(y(1)))];
end