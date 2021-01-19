FROM myelintek/python-gpu:tf-2.3.1-v15
WORKDIR /mlsteam/lab/machine-learning-tutorials
RUN rm -r *
COPY machine-learning-tutorials .
