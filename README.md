# MATLAB development helper repository  
  
In order to create any MATLAB related application (MEX, MATLAB egine based application (or lib)) there is no necesity 
to have MATLAb installed on the host. Below is the list of necessary components for building 2 types of applications 
mentioned above.  
  
## MATLAB MEX file  
  
### LINUX  
Because MATLAB mex file is dynamic library, for LINUX there is no necessity for libraries for 
building mex. All symbols from MATLAB libmex or libmx library (mexPrintf etc.) will be resolved during runtime.  
So for LINUX only headers are enough in order to compile library !!!  
  
### WINDOWS  
For Windows all addresses to symbols should be resolved during compilation, so here we need also libmx.lib and libmex.lib  
  

## MATLAB engine based executable  
Both for LINUX and WINDOWS we need headers as well compiler used libraries (win:*.lib,lin:*.so).  
  

## MATLAB engine based library  
  
### LINUX  
Like for MEX file here also there is no necessity to link against libeng.so, but !!!!  
This will work, if linking against libeng is done in the application side.  
So better in this case on LINUX also link against libeng.so (and probably libmx.so).  
On Linux maybe there will be necessity for other libraries. See details 
[here](https://github.com/davitkalantaryan/matlabdev/blob/master/prj/common/common_qt/matlab_matrix_common.pri). 
