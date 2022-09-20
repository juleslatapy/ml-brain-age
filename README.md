# brain_age

Predict age from brain grey matter (regression).
Aging is associated with is grey matter (GM) atrophy, each year, an adult lose
0.1% of GM. We will try to learn a predictor of the chronological age (true age)
using GM measurements on the brain on a population of healthy control participants.

Such a predictor provides the expected **brain age** of a subject. Deviation from
this expected brain age indicates acceleration or slowdown of the aging process
which may be associated with a pathological neurobiological process or protective factor of aging.


## 1 first use
- create virtual env
> make create_env


- activate virtual env
> make activate_env

- install dependancies
> make install

- package APP
> make create_docker_env:

- start the APP
> make start_app