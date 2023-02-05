@echo OFF
mvn clean install -DskipTests=true

cd reward-calculator-naming-server
docker build . -t reward-calculator-naming-server:1.0 
docker tag  reward-calculator-naming-server:1.0 sureshdharisi123/reward-calculator-naming-server:1.0
docker push sureshdharisi123/reward-calculator-naming-server:1.0
cd ..

cd reward-points-store
docker build . -t reward-points-store:1.0 
docker tag  reward-points-store:1.0 sureshdharisi123/reward-points-store:1.0
docker push sureshdharisi123/reward-points-store:1.0
cd ..
cd customer-transactions
docker build . -t customer-transactions:1.0 
docker tag  customer-transactions:1.0 sureshdharisi123/customer-transactions:1.0
docker push sureshdharisi123/customer-transactions:1.0
cd ..

cd rewards-calculator
docker build . -t rewards-calculator:1.0 
docker tag  rewards-calculator:1.0 sureshdharisi123/rewards-calculator:1.0
docker push sureshdharisi123/rewards-calculator:1.0
cd ..