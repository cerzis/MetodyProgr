#include <iostream>

int main()
{
    int a, b, c, x;
    std::cout << "Vvedite chisla a,b,c\n";
    std::cin >> a;
    std::cin >> b;
    std::cin >> c;
    if (a >= c && a >= b)
    {
        std::cout << "max=" << a;
    }
    else if (b >= c)
    {
        std::cout << "max=" << b;
    }
    else
    {
        std::cout << "max=" << c;
    }
    std::cout << "\n One more? (1-yes 0-no)";
    std::cin >> x;
    if (x == 1)
    {
        main();
    }


    return 0;
}
