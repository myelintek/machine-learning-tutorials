FROM cr.myelintek.com/myelintek/python-gpu:dev

ARG VERSION
ENV VERSION ${VERSION:-dev}

WORKDIR /mlsteam/lab

RUN if [ -d "machine-learning-tutorials" ]; then rm -r "machine-learning-tutorials"; fi
COPY machine-learning-tutorials /mlsteam/lab/machine-learning-tutorials
RUN if [ $VERSION == "dev" ]; \
    then cd machine-learning-tutorials && bash test_all.sh; \
    else rm /mlsteam/lab/machine-learning-tutorials/test_all.sh && \
        find . -type f -name "test.sh" -delete; \
    fi
