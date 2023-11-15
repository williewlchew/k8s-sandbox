# search for wordpress chart
helm search hub bitnami wordpress -o yaml > temp.yaml
BITNAMI_REPO_URL=$(yq e '.[0].repository.url' temp.yaml)
rm temp.yaml
echo $BITNAMI_REPO_URL

# add chart to local repo
helm repo add bitnami $BITNAMI_REPO_URL

# validate
helm repo list
helm search repo bitnami
helm show chart bitnami/wordpress

