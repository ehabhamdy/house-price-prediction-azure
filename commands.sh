git clone git@github.com:ehabhamdy/house-price-prediction-azure.git
cd house-price-prediction-azure
git pull
make all
az webapp up -g houseprediction-rg -p house-prediction-service-plan -n house-prediction-app -l westeurope --sku B1 --runtime PYTHON:3.9