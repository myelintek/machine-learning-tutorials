ARG VERSION=dev
FROM myelintek/python-gpu:$VERSION
WORKDIR /mlsteam/lab
RUN if [ -d "machine-learning-tutorials" ]; then rm -r "machine-learning-tutorials"; fi
COPY machine-learning-tutorials machine-learning-tutorials
RUN if [ $VERSION != "dev"]; then bash test_all.sh; fi