# Modelling Overdispersion in Panel Data

This repo contains `R` code for a case of overdispersion which is often present in panel data. It is largely based on a section of this course: https://albertococacabrero.wordpress.com/teaching/lectures/statistical-learning-in-practice-lent-2021/. The analysis was done in a Jupyter notebook, which was deployed in a Docker container as follows:
```
git clone git@github.com:awh35/overdispersion_modelling.git
cd overdispersion_modelling
docker build -t r-env .
docker run -it --rm -p 8888:8888 -v "${PWD}":/home/jovyan/work -e JUPYTER_ENABLE_LAB=yes --env-file .env r-env 
```
