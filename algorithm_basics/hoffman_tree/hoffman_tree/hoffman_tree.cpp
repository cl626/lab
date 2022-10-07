#include <bits/stdc++.h>
using namespace std;
//用什么数据结构

typedef struct {
	int val;
	ListNode* left;
	ListNode* right;
}ListNode;

vector<ListNode*> aaa;

void sort(vector<ListNode*> &a) {
	for (int i = 0; i < a.size(); i++) {

	}
}//降序

ListNode* hoffman(vector<int>a) {
	int length = a.size();
	for (int i = 0; i < a.size(); i++) {
		ListNode* Node = new ListNode;
		Node->left = NULL;
		Node->right = NULL;
		Node->val = a[i];
		aaa.push_back(Node);
	}
	sort(aaa);
	for (int i=length-1; i >=1; i++) {
		ListNode* Node = new ListNode;
		Node->left = aaa[i];
		Node->right = aaa[i - 1];
		aaa[i - 1] = Node;
		sort(aaa);
	}
	return aaa.front();
}

int main() {
	vector<int> i;
	
		
}