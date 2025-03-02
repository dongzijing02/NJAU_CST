#include<iostream>
using namespace std;
class Rational{
public:
	int m, n;   //��ĸ�ͷ���   
	Rational(int nn = 1, int mm = 1);
	Rational  operator  +(Rational &a){ m += a.m; n += a.n; return *this; };                       //�ӷ�   
	Rational  operator  -(Rational &a){ m -= a.m; n -= a.n; return *this; };                       //����   
	friend  Rational  operator  *(Rational &a, Rational &b){ a.m *= b.m; a.n *= b.n; return a; }      //�˷�     
	friend  Rational  operator  /(Rational &a, Rational &b){ a.m /= b.m; a.n /= b.n; return a; }   //����    
	void print();
};
Rational::Rational(int x, int y) { m = x; n = y; }
void Rational::print(){
	if (n == 0)cout << "Wrong";
	if (m*n >= 0)	cout << "The value is " << m << "/" << n;
	else cout << "The value is -" << m << "/" << n;
	cout << endl;
}
void main(){
	Rational  A(2, 6), B(1, -2), C;
	C = A + B; C.print();
	C = A - B; C.print();
	C = A * B; C.print();
	C = A / B; C.print();
}