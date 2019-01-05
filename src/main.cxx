#include <iostream>
#include "Const.h"
#include <vector>
#include <memory>
#include <array>

namespace ns{
inline namespace good{
void my_f()
{
   std::cout << "inline namespace: OK" << std::endl;
}
}
}

//auto g(int x) -> decltype(x)
//{
//   int x = 9;
//   return x;
//}

int main()
{
	std::cout << COMMON_STR << ": OK" << std::endl;

   //ここからC++11機能テストコード

   //nullptr -> 4.6から
   //char* p = std::nullptr;

   //initializer_list
   std::vector<int> v = {1,2,3,4,5};
   std::cout << "initializer_list: OK" << std::endl;

   //auto
   std::string s = "hoge";
   auto x = s;
   x = "fuga";
   std::cout << "auto: OK (" << s << ", " << x << ")" << std::endl;

   //unique_ptr
   std::unique_ptr<int> p1(new int(5));   
   std::cout << "unique_ptr: OK(" << p1.get() << ")" << std::endl;

   //array
   std::array<int,5> a = {1,2,3,4,5};
   std::cout << "array: OK(" << std::get<0>(a) << ")" << std::endl;

   //右辺値参照 (rvalue reference)
  
   //inline namespace
   ns::good::my_f();
   ns::my_f(); 

   //戻り値の型を後置する関数宣言構文
   //int x = 0;
   //std::cout << "戻り値の型を後置する関数宣言構文: OK(" << g(x) << ")" << std::endl;

   
	return 0;
}
