export http_proxy="http://http.proxy.fmr.com:8000"
export https_proxy="http://http.proxy.fmr.com:8000"
ufw disable
apt-get -y install docker.io
mkdir -p /etc/systemd/system/docker.service.d
echo '[Service]\nEnvironment="HTTP_PROXY=http://http.proxy.fmr.com:8000/" "HTTPS_PROXY=http://http.proxy.fmr.com:8000/"' > /etc/systemd/system/docker.service.d/http-proxy.conf
systemctl daemon-reload
systemctl restart docker
systemctl show --property=Environment docker
