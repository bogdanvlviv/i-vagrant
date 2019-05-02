#!/bin/bash

K8S_TOOLS_VERSION=$1

curl --output kubectl --silent --location "https://amazon-eks.s3-us-west-2.amazonaws.com/${K8S_TOOLS_VERSION}/2019-03-27/bin/linux/amd64/kubectl"
chmod +x ./kubectl
mv kubectl /usr/local/bin
curl --output aws-iam-authenticator --silent --location "https://amazon-eks.s3-us-west-2.amazonaws.com/${K8S_TOOLS_VERSION}/2019-03-27/bin/linux/amd64/aws-iam-authenticator"
chmod +x ./aws-iam-authenticator
mv aws-iam-authenticator /usr/local/bin
curl --silent --location "https://github.com/weaveworks/eksctl/releases/download/latest_release/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
mv /tmp/eksctl /usr/local/bin