#if defined(GLOBALORIGIN)
#define GLOBAL
#else
#define GLOBAL extern
#endif

GLOBAL int number;
GLOBAL void hello(void);
