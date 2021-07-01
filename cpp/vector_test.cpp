// Ryan Jacoby
// Compiled on GNU/Linux with g++ v10.1.0

#include<iostream>
#include<vector>

using namespace std;

int pop_front(vector<int> &);
template<class T>
void print_vector(const vector<T>);
template<class T>
T pop_front(vector<T> &);

int main() {
    vector<string> vec = {"abcd"};

    string popped = pop_front(vec);

    print_vector(vec);
}

int pop_front(vector<int> &v) {
    int ret = v[0];
    
    for(int i = 0; i < v.size() - 1; i++)
        v[i] = v[i+1];
        
    if(v.size() > 0) v.pop_back();
    
    return ret;
}

template<class T>
T pop_front(vector<T> &v) {
    T ret = v[0];
    
    for(int i = 0; i < v.size() - 1; i++)
        v[i] = v[i+1];
        
    if(v.size() > 0) v.pop_back();
    
    return ret;
}

template<class T>
void vrint_vector(const vector<T> v) {
    for(T t : v)
        cout << t << '\n';
}
