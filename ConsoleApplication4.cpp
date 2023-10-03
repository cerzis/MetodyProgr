#include <iostream>

int main()
{
    int a, b, x;
    std::cout << "Vvedite chisla a,b: \n";
    std::cin >> a;
    std::cin >> b;
    if (a > b)
    {
        std::cout << "a > b" ;
    }
    else if (b > a)
    {
        std::cout << "b > a";
    }
    else
    {
        std::cout << "b = a" ;
    }
    std::cout << "\n One more? (1-yes 0-no)";
    std::cin >> x;
    if (x == 1)
    {
        main();
    }


    return 0;
}
