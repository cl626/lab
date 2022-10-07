// 矩阵链.cpp : 此文件包含 "main" 函数。程序执行将在此处开始并结束。
//
#include <iostream>
#include <vector>
#include <map>
using namespace std;
//不要打错字
int main()
{
	vector<int> p = { 5, 10, 3, 12, 5, 50, 6 };
	map<pair<int, int>, int> list;
	for (int i = 0; i < 6; i++) {
		for (int j = 0; j < 6; j++) {
			list.insert({{i,j},0 });
//			printf("%d", list[{i, j}]);
		}
	}
	for (int m = 1; m < 6; m++) {
		for (int i = 0; i < 6 - m; i++) {
			list[{i, i + m}] = list[{i, i}] + list[{i + 1, i + m}] + p[i] * p[(i + 1)] * p[(i + m + 1)];
			printf("{%d,%d}=%d\n", i, i + m, list[{i, i + m}]);
				for (int j = i+1; j < i + m; j++){
					if (list[{i, i + m}] > (list[{i, j}] + list[{j + 1, i + m}] + p[i] * p[(j + 1)] * p[(i +m + 1)]))
						list[{i, i + m}] = list[{i, j}] + list[{j + 1, i + m}] + p[i] * p[(j + 1)] * p[(i+m + 1)];
					printf("{%d,%d}=%d\n",i,i+m, list[{i, i + m}]);
				}
		}
	}
	printf("%d\n", list[{0,5}]);
}