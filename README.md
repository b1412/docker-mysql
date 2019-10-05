# Docker MySQL 
[![Build Status](https://travis-ci.com/b1412/docker-mysql.svg?branch=master)](https://travis-ci.com/b1412/docker-mysql)
## Run your query

```bash
 docker exec cannon-mysql mysql -uroot -pcannon -e 'SELECT * from cannon.branch' 
```
or 
```bash
 docker exec -it cannon-mysql bash 
 mysql -uroot -pcannon
```

