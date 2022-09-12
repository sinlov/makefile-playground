#include "include/dmain.h"
#include "include/dtype.h"
#include <stdio.h>

d_status get_d_status() {
  return D_STATUS_EMPTY;
}

int main(int argc, char const *argv[])
{
  printf("d_main_version %s\n", d_main_version);
  printf("get_d_status() %d\n", get_d_status());
  return 0;
}
