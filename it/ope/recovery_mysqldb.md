mysql復旧/保存方法
===

### 保存

```
mysqldump --single-transaction -u <user> -p <dbname> > mysql.dump
```

### 復旧

1. DBは、先に存在させる
2. import
```
mysql -u <user> -p <dbname> < mysql.dump
```


