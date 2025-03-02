//ʱ�临�Ӷȣ�O(n)
//�ռ临�Ӷȣ�O(1)
//�ȶ��ԣ����ȶ�
#include"sort.h"
void swap(int* a, int* b, double& cnt2) {
    int temp = *b; *b = *a;  *a = temp;
    cnt2++;
}
void heapify(int* array, int start, int end, double& cnt1, double& cnt2) {  //�������ڵ�ָ����ӽڵ�ָ��
    int dad = start;    int son = dad * 2 + 1;
    while (son <= end) {                                                        //���ӽڵ�ָ���ڷ�Χ�ڲ����Ƚ�
        if (++cnt1 && son + 1 <= end && array[son] < array[son + 1])            //�ȱȽ������ӽڵ��С��ѡ������
            son++;
        if (++cnt1 && array[dad] > array[son])                                  //������ڵ�����ӽڵ���������ϣ�ֱ����������
            return;
        else {                                                                  //���򽻻����������ټ����ӽڵ����ڵ�Ƚ�
            swap(&array[dad], &array[son], cnt2);
            dad = son;
            son = dad * 2 + 1;
        }
    }
}
void heap_sort(int* array, int num, double& cnt1, double& cnt2) {
    int i;   
    for (i = num / 2 - 1; i >= 0; i--)                                           //��ʼ����i�����һ�����ڵ㿪ʼ����
        heapify(array, i, num - 1, cnt1, cnt2);
    
    for (i = num - 1; i > 0; i--) {                                             //�Ƚ���һ��Ԫ�غ����ź�Ԫ��ǰһλ���������ٴ��µ�����ֱ���������
        swap(&array[0], &array[i], cnt2);
        heapify(array, 0, i - 1, cnt1, cnt2);
    }
}


