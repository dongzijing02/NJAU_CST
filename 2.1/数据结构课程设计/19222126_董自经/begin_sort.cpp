#include"sort.h"
void begin_sort(int* b, int num, int flag) {
	double cnt1, cnt2; int* a; a = (int*)malloc(sizeof(int) * num); char c; double start, end;
	switch (flag) {
	case 1:for (int i = 0; i < num; i++)  a[i] = b[i]; start = clock(); bubble(a, num, cnt1, cnt2); end = clock(); 
		cout << "ð������:" << "�Ƚϴ���:" << cnt1 << " ��������:" << cnt2 << " �ķ�ʱ�䣺" << end - start << "ms";		break;
	case 2:for (int i = 0; i < num; i++)  a[i] = b[i];	start = clock(); shell(a, num, cnt1, cnt2); end = clock();
		cout << "ϣ������:" << "�Ƚϴ���:" << cnt1 << " ��������:" << cnt2 << " �ķ�ʱ�䣺" << end - start << "ms";		break;
	case 3:for (int i = 0; i < num; i++)  a[i] = b[i]; cnt1 = 0; cnt2 = 0;	start = clock(); quick(a, 0, num - 1, cnt1, cnt2); end = clock();
		cout << "��������:" << "�Ƚϴ���:" << cnt1 << " ��������:" << cnt2 << " �ķ�ʱ�䣺" << end - start << "ms";		break;
	case 4:for (int i = 0; i < num; i++)  a[i] = b[i]; cnt1 = 0; cnt2 = 0; start = clock();	merge_sort(a, num, cnt1, cnt2); end = clock();
		cout << "��·�鲢:" << "�Ƚϴ���:" << cnt1 << " ��������:" << cnt2 << " �ķ�ʱ�䣺" << end - start << "ms";		break;
	case 5:for (int i = 0; i < num; i++)  a[i] = b[i]; cnt1 = 0; cnt2 = 0;	start = clock(); heap_sort(a, num, cnt1, cnt2); end = clock();
		cout << "������:" << "�Ƚϴ���:" << cnt1 << " ��������:" << cnt2 << " �ķ�ʱ�䣺" << end - start << "ms";		break;
	case 6:
		for (int i = 0; i < num; i++)  a[i] = b[i]; start = clock(); bubble(a, num, cnt1, cnt2); end = clock();
		cout << "ð������:" << "�Ƚϴ���:" << cnt1 << " ��������:" << cnt2 << " �ķ�ʱ�䣺" << end - start << "ms"; 
		for (int i = 0; i < num; i++)  a[i] = b[i];	start = clock(); shell(a, num, cnt1, cnt2); end = clock();
		cout << endl << "ϣ������:" << "�Ƚϴ���:" << cnt1 << " ��������:" << cnt2 << " �ķ�ʱ�䣺" << end - start << "ms";
		for(int i = 0; i < num; i++)  a[i] = b[i]; cnt1 = 0; cnt2 = 0;	start = clock(); quick(a, 0, num - 1, cnt1, cnt2); end = clock();
		cout << endl << "��������:" << "�Ƚϴ���:" << cnt1 << " ��������:" << cnt2 << " �ķ�ʱ�䣺" << end - start << "ms"; 
		for (int i = 0; i < num; i++)  a[i] = b[i]; cnt1 = 0; cnt2 = 0; start = clock();	merge_sort(a, num, cnt1, cnt2); end = clock();
		cout << endl << "��·�鲢:" << "�Ƚϴ���:" << cnt1 << " ��������:" << cnt2 << " �ķ�ʱ�䣺" << end - start << "ms";
		for (int i = 0; i < num; i++)  a[i] = b[i]; cnt1 = 0; cnt2 = 0;	start = clock(); heap_sort(a, num, cnt1, cnt2); end = clock();
		cout << endl << "������:" << "�Ƚϴ���:" << cnt1 << " ��������:" << cnt2 << " �ķ�ʱ�䣺" << end - start << "ms";		break;
	default:cout << "���������"; break;
	}
	cout << endl << "�Ƿ��ӡ����(y/n)��"; cin >> c;
	if (c == 'y') {
		cout << endl; for (int i = 0; i < num; i++) cout << a[i] << " "; cout << endl;
	}
}