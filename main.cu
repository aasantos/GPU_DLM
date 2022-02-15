#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>
#include <string.h>
#include <cuda.h>
#include "io.cuh"
#include "vector.cuh"
#include "random.cuh"
#include "normalmodel.cuh"
#include "regmodel.cuh"
#include "ar1model.cuh"
#include "dlm.cuh"
#include "sv.cuh"
#include "runfunc.cuh"
//
//
//
int main()
{
  printf("Start .... \n");
  //
  //estimate_sv("sp500_ret_80_87.txt",-0.5,0.95,0.2);
  //estimate_svt("sp500_ret_80_87.txt",-0.5,0.95,0.2,20);
  //estimate_svl("sp500_ret_80_87.txt",-0.5,0.95,0.2,-0.5);
  //estimate_svtl("sp500_ret_80_87.txt",-0.5,0.95,0.2,-0.5,20);
  estimate_sv_gpu("sp500_ret_80_87.txt");
  //estimate_svl_gpu("sp500_ret_80_87.txt");
  //estimate_svtl_gpu("sp500_ret_80_87.txt");
  //estimate_svt_gpu("sp500_ret_80_87.txt");
  //
  //
  printf("Done ... \n");
  //
  return 0;
}
