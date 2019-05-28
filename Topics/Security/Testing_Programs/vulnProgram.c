#include <stdio.h>
#include <string.h>

#define MAX_LEN_USER_CRED 20

int main()
{
    char username[MAX_LEN_USER_CRED];
    char passowrd[MAX_LEN_USER_CRED];
    int auth=0;

    printf("Enter Username: ");
    scanf("%s", username);

    printf("Enter Password: ");
    scanf("%s", passowrd);

    if(strcmp(username, "john") == 0 && strcmp(passowrd, "test123") == 0){
        printf("You are authenticated! %i/n", auth);
        auth = 1;
    }else{
        printf("You are not authenticated\n");
    }

    if(auth){
        system("firefox");
    }

    return 0;
}
