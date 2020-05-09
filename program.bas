c = "black"
lwidth = 4

rem draw 0-9 across the top 5 rows
digit = 0
gosub 999
digit = 1
gosub 1000
digit = 2
gosub 2000
digit = 3
gosub 3000
digit = 4
gosub 4000
digit = 5
gosub 5000
digit = 6
gosub 6000
digit = 7
gosub 7000
digit = 8
gosub 8000
digit = 9
gosub 9000
goto 100000

999 rem draw 0
x = 0 + digit * lwidth
y = 0
gosub 10000
gosub 20000
y = 4
gosub 20000
y = 0
x = 2 + digit * lwidth
gosub 10000
return

1000 rem draw 1
x = 1 + digit * lwidth
y = 0
gosub 10000
return

2000 rem draw 2
x = digit * lwidth
y = 0
gosub 20000
y = 2
gosub 20000
y = 4
gosub 20000
plot x + 2, 1, c
plot x, 3, c
return

3000 rem draw 3
x = 2 + digit * lwidth
y = 0
gosub 10000
x = digit * lwidth
gosub 20000
y = 2
gosub 20000
y = 4
gosub 20000
return

4000 rem draw 4
x = 2 + digit * lwidth
y = 0
gosub 10000
x = digit * lwidth
y = 2
gosub 20000
plot x, 0, c
plot x, 1, c
return

5000 rem draw 5
x = digit * lwidth
y = 0
gosub 20000
y = 2
gosub 20000
y = 4
gosub 20000
plot x, 1, c
plot x + 2, 3, c
return

6000 rem draw 6
x = digit * lwidth
y = 2
gosub 20000
y = 4
gosub 20000
x = digit * lwidth
y = 0
gosub 10000
plot 2 + digit * lwidth, 3, c
return

7000 rem draw 7
x = 0 + digit * lwidth
y = 0
gosub 20000
x = 2 + digit * lwidth
goto 10000

8000 rem draw 8
x = 0 + digit * lwidth
y = 0
gosub 10000
gosub 20000
y = 2
gosub 20000
y = 4
gosub 20000
x = 2 + digit * lwidth
y = 0
gosub 10000
goto 10000

9000 rem draw 9
x = 0 + digit * lwidth
y = 0
gosub 20000
y = 2
gosub 20000
y = 0
x = 2 + digit * lwidth
plot digit * lwidth, 1, c
goto 10000

10000 rem draw vertical line
plot x, y, c 
plot x, y + 1, c 
plot x, y + 2, c 
plot x, y + 3, c 
plot x, y + 4, c 
return

20000 rem draw horizontal line
plot x, y, c 
plot x + 1, y, c 
plot x + 2, y, c 
return

100000 rem done
print "done"