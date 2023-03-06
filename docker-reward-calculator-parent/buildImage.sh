set echo OFF
mvn clean install -DskipTests=true

echo pushing reward-calculator-naming-server is started
cd reward-calculator-naming-server
docker build . -t reward-calculator-naming-server:1.0 
docker tag  reward-calculator-naming-server:1.0 sureshdharisi123/reward-calculator-naming-server:latest
docker push sureshdharisi123/reward-calculator-naming-server:latest
cd ..
echo pushing reward-calculator-naming-server is completed

cd reward-points-store
echo pushing reward-points-store is started
docker build . -t reward-points-store:1.0 
docker tag  reward-points-store:1.0 sureshdharisi123/reward-points-store:latest
docker push sureshdharisi123/reward-points-store:latest
cd ..
echo pushing reward-points-store is completed

cd customer-transactions
echo pushing customer-transactions is started
docker build . -t customer-transactions:1.0 
docker tag  customer-transactions:1.0 sureshdharisi123/customer-transactions:latest
docker push sureshdharisi123/customer-transactions:latest
cd ..
echo pushing customer-transactions is completed

echo pushing rewards-calculator is started
cd rewards-calculator
docker build . -t rewards-calculator:1.0 
docker tag  rewards-calculator:1.0 sureshdharisi123/rewards-calculator:latest
docker push sureshdharisi123/rewards-calculator:latest
cd ..
echo pushing rewards-calculator is completed