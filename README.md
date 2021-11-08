# Getting started

## Requirements

- [kubectl](https://kubernetes.io/docs/tasks/tools/)
- [KinD](https://kind.sigs.k8s.io/)
- [task](https://taskfile.dev/)
- [Kubeval](https://github.com/instrumenta/kubeval) (**Optional**)
- [kubent](https://github.com/doitintl/kube-no-trouble) (**Optional**)

- Replace the default values at ` manifests/resources/backup-s3.yaml` with your AWS credentials

Then run:

```bash
task
```

This will create the default KinD cluster and applies all the resources, including the Kustomize overlaying. To delete the namespace, just run:

```bash
task revert
```

To show resources, type:
```
task list # or task list:backup
```

You can redeploy resources using:

```bash
task kind:deploy
```

And to clean all the resources used by KinD:

```bash
task clean
```