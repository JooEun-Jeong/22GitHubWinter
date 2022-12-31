#include <cstdio>
#include <vector>
#include <algorithm>

int N, M;

int inputArray[100005];

int temp[100005];

int mergeSort(int str, int en)
{
    // Write Here
    // inputArray를 오름차순으로 정리해주세요.
    // nlogn의 시간복잡도를 가져야 합니다.
    
    int mid, lcur, rcur, tcur;

    if(en - str >= 2)
    {
        mid = (str + en) / 2;   // middle of list
        mergeSort(str, mid);    // mergeSort left-side list
        mergeSort(mid, en);     // mergeSort right-side list
        lcur = str;             // current index of left-side list
        rcur = mid;             // current index of right-side list
        tcur = 0;               // current index of temp (result)
        for(int i=0;i<en - str;i++) // merge process
        {
            if(lcur < mid && rcur < en)
            {
                if(inputArray[lcur] <= inputArray[rcur])
                    temp[tcur++] = inputArray[lcur++];
                else
                    temp[tcur++] = inputArray[rcur++];
            }
            else if(lcur < mid)
                temp[tcur++] = inputArray[lcur++];
            else
                temp[tcur++] = inputArray[rcur++];
        }
        for(int i=0;i<en - str;i++) // Copy result to inputArray from temp (result) array
        {
            inputArray[str + i] = temp[i];
        }

    }
    else
    {
        return 0;
    }


}

int binarySearch(int target)
{
    int ok = 0;

    // Write Here
    // 이진탐색을 통해 target 변수가 inputArray 에 있는지 확인해주세요.
    // 있는 경우 Ok = 1, 없는 경우 ok = 0 입니다.

    return ok;
}

//
// Problem https://www.acmicpc.net/problem/1920
// N개의 정수로 이루어진 배열이 있다.
// M개의 입력에 대해야, 해당 변수가 배열에 존재하는지 확인하라.
//

int main()
{
    scanf("%d", &N);

    // 입력 1. N개의 변수를 inputArray에 저장합니다.

    for (int i = 0; i < N; i++)
    {
        int num;
        scanf("%d", &num);
        inputArray[i] = num;
    }

    // process 1. InputArray를 정렬합니다.
    //

    mergeSort(0, N);

    scanf("%d", &M);

    // input 2 : 탐색할 target 변수 M개를 입력합니다.

    for (int i = 0; i < M; i++)
    {
        int target, ok = 0;
        scanf("%d", &target);
        // process 2 : 해당 변수가 inputArray에 존재하는지 확인합니다.
        ok = binarySearch(target);
        printf("%d\n", ok);
    }
    return 0;
}
