#ifdef __cplusplus
extern "C" {
#endif
#define D_API         extern
#define DMAXCHAR      (2<<7)
#define D_TRUE        (1)
#define D_FALSE       (0)
typedef int D_BOOL;

typedef enum {
    D_STATUS_OK,
    D_STATUS_OUTMEN,
    D_STATUS_FULL,
    D_STATUS_EMPTY,
    D_STATUS_NULL,
    D_STATUS_OVER_INDEX,
} d_status;


typedef void* DValue;

#ifdef __cplusplus
}
#endif