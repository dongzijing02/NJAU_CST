#include"sort.h"
void begin_sort(int* b, int num, int flag) {
	double cnt1, cnt2; int* a; a = (int*)malloc(sizeof(int) * num); char c;
	switch (flag) {
	case 1:for (int i = 0; i < num; i++)  a[i] = b[i]; bubble(a, num, cnt1, cnt2);
		cout << endl << "ð������:" << "�Ƚϴ���:" << cnt1 << " ��������:" << cnt2;		break;
	case 2:for (int i = 0; i < num; i++)  a[i] = b[i];	shell(a, num, cnt1, cnt2);
		cout << endl << "ϣ������:" << "�Ƚϴ���:" << cnt1 << " ��������:" << cnt2;		break;
	case 3:for (int i = 0; i < num; i++)  a[i] = b[i]; cnt1 = 0; cnt2 = 0;	quick(a, 0, num - 1, cnt1, cnt2);
		cout << endl << "��������:" << "�Ƚϴ���:" << cnt1 << " ��������:" << cnt2;		break;
	case 4:	for (int i = 0; i < num; i++)  a[i] = b[i]; cnt1 = 0; cnt2 = 0;	merge_sort(a, num, cnt1, cnt2);
		cout << endl << "��·�鲢:" << "�Ƚϴ���:" << cnt1 << " ��������:" << cnt2;		break;
	case 5:	for (int i = 0; i < num; i++)  a[i] = b[i]; cnt1 = 0; cnt2 = 0;	heap_sort(a, num, cnt1, cnt2);
		cout << endl << "������:" << "�Ƚϴ���:" << cnt1 << " ��������:" << cnt2;		break;
	case 6:
		for (int i = 0; i < num; i++)  a[i] = b[i]; bubble(a, num, cnt1, cnt2);
		cout << endl << "ð������:" << "�Ƚϴ���:" << cnt1 << " ��������:" << cnt2;
		for (int i = 0; i < num; i++)  a[i] = b[i]; cnt1 = 0; cnt2 = 0;	quick(a, 0, num - 1, cnt1, cnt2);
		cout << endl << "��������:" << "�Ƚϴ���:" << cnt1 << " ��������:" << cnt2;
		for (int i = 0; i < num; i++)  a[i] = b[i];	shell(a, num, cnt1, cnt2);
		cout << endl << "ϣ������:" << "�Ƚϴ���:" << cnt1 << " ��������:" << cnt2;
		for (int i = 0; i < num; i++)  a[i] = b[i]; cnt1 = 0; cnt2 = 0;	merge_sort(a, num, cnt1, cnt2);
		cout << endl << "��·�鲢:" << "�Ƚϴ���:" << cnt1 << " ��������:" << cnt2;
		for (int i = 0; i < num; i++)  a[i] = b[i]; cnt1 = 0; cnt2 = 0;	heap_sort(a, num, cnt1, cnt2);
		cout << endl << "������:" << "�Ƚϴ���:" << cnt1 << " ��������:" << cnt2;     break;
	default:cout << "���������"; break;
	}
	cout << endl << "�Ƿ��ӡ����(y/n)��"; cin >> c;
	if (c == 'y') {
		cout << endl; for (int i = 0; i < num; i++) cout << a[i] << " "; cout << endl;
	}
}