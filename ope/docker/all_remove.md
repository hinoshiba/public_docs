docker 全部削除系
===

* 全てのコンテナ削除
	* `docker ps -aq | xargs docker rm`
* 全てのイメージ削除
	* `docker images -aq | xargs docker rmi`
