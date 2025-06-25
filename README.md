<p align="center">
  <a href="#english">English</a> • 
  <a href="#spanish">Español</a>
</p>

# <a id="spanish"></a> Spanish
## Sobre el proyecto
### Description
Se redactará todo el proyecto que haya.
### Puesta a punto
1. tener docker abierto en segundo plano
2. Abrir una terminal y escribir el comando: ` docker-compose up -d ` este descargará e iniciará todos los contenedores que necesite para ejecutarse.
3. Para verificar que esté activo: ` docker ps `.
4. Para entrar dentro del psql: ` docker exec -it biblioteca-db psql -U postgres -d biblioteca `.
5. Para verificar si hay tablas: ` \dt `.
6. Para salir del contenedor de psql: ` \q `.
7. Para apagar el docker al finalizar el trabajo, se debe realizar: ` docker-compose down `.
8. Si falla algo, ejecuta: ` docker-compose down -v ` y vuelves a ejecutar desde el paso 2. (el -v elimina también volúmenes persistentes).


# <a id="english"></a> English

## About project
### Description
here u got all the description.
### Getting Started
1. Must have docker initialize in background process.
2. Open terminal and paste: ` docker-compose up -d ` that would download and initialize all containers that needs to execute.
3. To verify that is active, we paste in terminal: ` docker ps `.
4. To open psql: ` docker exec -it biblioteca-db psql -U postgres -d biblioteca `.
5. Verify all tables in psql: ` \dt `.
6. To quit we use: ` \q `.
7. to shut down the containers we should paste in terminal: ` docker-compose down `.
8. If everything doesn't work properly we should execute: ` docker-compose down -v ` and begin again with step 2. (-v drops all persisted volumes).