#include <iostream>


int main()
{
    
    int x, y, z;
    std::cout << "Vvedite 2 slg \n";
    std::cin >> x >> y;
    z = x + y;
    std::cout << x << "+" << y << "=" << z;
    std::cout << "\n One more? (1-yes 0-no)";
    std::cin >> x;
    if (x == 1)
    {
        main();
    }

    return 0;
}
