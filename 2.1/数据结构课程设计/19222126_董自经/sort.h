/*�ڲ������㷨��ʵ����Ƚ�
������������
��ð������ϣ�������۰�������򡢶�·�鲢���򡢶�����ѡ�����򡢿������򡢻�����������򷽷���ѡ�� 5 �֣�ʵ�����ݵ�����
������Ҫ��
��������ɵ� 3 �� 500 �����������������򣬲��ӹؼ��ֵıȽϴ����͹ؼ��ֵ��ƶ���������ѡ�õ��㷨���бȽϷ�����
��ѡ�����ݡ�
������� 3 �����ݣ��ֱ��� 1000��10000��100000 �����������������ļ������ļ�����������ݽ�������ͳ��ÿ���㷨��ִ��ʱ�䣬�����з����Ƚ�
*/

#include"iostream"
#include"stdlib.h"
#include"time.h"
using namespace std;
//cnt1Ϊ�Ƚϴ���,cnt2Ϊ��������
void begin_sort(int* b, int num, int flag);
void bubble(int* a, int num, double& cnt1, double& cnt2);
void heap_sort(int* array, int num, double& cnt1, double& cnt2);
void merge_sort(int* a, int num, double& cnt1, double& cnt2);
void quick(int* a, int left, int right, double& cnt1, double& cnt2);
void shell(int* a, int num, double& cnt1, double& cnt2);



