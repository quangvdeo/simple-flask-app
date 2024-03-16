# How to:
1. Please build flask app in the parent directory and push image to the container registry.
2. Change the value of `image` in the `deployment.yaml` file to use the image URL pushed in step 1.
3. If you want to use TLS, please apply cert-manager using following command: 
`kubectl apply -f https://github.com/jetstack/cert-manager/releases/download/v1.5.3/cert-manager.crds.yaml`
    - Open file ingress.yaml, change the host value at `spec.rules` and `spec.tls` to the domain you want.
    - If tls not working, please use the right `secretName` 
4. Apply all `yaml` file.
