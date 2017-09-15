docker build -t ft-rails:5.0.2-on-build .
docker build -t ex02 .
docker run -d --name salutrails -p 3000:3000 ex02
