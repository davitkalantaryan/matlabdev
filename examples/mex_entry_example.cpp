
#include <mex.h>


void mexFunction(int a_nNumOuts, mxArray *a_Outputs[],int a_nNumInps, const mxArray*a_Inputs[])
{
	mexPrintf("numOut:%d,outs:%p,numIn:%d,ins:%p\n",a_nNumOuts,a_Outputs,a_nNumInps,a_Inputs);
}
