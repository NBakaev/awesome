
### cleanup evicted k8s pods

```bash
kubectl get po --all-namespaces --field-selector 'status.phase!=Running' -o json | kubectl delete -f -
```

### get docker process by pid

```bash
PID=18303
docker ps -q | xargs docker inspect --format '{{.State.Pid}}, {{.ID}}' | grep "^${PID},"
```

### Cleanup old jurnald logs
```bash
journalctl --vacuum-time=2d
```

### Cleanup docker json logger logs
```bash
truncate -s 0 /var/lib/docker/containers/*/*-json.log
```

### Find large folder
(exclude /mnt folder)

```bash
ncdu --exclude /mnt
```