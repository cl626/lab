#include<iostream>
#include<vector>
#include<algorithm>
#include<string>
using namespace std;
int table[100][100] = { 0 };
int judge[100][100] = { 0 };
int print_LCS(int judge[][100], string x, int, int);
int main()
{
	string a, b;
	cin >> a >> b;
	int m = a.length();
	int n = b.length();
	for (int i = 1; i <= m; i++)
	{
		for (int j = 1; j <= n; j++)
		{
			if (a[i - 1] == b[j - 1])
			{
				table[i][j] = table[i - 1][j - 1] + 1;
				judge[i][j] = 1;
			}
			else if (table[i - 1][j] >= table[i][j - 1])
			{
				table[i][j] = table[i - 1][j];
				judge[i][j] = 2;
			}
			else
			{
				table[i][j] = table[i][j - 1];
				judge[i][j] = 3;
			}
		}
	}
	cout << table[m][n] << endl;
	print_LCS(judge, a, m, n);
	cout << endl;
	system("pause");
}
int print_LCS(int judge[][100], string a, int x, int y)//x,y,分别为两段长度
{
	if (x == 0 || y == 0)
	{
		return 0;
	}
	if (judge[x][y] == 1)
	{
		print_LCS(judge, a, x - 1, y - 1);
		cout << a[x - 1];
	}
	if (judge[x][y] == 2)
	{
		print_LCS(judge, a, x - 1, y);
	}
	if (judge[x][y] == 3)
	{
		print_LCS(judge, a, x, y - 1);
	}
}