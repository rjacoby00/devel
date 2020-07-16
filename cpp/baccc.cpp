#include <stdio.h>

void secret() {
    printf("REDACTED");
}

void vuln() {
    char buffer[100];
    scanf("%s", buffer);
    puts(buffer);
    return;
}

int main() {
    vuln();
}