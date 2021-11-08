#!/bin/bash
echo -e "\nWaiting for all the pods to be properly initialized..."
kubecolor get pods --all-namespaces