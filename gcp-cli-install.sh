#!/bin/bash
# Step 1:
sudo tee -a /etc/yum.repos.d/google-cloud-sdk.repo << EOM
[google-cloud-sdk]
name=Google Cloud SDK
baseurl=https://packages.cloud.google.com/yum/repos/cloud-sdk-el7-x86_64
enabled=1
gpgcheck=1
repo_gpgcheck=0
gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg
       https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
EOM

# Step 2:
sudo yum install google-cloud-sdk -y


# Step 3: (sign in)
# gcloud auth login
# gcloud auth application-default login

# Step 4: (set projectid)
# gcloud projects list
# gcloud config set project 

# Step 5: login to cluster after it's created  (your cluster name )                               (your prokect id)
# gcloud container clusters get-credentials devopsteam-gke-cluster --region us-central1 --project gke-cluster-333223