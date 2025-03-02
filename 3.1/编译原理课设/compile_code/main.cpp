#include"SyntaxAnalyzer.h"
#include"LexicalAnalyzer.h"
#include"SemanticAnalyzer.h"
int main()
{
	string b[] = { "if","id","then","id",":=","id","#" };
	cout << "LexicalAnalyzer analyse��" << endl;
	//�ʷ�
	CreateToken cre;
	//����token���γ�map
	map<string, int> myMap = cre.getToken();
	LexicalAnalyzer les(myMap);
	//if id then id := id #

	//����
	vector<string> temp = les.get_symbol_table();
	Semantic_Analyzer sem(temp);

	//�﷨
	SyntaxAnalyzer sa(les, sem);
	//sa.print_slr();
	sa.work();

	return 0;
}


