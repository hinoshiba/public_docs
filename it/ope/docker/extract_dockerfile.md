imageからdockerfile復元
===

1. dockerfileを復元する
2. dockerfileに含めるファイルをcontainerからcpする

## 1. dockerfileを復元する

```
docker history centos:7 --no-trunc --format '{{ json .CreatedBy }}' | tac
```

## 2. dockerfileに含めるファイルをcontainerからcpする

1. `1. dockerfileを復元する` から、ADD 等の追加されているものを確認する
1. imageの生成
```
docker create <imange name>
```
2. idの確認
```
docker ps -a
```
3. copy
```
docker cp <container_id>:<filepath> ./
```
4. 削除
```
docker rm <container_id>
```
