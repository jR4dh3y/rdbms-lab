#include <iostream>
#include <string>
using namespace std;


struct Node {
    string data;
    Node* next;
    
    Node(const string& str) : data(str), next(nullptr) {}
};

class LinkedList {
public:
    Node* head;

    LinkedList() : head(nullptr) {}

    void append(const string& data) {
        Node* newNode = new Node(data);
        if (!head) {
            head = newNode;
        } else {
            Node* current = head;
            while (current->next) {
                current = current->next;
            }
            current->next = newNode;
        }
    }

    void display() const {
        Node* current = head;
        while (current) {
            cout << current->data;
            current = current->next;
        }
    }
};

void funny(const string& a, const string& b) {
    size_t max_len = max(a.length(), b.length());

    LinkedList list;

    // Itr8 nd form pairs
    for (size_t i = 0; i < max_len; ++i) {
        char charA = (i < a.length()) ? a[i] : ' ';
        char charB = (i < b.length()) ? b[i] : ' ';
        
        string pair = string(1, charA) + string(1, charB);
        list.append(pair);
    }
    cout << "\nResult:\n";
    list.display();
}

int main() {
    string str1, str2;

    str1 = "abc";
    str2 = "123";

    funny(str1, str2);

    return 0;
}