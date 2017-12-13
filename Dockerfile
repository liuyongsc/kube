images=(kube-proxy-amd64:v1.5.2 kube-discovery-amd64:1.0 kubedns-amd64:1.9 kube-scheduler-amd64:v1.5.2 kube-controller-manager-amd64:v1.5.2 kube-apiserver-amd64:v1.5.2 etcd-amd64:3.0.14-kubeadm kube-dnsmasq-amd64:1.4 exechealthz-amd64:1.2 pause-amd64:3.0 dnsmasq-metrics-amd64:1.0)
for imageName in ${images[@]} ; do
  docker pull  sailsxu/$imageName
  docker tag  sailsxu/$imageName gcr.io/google_containers/$imageName
done
# 监控
images=(heapster:canary heapster_grafana:v2.6.0 heapster_influxdb:v0.6)
for imageName in ${images[@]} ; do
  docker pull  sailsxu/$imageName
  docker tag  sailsxu/$imageName kubernetes/$imageName
done
# 日志
images=(elasticsearch:v2.4.1-1 fluentd-elasticsearch:1.22 kibana:v4.6.1-1)
for imageName in ${images[@]} ; do
  docker pull  sailsxu/$imageName
  docker tag  sailsxu/$imageName gcr.io/google_containers/$imageName
done
