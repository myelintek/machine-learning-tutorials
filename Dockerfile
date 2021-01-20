FROM myelintek/python-gpu:tf-1.15.4-v15
WORKDIR /mlsteam/lab
RUN if [ -d "machine-learning-tutorials" ]; then rm -r "machine-learning-tutorials"; fi
COPY machine-learning-tutorials machine-learning-tutorials