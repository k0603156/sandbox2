docker build -t dev_node_sample -f Dockerfile .

docker rm -f  $(docker ps -a | grep "dev_node_sample_container" | awk "{print \$1}")

docker run -itd --name dev_node_sample_container -p 3000:3000 dev_node_sample

docker rmi -f $(docker images | grep "<none" | awk "{print \$3}")