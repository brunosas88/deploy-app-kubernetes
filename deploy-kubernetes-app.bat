echo "Criar imagens..."
docker build -t brunosas88/app-php-backend:1.0 backend/.
docker build -t brunosas88/app-php-database:1.0 database/.

echo "Realizar push das imagens..."
docker push brunosas88/app-php-backend:1.0
docker push brunosas88/app-php-database:1.0

echo "Criar serviços de conexão e load balancer..."
kubectl apply -f ./services-lb-con.yml

echo "Criar deployments..."
kubectl apply -f ./deploy_pvc_db_app.yml

