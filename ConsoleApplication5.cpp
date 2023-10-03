#include <iostream>
int main()
{
    int min1,min2,a,b,c,d,max,x;
    std::cout << "Vvedite pervyu paru chisel\n";
    std::cin >> a;
    std::cin >> b;
    std::cout << "Vvedite vtoruy paru chisel\n";
    std::cin >> c;
    std::cin >> d;
    if (a<b)
    {
        min1=a;
    }
    else
    {
        min1=b;
        
    }
    if (c<d)
    {
        min2=c;
    }
    else
    {
        min2=d;
    }
    if (min1>min2)
    {
        max=min1;
    }
    else
    {
        max=min2;
    }
    std::cout <<"naibolshee iz dvuh naimenshih v parah chisel= "<<max ;
    std::cout << "\n One more? (1-yes 0-no)";
    std::cin >> x;
    if (x == 1)
    {
        main();
    }
    return 0;
}
