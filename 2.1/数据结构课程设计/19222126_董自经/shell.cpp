//ʱ�临�Ӷȣ�ƽ��ʱ�临�Ӷȣ�O(Nlog2N) ���ʱ�临�Ӷȣ�O(nlog2n) ���ʱ�临�Ӷȣ�O(N ^ 2)
//�ռ临�Ӷȣ�O(1)
//�ȶ��ԣ����ȶ�
//�����ֱ�Ӳ�������ֻ�ǱȽϿ�ȱ�Ϊgap
#include"sort.h"
void shell(int* a, int num, double& cnt1, double& cnt2){
    int i, j, t, gap, temp; cnt1 = 0; cnt2 = 0;
    for (gap = num / 2; gap > 0; gap /= 2) {        // ������ʼ��Ϊ���鳤�ȵ�һ�룬ÿ�α����󲽳�����,
        for (i = 0; i < gap; ++i) {                 // ���� i Ϊÿ�η���ĵ�һ��Ԫ���±� 
            for (j = i + gap; j < num; j += gap) { 
                temp = a[j];                        
                t = j - gap;                        
                while (cnt1++ && t >= 0 && a[t] > temp) {
                    cnt2++;
                    a[t + gap] = a[t];             
                    a[t] = temp;
                    t -= gap;
                }
            }
        }
    }
}