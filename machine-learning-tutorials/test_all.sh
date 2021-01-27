# Test each tutorial & remove testing script
bash distributed_classification_with_Horovod/test.sh
rm distributed_classification_with_Horovod/test.sh

# Test notebooks
jupyter nbconvert --to notebook --inplace --execute data-augmentation.ipynb
jupyter nbconvert --to notebook --inplace --execute k-fold-cross-validation.ipynb

# Remove itself
rm -- "$0"

