#Configure project you want to deploy to
export PROJECT_ID=""
cd ~/repos/gcp_analytics_demo/core-tf/scripts
source 1-config.sh

#Run Terraform for organization policy edits and enabling Google APIs
cd ~/repos/gcp_analytics_demo/foundations-tf
terraform init
terraform apply \
  -var="project_id=${PROJECT_ID}" \
  -auto-approve

#Set Terraform variables
cd ~/repos/gcp_analytics_demo/core-tf/terraform
PROJECT_NBR=`gcloud projects describe $PROJECT_ID | grep projectNumber | cut -d':' -f2 |  tr -d "'" | xargs`
GCP_ACCOUNT_NAME=`gcloud auth list --filter=status:ACTIVE --format="value(account)"`
GCP_REGION="us-central1"
CDF_NAME="cdf1"
CDF_VERSION="BASIC"
CDF_RELEASE="6.10.1"
CLOUD_COMPOSER_IMAGE_VERSION="composer-2.8.5-airflow-2.7.3"

#Run the Terraform for provisioning the rest of the environment
terraform init
terraform apply \
  -var="project_id=${PROJECT_ID}" \
  -var="project_number=${PROJECT_NBR}" \
  -var="gcp_account_name=${GCP_ACCOUNT_NAME}" \
  -var="gcp_region=${GCP_REGION}" \
  -var="cdf_name=${CDF_NAME}" \
  -var="cdf_version=${CDF_VERSION}" \
  -var="cdf_release=${CDF_RELEASE}" \
  -var="cloud_composer_image_version=${CLOUD_COMPOSER_IMAGE_VERSION}" \
  -auto-approve

#Download AdventureWorks sample database
cd ~/repos/gcp_analytics_demo/core-tf/
mkdir database
cd ~/repos/gcp_analytics_demo/core-tf/database
curl -LJO https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorks2022.bak
curl -LJO https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorksDW2022.bak

#Import sample database to Cloud SQL
cd ~/repos/gcp_analytics_demo/core-tf/scripts
source 2-cloudsql.sh

#Modify compute profile
cd ~/repos/gcp_analytics_demo/core-tf/profiles
sed -i "s/<PROJECT_ID>/$PROJECT_ID/g" test-computeprofile.json

#Modify pipeline
cd ~/repos/gcp_analytics_demo/core-tf/terraform
IP=$(terraform output -json | jq -r '.sql_proxy_ip.value')

cd ~/repos/gcp_analytics_demo/core-tf/pipelines
sed -i "s/<SQL-PROXY-IP>/$IP/g" test-cdap-data-pipeline.json

#Deploy
cd ~/repos/gcp_analytics_demo/core-tf/scripts
source 3-datafusion.sh