FROM alpine:latest
RUN echo '#                          +----+                          ' >> run.sh
RUN echo '#                          |    |                          ' >> run.sh
RUN echo '#                          +----+                          ' >> run.sh
RUN echo '#            +----+ +----+ +----+            ___           ' >> run.sh
RUN echo '#            |    | |    | |    |           /   \          ' >> run.sh
RUN echo '#            +----+ +----+ +----+          |     \         ' >> run.sh
RUN echo '#     +----+ +----+ +----+ +----+ +----+   |     |______   ' >> run.sh
RUN echo '#     |    | |    | |    | |    | |    |   \            \  ' >> run.sh
RUN echo '#     +----+ +----+ +----+ +----+ +----+  __\           /  ' >> run.sh
RUN echo '# .---------------------------------------       ______/   ' >> run.sh
RUN echo '# |                                             /          ' >> run.sh
RUN echo '# |                                            /           ' >> run.sh
RUN echo '# |                                           /            ' >> run.sh
RUN echo '# |                                          /             ' >> run.sh
RUN echo '#  \                                       _-              ' >> run.sh
RUN echo '#   \                                    _-                ' >> run.sh
RUN echo '#    -_                               __-                  ' >> run.sh
RUN echo '#      -_                        ___--                     ' >> run.sh
RUN echo '#        ---_________________----                          ' >> run.sh
RUN echo 'echo "# How to use:"' >> run.sh
RUN echo 'echo "#"' >> run.sh
RUN echo 'echo "# docker run --rm mametter/docker-quine > Dockerfile"' >> run.sh
RUN echo 'echo "# docker build -t my-docker-quine ."' >> run.sh
RUN echo 'echo "# docker run --rm my-docker-quine > Dockerfile2"' >> run.sh
RUN echo 'echo "# diff -s Dockerfile Dockerfile2"' >> run.sh
RUN echo 'echo' >> run.sh
RUN echo 'echo FROM alpine:latest' >> run.sh
RUN echo 'sed "s/.*/RUN echo $1\0$1 >> run.sh/g" run.sh' >> run.sh
RUN echo 'echo CMD sh run.sh \"$1\"' >> run.sh
CMD sh run.sh "'"
