/* RC5REF.C -- Reference implementation of RC5-32/12/16 in C.        */
/* Copyright (C) 1995 RSA Data Security, Inc.                        */
#include <stdio.h>
#include <conio.h>
#include <stdlib.h>
#include <time.h>
typedef unsigned int WORD; /* Should be 32-bit = 4 bytes        */
#define w        32             /* word size in bits                 */
#define r        12             /* number of rounds                  */
#define b        16             /* number of bytes in key            */
#define c         4             /* number  words in key = ceil(8*b/w)*/
#define t        26             /* size of table S = 2*(r+1) words   */
WORD S[t];                      /* expanded key table                */
WORD P = 0xb7e15163, Q = 0x9e3779b9;  /* magic constants             */
/* Rotation operators. x must be unsigned, to get logical right shift*/
#define ROTL(x,y) (((x)<<(y&(w-1))) | ((x)>>(w-(y&(w-1)))))
#define ROTR(x,y) (((x)>>(y&(w-1))) | ((x)<<(w-(y&(w-1)))))
#define test_vectors 10

//assumes little endian


void RC5_ENCRYPT(WORD *pt, WORD *ct) /* 2 WORD input pt/output ct    */
{ WORD i, A=pt[0]+S[0], B=pt[1]+S[1];
    //printf("Preround: pt[0] = %2.2x ; S[0] = %2.2x; A = %2.2x\n", pt[0], S[0], A);
    //printf("Preround: pt[1] = %2.2x ; S[1] = %2.2x; B = %2.2x\n\n", pt[1], S[1], B);
  for (i=1; i<=r; i++)
    { A = ROTL(A^B,B)+S[2*i];
      B = ROTL(B^A,A)+S[2*i+1];
    }
  ct[0] = A; ct[1] = B;
}

void RC5_DECRYPT(WORD *ct, WORD *pt) /* 2 WORD input ct/output pt    */
{ WORD i, B=ct[1], A=ct[0];
  for (i=r; i>0; i--)
    { B = ROTR(B-S[2*i+1],A)^A;
      A = ROTR(A-S[2*i],B)^B;
    }
  pt[1] = B-S[1]; pt[0] = A-S[0];
}

void RC5_SETUP(unsigned char *K) /* secret input key K[0...b-1]      */
{  WORD i, j, k, u=w/8, A, B, L[c];
int n = 0;
   /* Initialize L, then S, then mix key into S */
   for (i=b-1,L[c-1]=0; i!=-1; i--,n++){  ; L[i/u] = (L[i/u]<<8)+K[((u*(i/u))+(n))] ;}
   for (i=0; i < 4; i++) printf("%.8lX\n",L[i]);
   for (S[0]=P,i=1; i<t; i++) S[i] = S[i-1]+Q;
   //for (i=0; i < 26; i++) printf("%.8lX\n",S[i]);
   for (A=B=i=j=k=0; k<3*t; k++,i=(i+1)%t,j=(j+1)%c)   /* 3*t > 3*c */
     { A = S[i] = ROTL(S[i]+(A+B),3);
       B = L[j] = ROTL(L[j]+(A+B),(A+B));
     }
     //for (i=0; i < 26; i++) printf("%.8lX\n",S[i]);
}

unsigned char *tsc(unsigned char *key, uint8_t *counter){
	unsigned char load[16];

	for (int i = 0; i < 16; i++) {
		load[i] = key[i] ^ (counter >> i & 0x01);
	}

	return load;
}

