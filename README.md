# Docker MySQL 
[![Build Status](https://travis-ci.com/b1412/docker-mysql.svg?branch=master)](https://travis-ci.com/b1412/docker-mysql)
## Run your query

```bash
 docker exec docker-mysql mysql -uroot -pcannon -e 'SELECT * from cannon.branch' 
 docker exec docker-mysql mysql -uroot -pcannon -e 'SELECT * from cannon.branch' 
```
or 
```bash
 docker exec -it docker-mysql bash 
 mysql -uroot -pcannon
 mysql -uroot -proot
```

