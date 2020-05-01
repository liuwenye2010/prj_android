/* Module name is Unix. */
%module Unix
%{
/* Include the POSIX operating system APIs. */
#include <unistd.h>
%}
/* Tell SWIG about uid_t. */
typedef unsigned int uid_t;
/* Ask SWIG to wrap getuid function. */
extern uid_t getuid(void);
