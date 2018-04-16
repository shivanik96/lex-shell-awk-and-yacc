#Selection Sort in awk
awk 'BEGIN {
	printf "Enter the Size : "
	getline size
	printf "\n"
	for (i=0;i<size;i++)
	{
		printf "Enter the value : "
		getline a[i]
	}
	for (i=0;i<size;i++)
	{
		for (j=i;j>=0;j--)
		{
			if (a[j] < a[j-1])
			{
				temp=a[j]
				a[j]=a[j-1]
				a[j-1]=temp
			}
		}
	}
	printf "\n"
	printf "Sorted array is : "
	for (i=0;i<size;i++)
	{
		printf a[i]
		printf " "
	}
	printf "\n"
}'
