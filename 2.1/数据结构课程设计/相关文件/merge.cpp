//ʱ�临�Ӷȣ�O(nlog2n)
//�ռ临�Ӷȣ�O(n)
//�ȶ��ԣ��ȶ�
//�˴���cnt2�����˽�ԭ�����е�Ԫ��������������
#include"sort.h"
void merge(int* input, int* output, int start, int mid, int end, double& cnt1, double& cnt2) {
    int i = start, j = mid + 1, k = start;  // i��һ���ʼ�±�,j�ڶ����ʼ�±�,k�䵱�ϲ�����±� 
    // �жϱ��������ֿ����
    while ((i <= mid) && (j <= end)) { // ��һ��� i ��ֵ�ȵڶ���� j ֵС
        if (++cnt1 && input[i] <= input[j]) {
            output[k++] = input[i++]; // ��С��ֵ����ڶ������飬����һ��� i ��ֵ
            cnt2++;
        }
        else {
            ++cnt1;
            output[k++] = input[j++]; // С��ֵ����ڶ������飬���ڶ���� j ��ֵ
            cnt2++;
        }
    }
    while (i <= mid) {    // ��һ��û�����꣬���ڶ������������˵����һ��ʣ��ֵ�����ڵڶ��飬ֱ�Ӱ�ʣ���һ�����ݶ�����ڶ�������
        output[k++] = input[i++];
        cnt2++;
    }
    while (j <= end) {   // �ڶ���û�����꣬����һ�����������˵���ڶ���ʣ��ֵ�����ڵ�һ�飬ֱ�Ӱ�ʣ��ڶ������ݶ�����ڶ�������
        output[k++] = input[j++];
        cnt2++;
    }
}
void merge_split(int* input, int* output, int gap, int num, double& cnt1, double& cnt2) {
    int i = 0;
    while (i + 2 * gap - 1 < num) {
        merge(input, output, i, i + gap - 1, i + 2 * gap - 1, cnt1, cnt2); // �鲢�ֿ�����
        i = i + 2 * gap;                                                   // �鲢�����ָ����һ���ֿ����ʼ��
    }
    if ((i + gap - 1) < num - 1)
        merge(input, output, i, i + gap - 1, num - 1, cnt1, cnt2);
    else
        for (int j = i; j < num; j++)
            output[j] = input[j];
}
void merge_sort(int* a, int num, double& cnt1, double& cnt2) {
    int* b = (int*)malloc(sizeof(int) * num);
    int gap = 1;
    while (gap < num) {
        merge_split(a, b, gap, num, cnt1, cnt2); // �鲢������� b ��
        gap = 2 * gap;                      
        merge_split(b, a, gap, num, cnt1, cnt2); // �鲢������� a ��
        gap = 2 * gap;                    
    }
}



