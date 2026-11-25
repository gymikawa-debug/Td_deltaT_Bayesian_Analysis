// NB05 PE descriptive Student-t model of pre-calculated delta_T.
// Separate terminal animals; time-matched inference is possible only at 6 h.
data {
  int<lower=1> N;
  int<lower=1> K;
  int<lower=1> G;
  array[N] int<lower=1,upper=K> cell;
  array[N] int<lower=1,upper=G> group;
  vector[N] y;
}
parameters {
  vector[K] mu;
  vector<lower=0>[G] sigma;
}
model {
  mu ~ normal(0.5, 0.75);
  sigma ~ normal(0, 0.5);
  for (n in 1:N)
    y[n] ~ student_t(4, mu[cell[n]], sigma[group[n]]);
}
generated quantities {
  array[N] real y_rep;
  for (n in 1:N)
    y_rep[n] = student_t_rng(4, mu[cell[n]], sigma[group[n]]);
}
