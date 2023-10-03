#include <iostream>

int main()
{
    int a,x;
    std::cout << "vvedite 20 chislo \n";
    std::cin >> a;
    if (a >= 10 && a <= 99 && a%2==0) 
    {
        std::cout << "Da";
    }
    else
    {
        std::cout << "Net";
    } 
    std::cout << "\n One more? (1-yes 0-no)";
    std::cin >> x;
    if (x == 1)
    {
        main();
    }
    
        
    
        return 0;
}
