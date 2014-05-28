k = 4.604;
n=10; m=5;
sigma_x=1;
sigma_y=runif(10,0.5,10);

Type1 = 0;

for(j in 1:10000){
  for(i in 1:10){
    x = rnorm(n,0,sigma_x);
    y = rnorm(m,0,sigma_y[i]);
    x.bar = mean(x); y.bar = mean(y);
    s_x = sd(x); s_y = sd(y);
    T_stat = abs(x.bar-y.bar)/sqrt(s_x^2/n+s_y^2/m);
    Type1 = Type1 + as.integer(T_stat > k);
  }
}

Type1/100000
