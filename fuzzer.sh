for((i=1; i <= 1000; ++i))
do
	test="$i"".txt"
	output="$i""output.txt" 
	./main < $test > $output # running all the files through main
done
for((i=1; i<=10; ++i)) # 1-10 squares
do
	output="$i""output.txt"
	diff square.txt $output
	if [ $? -eq 1 ]
	then
		echo "$i"".txt"
	fi
done
for((i=11; i<=30; ++i)) # 11-30 rectangles
do
	output="$i""output.txt"
	diff rectangle.txt $output
	if [ $? -eq 1 ]
	then
		echo "$i"".txt"
	fi
done
for((i=31; i<=40; ++i)) # 31-40 rhombus
do
	output="$i""output.txt"
	diff rhombus.txt $output
	if [ $? -eq 1 ]
	then
		echo "$i"".txt"
	fi
done
for((i=41; i<=50; ++i)) # 41-50 trapezoids
do
	output="$i""output.txt"
	diff trapezoid.txt $output
	if [ $? -eq 1 ]
	then
		echo "$i"".txt"
	fi
done
for((i=51; i<=60; ++i)) # 51-60 kites
do
	output="$i""output.txt"
	diff kite.txt $output
	if [ $? -eq 1 ]
	then
		echo "$i"".txt"
	fi
done
for((i=61; i<=70; ++i)) # 61-70 quadrilaterals
do
	output="$i""output.txt"
	diff quadrilateral.txt $output
	if [ $? -eq 1 ]
	then
		echo "$i"".txt"
	fi
done