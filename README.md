```sh
docker run \
        --rm \
        --net=host \
        -v $PWD/output:/output \
        -v $PWD/schemaspy.properties:/schemaspy.properties \
        schemaspy/schemaspy:snapshot
```