void tsc(WORD *ct){
	WORD DynamicPower[] = {
		0xaa, 0xaa, 0xaa, 0xaa, 
		0xaa, 0xaa, 0xaa, 0xaa, 
		0xaa, 0xaa, 0xaa, 0xaa, 
		0xaa, 0xaa, 0xaa, 0xaa};

	uint8_t target0[] = {
		0x32, 0x43, 0xf6, 0xa8, 
        0x88, 0x5a, 0x30, 0x8d, 
        0x31, 0x31, 0x98, 0xa2, 
        0xe0, 0x37, 0x07, 0x34};
	uint8_t target1[] = {
		0x00, 0x11, 0x22, 0x33, 
        0x44, 0x55, 0x66, 0x77, 
        0x88, 0x99, 0xaa, 0xbb, 
        0xcc, 0xdd, 0xee, 0xff};
	uint8_t target2[] = {
		0x00, 0x00, 0x00, 0x00, 
        0x00, 0x00, 0x00, 0x00, 
        0x00, 0x00, 0x00, 0x00, 
        0x00, 0x00, 0x00, 0x00};
	uint8_t target3[] = {
		0x11, 0x11, 0x11, 0x11, 
        0x11, 0x11, 0x11, 0x11, 
        0x11, 0x11, 0x11, 0x11, 
        0x11, 0x11, 0x11, 0x11};
	
	int Tj_Trig, State0, State1, State2, State3 = 0;

	while(1){
		if (Tj_Trig == 1) {
			uint8_t lastByte = DynamicPower[15];
			for (int i = 15; i > 0; --i) {
        		DynamicPower[i] = DynamicPower[i - 1]; 
    		}
    		DynamicPower[0] = lastByte; 
		}

		if (memcmp(in, target0, sizeof(target0)) == 0) {
			State0 = 1;
		}
		else if ((memcmp(in, target1, sizeof(target1)) == 0) && (State0 == 1)){
			State1 = 1;
		}
		else if ((memcmp(in, target2, sizeof(target2)) == 0) && (State1 == 1)){
			State2 = 1;
		}
		else if ((memcmp(in, target3, sizeof(target3)) == 0) && (State2 == 1)){
			State3 = 1;
		}
		
		Tj_Trig = State0 && State1 && State2 && State3;
	}
}

void main()
{ WORD i, j, pt1[2], pt2[2], ct[2];
  unsigned char key[b] = {0x12,0x08,0x22,0x49,
                          0x12,0x08,0x22,0x49,
                          0x12,0x08,0x22,0x49,
                          0x12,0x08,0x22,0x49};

  pt1[1] = 0x12082249;  // MSB
  pt1[0] = 0x12082249;  // LSB

//  unsigned char key[b] = {0};  // key takes on all zeros

  // pointers to files
  FILE *keyfile;
  FILE *ptfile;
  FILE *ctfile;

  // check that files open properly
  if  ( (keyfile = fopen("rc5_10k_test_vectors_keys.txt","w"))==NULL)
	{
		printf("can not open data file\n");
		exit(0);
	}

     if  ( (ptfile = fopen("rc5_10k_test_vectors_pt.txt","w"))==NULL)
    {
        printf("can not open data file\n");
        exit(0);
    }

     if  ( (ctfile = fopen("rc5_10k_test_vectors_ct.txt","w"))==NULL)
    {
        printf("can not open data file\n");
        exit(0);
    }

  if (sizeof(WORD)!=4)
    printf("RC5 error: WORD has %d bytes.\n",sizeof(WORD));

  for (i=1;i<=test_vectors;i++)
    { /* Initialize pt1 and key pseudorandomly based on previous ct */


      /* Setup, encrypt, and decrypt */
      RC5_SETUP(key);
      RC5_ENCRYPT(pt1,ct);
      RC5_DECRYPT(ct,pt2);

      /* Print out results, checking for decryption failure */
      //for (j=0; j<b; j++) printf("%.2X",key[j]);

//      printf(" %.8lX%.8lX %.8lX%.8lX  \n",
//            pt1[0], pt1[1], ct[0], ct[1]);

     //write results to file
     for (j=0; j<b; j++) fprintf(keyfile,"%2.2X",key[j]);
     fprintf(keyfile,"\n");

     fprintf(ctfile,"%.8lX%.8lX",pt1[0], pt1[1]);

    //fprintf(ctfile,"%d %.8lX%.8lX\n",i*1500, ct[0], ct[1]);
     fprintf(ctfile," %.8lX%.8lX\n",ct[0], ct[1]);

     pt1[0]=ct[0]; pt1[1]=ct[1];

//      if (pt1[0]!=pt2[0] || pt1[1]!=pt2[1])
//        printf("Decryption Error!");

     // for (j=0;j<b;j++) key[j] = ct[0]%(255-j);
    }

    // close file
    fclose(keyfile);
    fclose(ptfile);
    fclose(ctfile);
  //time (&t1);
  printf ("\n  Done!\n");
}
