// NB05 GI descriptive Student-t model of pre-calculated delta_T.
// The sampling-day location is distinct from mechanistic transfer rates.
data {
  int<lower=1> N;
  int<lower=1> K;
  int<lower=1> G;
  int<lower=1> A;
  array[N] int<lower=1,upper=K> cell;
  array[N] int<lower=1,upper=G> group;
  array[N] int<lower=1,upper=A> animal;
  vector[N] y;
}
parameters {
  vector[K] mu;
  vector<lower=0>[G] sigma;
  real<lower=0> tau;
  vector[A] z_animal;
}
transformed parameters {
  vector[A] b_animal = tau * z_animal;
}
model {
  mu ~ normal(0.5, 0.75);
  sigma ~ normal(0, 0.5); // half-Normal by lower bound
  tau ~ normal(0, 0.25);
  z_animal ~ std_normal();
  for (n in 1:N)
    y[n] ~ student_t(4, mu[cell[n]] + b_animal[animal[n]], sigma[group[n]]);
}
generated quantities {
  array[N] real y_rep;
  for (n in 1:N)
    y_rep[n] = student_t_rng(4, mu[cell[n]] + b_animal[animal[n]], sigma[group[n]]);
}
