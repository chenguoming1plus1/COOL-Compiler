class A
{
    afoo:Int <- 7;

    double(num:Int):Int
    {
        num * 2
    };
};

class B inherits A
{
    dfoo:Int <- 11;

    multiply(lhs:Int, rhs:Int):Int
    {
        lhs * rhs
    };
};

class C inherits A
{
    cfoo:Int <- 10;

    double(num:Int):Int
    {
        num * 3
    };

    divide(lhs:Int, rhs:Int):Int
    {
        lhs / rhs
    };
};

class Main inherits C
{
    isTrue:Bool <- isTrue;
    language:String <- "COOL";
    printer:IO <- new IO;

    main():Object
    {
        {
            let x:Int <- 77, y:Int <- 11, z:String in
                if x < y then
                    "Yes"
                else
                    "No"
                fi;

            let num:Int, num2:Int, doubler:A <- new A in
                num <- doubler.double(cfoo);

            let num:Int, doubler:A <- new A in
                {
                    doubler <- new B;
                    num <- doubler.double(afoo);
                    doubler <- new C;
                };

            {
                not isTrue;
                1 / 2 * (5 + 7) - 100 + 9 * 0;
                5 < 3;
                10 = 10;
                3 <= 7;
                ~99;
                isvoid(language);
            };

            

            while isTrue 
            loop
                false
            pool;

            let lhs:Int <- 17, rhs:Int <- 1, divider:C <- new C in
                lhs <- divider@A.double(rhs);

            if isTrue then
                "Yes"
            else
                "No"
            fi;

            case language.length() of 
                alpha:Int => printer;
                bravo:String=> "hi";
                charlie:Object=> 5;
            esac;
        }
    };
};

            
                    
