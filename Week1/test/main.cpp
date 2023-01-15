#include <cstdio>
#include <vector>
#include <algorithm>
using namespace std;

int a[100005];

int temp[100005];

int mergeSort(int str, int en)
{
    if (en - str < 3)
    {
        if (en - str == 2)
        {
            if (a[str] > a[str + 1])
            {
                int tp = a[str];
                a[str] = a[str + 1];
                a[str + 1] = tp;
            }
        }
    }
    else
    {
        int mid = (str + en) / 2;
        mergeSort(str, mid);
        mergeSort(mid, en);

        int i = str, j = mid, k = 0;
        while (i < mid || j < en)
        {
            if (i == mid)
                temp[k++] = a[j++];
            else if (j == en)
                temp[k++] = a[i++];
            else if (a[i] < a[j])
                temp[k++] = a[i++];
            else
                temp[k++] = a[j++];
        }
        for (i = 0; i < k; i++)
            a[i + str] = temp[i];
    }
}

int main()
{

    int N, M;

    scanf("%d", &N);
    for (int i = 0; i < N; i++)
    {
        int b;
        scanf("%d", &b);
        a[i] = b;
    }

    sort(a, a + N);
    // mergeSort(0,N);
    // for(int i=0;i<N;i++)
    // cout << a[i] << " ";
    scanf("%d", &M);
    for (int i = 0; i < M; i++)
    {
        int b, ok = 0;
        scanf("%d", &b);
        int str = 0, en = N, mid;
        while (str < en)
        {

            mid = (str + en) / 2;
            if (a[str] == b)
            {
                ok = 1;
                break;
            }
            if (a[en - 1] == b)
            {
                ok = 1;
                break;
            }
            if (a[mid] == b)
            {
                ok = 1;
                break;
            }

            if (a[mid] < b)
            {
                str = mid + 1;
            }
            else
            {
                en = mid;
            }
        }
        printf("%d\n", ok);
    }
    return 0;
}