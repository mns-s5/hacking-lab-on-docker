This project is a local hacking lab based on docker cotainers
it contains a script launch_lab.sh that automates and make you choose
what u want to H4ck
if u runing on windows (time to delete and move to linux) or any other os rather than kali or os pentest dedicated systems
u can also use option to run arch or kali insode a docker container:


#Requirements:
Docker 
Docker-compose
bash

To start : 
      1 make sure u have docker and you have active status 
       on linux : systemctl start docker 
      
      2 clone the repo 
      3 cd to the repo
      4 Run chmod +x launch_lab.sh  tip : make sure to use the right privileges : simply sudo or create a new user(DockerUser) if u advanced
      5 sudo ./launch_lab.sh and choose what u like to begin with you can choose multiple ones by letting spaces between the options
       exenple : 1 5 (you run kali and dvwa)
       
# for kali and arch linux (minimalistic)
      to check containers_id in docker run command : sudo docker ps /u find container_id on the left just choose kali or ach and copy the container_id
      and run : sudo docker exec -it container_id bash
      you gonna execute kali or arch command in the container
      
      
#for metasploitable 
 if ssh service not runing : 
      copy metasploitable2 container_id
      now run  : sudo docker exec -it container_id bash
      after having bash run : /etc/init.d/sshd /the ssh service gonna start
      and begin the banging process
# for owasp juice and DVWA : 
they runing on ports : 3000 and 8080 
       
      
       
       
       
