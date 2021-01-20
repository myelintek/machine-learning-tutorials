# Test each tutorial & remove testing script
bash distributed_classification_with_Horovod/test.sh
rm distributed_classification_with_Horovod/test.sh

# Remove itself
rm -- "$0"

