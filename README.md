# Recomendaciones generales
1. tener docker abierto en segundo plano
2. Abrir una terminal y escribir el comando: ` docker-compose up -d ` este descargará e iniciará todos los contenedores que necesite para ejecutarse.
3. Para verificar que esté activo: ` docker ps `.
4. Para entrar dentro del psql: ` docker exec -it biblioteca-db psql -U postgres -d biblioteca `.
5. Para verificar si hay tablas: ` \dt `.
6. Para salir del contenedor de psql: ` \q `.
7. Para apagar el docker al finalizar el trabajo, se debe realizar: ` docker-compose down `.
8. Si falla algo, ejecuta: ` docker-compose down -v ` y vuelves a ejecutar desde el paso 2. (el -v elimina también volúmenes persistentes).
