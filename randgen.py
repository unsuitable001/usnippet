import random

class AbsurdRangeError(Exception):
    """You have put a greater/equal value for starting point than ending point"""
    pass

def randgen(qstr="",tp="int",rngs=0,rnge=0):
    """
    Four args are reqd.
    1.  The Main string in correct format
    2.  The type of the randomly generated object - defaults to int
    3.  The starting range
    4.  The ending range

    #Format of the string#

    <your_non-changing-string>`<number-of-random-object>`<your_remaining_changing-string>

    #Example Formatted String

    "I have `5` apples".

    #Usage Example

    a = randgen("I have `5` apples","int",1,8)
    print(a)
    print(type(a))

    ##OUTPUT
    >>>I have a 47 apples
    >>>class 'str'

    """
    if(rngs >= rnge):
        raise AbsurdRangeError(AbsurdRangeError.__doc__)
    if(qstr == ""):
        raise ValueError
    arr = str(qstr)
    arr = arr.split("`")
    arrLen = len(arr)
    for i in range(1,arrLen,2):
        x = int(arr[i])
        print(tp.lower())
        if(tp.lower() == "string"):
            z = 0
            nstr = ""
            while(z < x):
                nstr = nstr + chr(random.randint(rngs,rnge))
                z +=1
        else:
            z = 0
            nstr = ""
            while(z < x):
                nstr = nstr + str(random.randint(rngs,rnge))
                z +=1
        arr[i] = nstr
    return (''.join(arr))



a = randgen("87`8`","int",0,1)
print(a)