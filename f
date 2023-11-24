
    int h, m, s, x, y, z, h1, m1, s1, d;
    std::cout << "Enter: hours, minutes and seconds now (natural numbers or 0)\n";
    std::cin >> h >> m >> s;
    if (std::cin.fail())
    {
        std::cout << "\nInput error!!!";
        std::cin.clear();
        std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
        return;
    }
    if ((h < 0) || (m < 0) || (s < 0))
    {
        std::cout << "\n not natural numbers";
        return;
    }
    if ((h > 23) || (m > 59) || (s > 59))
    {
        std::cout << "\n this numbers can't be time";
        return;
    }
    std::cout << "Enter interval: hours, minutes and seconds (natural numbers or 0)\n";
    std::cin >> x >> y >> z;
    if (std::cin.fail())
    {
        std::cout << "\nInput error!!!";
        std::cin.clear();
        std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
        return;
    }
    if ((x < 0) || (y < 0) || (z < 0))
    {
        std::cout << "\n not natural numbers";
        return;
    }
    s1 = ( s + z ) % 60;
    m1 = (m + (s + z) / 60 + y) % 60;
    h1 = (h + (m + (( s + z ) / 60) + y) / 60 + x) % 24;
    d = (h + (m + y)/ 60 + x) / 24;
    std::cout << h1 << " hours " << m1 <<  " minutes " << s1 << " seconds ";
    if (d > 0)
        std::cout << " after " << d << " days ";
}
void program17() {
    int h, m, s, h1, m1, s1, h2, m2, s2;
    std::cout << " \nenter start of interval (hours, minutes and seconds) \n";
    std::cin >> h >> m >> s;
    if (std::cin.fail()) {
        std::cout << "\nInput error!!!";
        std::cin.clear();
        std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
        return;
    }
    if ((h < 0) || (m < 0) || (s < 0)) {
        std::cout << "\n not natural numbers";
        return;
    }
    if ((h > 23) || (m > 59) || (s > 59)) {
        std::cout << "\n this numbers can't be time";
        return;
    }
    std::cout << "\nenter end of interval (hours, minutes and seconds) \n";
    std::cin >> h1 >> m1 >> s1;
    if (std::cin.fail()) {
        std::cout << "\nInput error!!!";
        std::cin.clear();
        std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
        return;
    }
    if ((h < 0) || (m < 0) || (s < 0)) {
        std::cout << "\n not natural numbers";
        return;
    }
    if ((h > 23) || (m > 59) || (s > 59)) {
        std::cout << "\n this numbers can't be time";
        return;
    }
    if (h1 >= h)
    {
        s2 = abs((s - s1) % 60);
        m2 = abs((m - m1 - (s - s1) / 60) % 60);
        h2 = abs((h - h1 - (m - m1 - (s - s1) / 60) / 60) % 24);
    }
    std::cout <<"\n" << h2 << " hours " << m2 << " minutes " << s2 << " seconds is interval ";
}
void program18()
{
    int length, number;
    std::cout << "\nEnter a number of UNIT 1 - km, 2 - m, 3 - dm, 4 - cm, 5 - mm\n";
    std::cin >> number;
    if (std::cin.fail())
    {
        std::cout << "\nInput error!!!";
        std::cin.clear();
        std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
        return;
    }
    if (number < 1 || number > 5)
    {
        std::cout <<"\n OUT OF RNG";
        return;
    }
    std::cout << "\nEnter a length - natural number\n";
    std::cin >> length;
    if (std::cin.fail())
    {
        std::cout << "\nInput error!!!";
        std::cin.clear();
        std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
        return;
    }
    if (length < 0)
    {
        std::cout << "\n not natural numbers";
        return;
    }
        switch (number)
        {
            case 1:{ std::cout <<"\n" << length << " km = " << length * 1000 << " m" ; break;}
            case 2:{ std::cout <<"\n" << length << " m = " << length << " m" ; break;}
            case 3:{ std::cout <<"\n" << length << " dm = " << length / 10 << " m" ; break;}
            case 4:{ std::cout <<"\n" << length << " cm = " << length / 100 << " m" ; break;}
            case 5:{ std::cout <<"\n" << length << " mm = " << length / 1000 << " m" ; break;}
        }
}
void program19()
{
    setlocale(LC_ALL, "RU");
    int n, x;
    std::cout << "\nEnter a Number 1-200\n";
    if (std::cin.fail())
    {
        std::cout << "\nInput error!!!";
        std::cin.clear();
        std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
        return;
    }
    if (n < 1 || n > 200)
    {
        std::cout << "\nOUT IF RNG";
        return;
    }

    {
        std::cout << "\n not natural numbers";
        return;
    }
    x = n % 100;
    switch (x)
    {
        case 0 || 5 || 6 || 7 || 8 || 11 || 12 || 13 || 14:{ std::cout << "\n ЕМУ" << n << "лет"; break;}
        case 1:{ std::cout << "\n ЕМУ" << n << "год"; break;}
        
    }

}
int main()
{
    bool answer;

    //program6();
    //program7();
    //program8();
    //program9();
    //program10();
    //program11();
    //program16();
    //program17();
    //program18();
    program19();

    std::cout << "\nOne more? (1 - yes, 0 - no): ";
    std::cin >> answer;

    if (answer)
    {
        main();
    }
    return 0;
}
