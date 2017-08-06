




## Mistakes I made

1. To compare Strings, use `.equals()` function. Not `==`
```
String s = "R";
s == "R" // return false
s.equals("R"); // return true
```

2. To compare Double variables. Do not use `==`
```
Math.abs(a-b) < 0.0000001
```

3. 

## Fundamental knowledge



### Strings
* Character encoding:
  * ASCII (Pronunciation: ASS-KEY): 128 (0 -> 127)
  * Extended ASCII : 256 (0 -> 255)
  * Unicode: UTF-8:  very long

### Arrays  
* Copy elements in Array [a,b)  
  `Arrays.copyOfRange(arr,a,b)`


### Lists   
* Assign value to List's elements  
    Use `list.set(index, value)`
