#include <iostream>
#include <vector>

using namespace std;

// function called for each element
void print(int elm)
{
	cout << elm << ' ';
}

int main(int argc, char *argv[]) {
	vector<int> coll;
	for (int i = 0; i < 10; ++i)
		coll.push_back(i);

	for_each(coll.begin(), coll.end(), print);
	cout << endl;

	return 0;
}
