# ssh-client-in-k8s
Extremely simple container with only 1 purpose - to act as a bastion / jump host.
Some environments are isolated and the only access personnel has is to Kubernetes.
With this container, you can connect to a pod and jump to another host using SSH.

## Usage
```bash
kubectl run mypod -i --rm --image=jurikolo/ssh-client-in-k8s:0.0.1
```

To connect to a server, enter following command:
```bash
ssh -tt -o StrictHostKeyChecking=no -i /root/.ssh/private_key_rsa root@1.2.3.4
```