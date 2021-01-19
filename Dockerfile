FROM myelintek/python-gpu:tf-2.3.1-v15
WORKDIR /mlsteam/lab
RUN if [ -d "machine-learning-tutorials" ]; then rm -r "machine-learning-tutorials"; fi
COPY machine-learning-tutorials machine-learning-tutorials