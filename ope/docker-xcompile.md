dockerのクロスコンパイル
===

* 対応可能一覧を確認
	```
	docker buildx ls
	```
* build環境の用意
	```
	docker buildx create --name <buildername>
	docker buildx use <buildername>
	docker buildx inspect --bootstrap
	```
* build
	```
	docker buildx build --platform linux/arm64,linux/amd64,linux/386,linux/s390x,linux/arm/v7,linux/arm/v6 -t <username>/<image name>:<version> --push .
	```
* build環境の削除
	```
	docker buildx use default
	docker buildx inspect --bootstrap
	docker buildx stop <buildername>
	docker buildx rm <buildername>
	```
