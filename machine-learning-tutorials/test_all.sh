# Test each tutorial & remove testing script
bash distributed_classification_with_Horovod/test.sh
rm distributed_classification_with_Horovod/test.sh

# Test data_augmentation.ipynb
jupyter nbconvert --to notebook --inplace --execute data_augmentation.ipynb

# Remove itself
rm -- "$0"

