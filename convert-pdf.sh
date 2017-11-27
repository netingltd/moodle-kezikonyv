if [ "$#" -ne 1 ]; then
    echo "USAGE: convert.sh <file.adoc>"
    exit 1
fi

docker run --rm -v $PWD:/documents/ asciidoctor/docker-asciidoctor asciidoctor-pdf "$1"
