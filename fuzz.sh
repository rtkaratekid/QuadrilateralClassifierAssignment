./FuzzTestScript.py
for((i=1; i<=1000; ++i))
do
	input="$i"".txt"
	output="$i""output.txt"
	./main<$input>$output
done

echo "diffing squares"
for((i=1;i<=10;++i))
do
	expected="square.txt"
	actual="$i""output.txt"
	diff $expected $actual
	if [ $? != 0 ]; then
		echo $actual
		echo "T H E R E  H A S  B E E N  A N  E R R O R"
	fi
done
echo "diffing rectangles"
for((i=11;i<=30;++i))
do
	expected="rectangle.txt"
	actual="$i""output.txt"
	diff $expected $actual
	if [ $? != 0 ];
	then
		echo $actual
		echo "T H E R E  H A S  B E E N  A N  E R R O R"
	fi
done
echo "diffing rhombi"
for((i=31;i<=40;++i))
do
	expected="rhombus.txt"
	actual="$i""output.txt"
	diff $expected $actual
	if [ $? != 0 ];
	then
		echo $actual
		echo "T H E R E  H A S  B E E N  A N  E R R O R"
	fi
done
echo "diffing trapezoids"
for((i=41;i<=50;++i))
do
	expected="trapezoid.txt"
	actual="$i""output.txt"
	diff $expected $actual
	if [ $? != 0 ];
	then
		echo $actual
		echo "T H E R E  H A S  B E E N  A N  E R R O R"
	fi
done
echo "diffing kites"
for((i=51;i<=60;++i))
do
	expected="kite.txt"
	actual="$i""output.txt"
	diff $expected $actual
	if [ $? != 0 ];
	then
		echo $actual
		echo "T H E R E  H A S  B E E N  A N  E R R O R"
	fi
done
echo "diffing quadrilaterals"
for((i=61;i<=70;++i))
do
	expected="quadrilateral.txt"
	actual="$i""output.txt"
	diff $expected $actual
	if [ $? != 0 ];
	then
		echo $actual
		echo "T H E R E  H A S  B E E N  A N  E R R O R"
	fi
done