for i in "webhook" "controller";
do
        docker pull registry.cn-hangzhou.aliyuncs.com/wym42/tektoncd:$i-v0.10.0
        docker tag registry.cn-hangzhou.aliyuncs.com/wym42/tektoncd:$i-v0.10.0 registry.vivo.bj04.xyz/romai_dev/tektoncd/pipeline/cmd/$i:v0.10.0
        docker push registry.vivo.bj04.xyz/romai_dev/tektoncd/pipeline/cmd/$i:v0.10.0
done

for i in "creds-init" "entrypoint" "git-init" "gcs-fetcher";
do
        docker pull registry.cn-hangzhou.aliyuncs.com/wym42/tektoncd2:$i-v0.10.0
        docker tag registry.cn-hangzhou.aliyuncs.com/wym42/tektoncd2:$i-v0.10.0 registry.vivo.bj04.xyz/romai_dev/tektoncd/pipeline/cmd/$i:v0.10.0
        docker push registry.vivo.bj04.xyz/romai_dev/tektoncd/pipeline/cmd/$i:v0.10.0
done

for i in "pullrequest-init" "kubeconfigwriter" "imagedigestexporter";
do
        docker pull registry.cn-hangzhou.aliyuncs.com/wym42/tektoncd3:$i-v0.10.0
        docker tag registry.cn-hangzhou.aliyuncs.com/wym42/tektoncd3:$i-v0.10.0 registry.vivo.bj04.xyz/romai_dev/tektoncd/pipeline/cmd/$i:v0.10.0
        docker push registry.vivo.bj04.xyz/romai_dev/tektoncd/pipeline/cmd/$i:v0.10.0
done

docker pull registry.cn-hangzhou.aliyuncs.com/wym42/tektoncd:dashboard-v0.5.1
docker tag  registry.cn-hangzhou.aliyuncs.com/wym42/tektoncd:dashboard-v0.5.1 registry.vivo.bj04.xyz/romai_dev/tektoncd/dashboard/cmd/dashboard:v0.5.1
docker push registry.vivo.bj04.xyz/romai_dev/tektoncd/dashboard/cmd/dashboard:v0.5.1