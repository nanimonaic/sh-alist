
if [ ! -f "alist" ];then
  #download alist lastest
  curl -L https://github.com/alist-org/alist/releases/latest/download/alist-linux-musl-amd64.tar.gz -o alist.tar.gz
  tar -zxvf alist.tar.gz
  rm -f alist.tar.gz
  mv alist-linux-musl-amd64 alist
  chmod 777 alist
  
  #download config(listen on port 3000)
  mkdir data
  cd data
  wget https://github.com/gityzon/sh-alist/raw/main/config.json
fi
#启动alist
./alist -docker
