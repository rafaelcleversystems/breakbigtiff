# breakbigtiff
Break big tiff in smaller images



Docker
-----------------------------
* Criar docker a partir do Dockerfile
docker build -t breakbigtiff .

* Ver imagens docker instaladas
docker image ls

* Executar ambiente docker
windows:
docker run -it --rm -v C:\Users\CleverSystems\OneDrive\Documentos\UNB_LI\chineseCaracter:/tmp -w /tmp chinesecaracter bash
linux:
docker run -it --rm -v /home/rafael/UNB/chineseCaracter:/tmp -w /tmp chinesecaracter bash