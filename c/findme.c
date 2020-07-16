
void hidden(void)

{
  int iVar1;
  char *pcVar2;
  long in_FS_OFFSET;
  int local_74;
  undefined4 local_5f;
  undefined2 local_5b;
  undefined local_59;
  undefined8 local_58;
  char local_50;
  undefined local_4f;
  undefined local_4e;
  undefined local_4d;
  undefined local_4c;
  undefined local_4b;
  undefined local_4a;
  undefined local_49;
  char local_48 [56];
  long local_10;
  
  local_10 = *(long *)(in_FS_OFFSET + 0x28);
  puts("Congrats on making it here, here is part 1/3 of the flag :flag{N07_");
  puts("Enter the password to get part 2/3 of the flag");
  fgets(local_48,0x31,stdin);
  pcVar2 = strchr(local_48,10);
  if (pcVar2 != (char *)0x0) {
    *pcVar2 = '\0';
  }
  iVar1 = strcmp(local_48,"p4ssw0rd");
  if (iVar1 == 0) {
    local_58 = 0x43496f51520023;
    local_5f = 0x66336874;
    local_5b = 0x7830;
    local_59 = 0;
    local_74 = 0;
    while (local_74 < 7) {
      putchar((int)(char)(*(byte *)((long)&local_58 + (long)local_74) ^
                         *(byte *)((long)&local_5f + (long)(local_74 % 6))));
      local_74 = local_74 + 1;
    }
    putchar(10);
    puts("For the final part, just submit the rest of the flag ;)");
    local_4a = 0x7d;
    local_49 = 0;
    local_50 = '_';
    local_4f = 0x35;
    local_4c = 0x6d;
    local_4e = 0x45;
    local_4d = 0x65;
    local_4b = 0x32;
    fgets(local_48,0x31,stdin);
    pcVar2 = strchr(local_48,10);
    if (pcVar2 != (char *)0x0) {
      *pcVar2 = '\0';
    }
    iVar1 = strcmp(local_48,&local_50);
    if (iVar1 == 0) {
      printf("The part 3/3 of the flag is %s\n",local_48);
    }
    else {
      printf("Try just a bit harder");
    }
  }
  else {
    puts("Wrong :)");
  }
  if (local_10 != *(long *)(in_FS_OFFSET + 0x28)) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}

