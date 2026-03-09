# 1 "hello.cpp"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 422 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/AMDDesignTools/2025.2/Vitis/common/technology/autopilot\\etc/autopilot_ssdm_op.h" 1
# 105 "C:/AMDDesignTools/2025.2/Vitis/common/technology/autopilot\\etc/autopilot_ssdm_op.h"
extern "C" {






    void _ssdm_op_IfRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_IfWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));


    void _ssdm_StreamRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_StreamWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned _ssdm_StreamSize(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_ReadReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_Read(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_WriteReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_Write(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_NbReadReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_CanReadReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_NbWriteReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_CanWriteReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));




    void _ssdm_op_MemShiftRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_PrintNone(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_PrintInt(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_PrintDouble(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_Wait(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_Poll(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_Return(...) __attribute__ ((nothrow)) __attribute__((overloadable));


    void _ssdm_op_SpecSynModule(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecTopModule(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecProcessDecl(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecProcessDef(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecPort(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecConnection(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecChannel(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecSensitive(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecModuleInst(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecPortMap(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecReset(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecPlatform(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecClockDomain(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecPowerDomain(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    int _ssdm_op_SpecRegionBegin(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    int _ssdm_op_SpecRegionEnd(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecLoopName(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecLoopTripCount(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    int _ssdm_op_SpecStateBegin(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    int _ssdm_op_SpecStateEnd(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecInterface(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecPipeline(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecDataflowPipeline(...) __attribute__ ((nothrow)) __attribute__((overloadable));


    void _ssdm_op_SpecLatency(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecParallel(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecProtocol(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecOccurrence(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecResource(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecResourceLimit(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecCHCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecFUCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecIFCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecIPCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecMemCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecExt(...) __attribute__ ((nothrow)) __attribute__((overloadable));




    void _ssdm_SpecArrayDimSize(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_RegionBegin(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_RegionEnd(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_InlineAll(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_InlineLoop(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_Inline(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_InlineSelf(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_InlineRegion(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecArrayMap(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecArrayPartition(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecArrayReshape(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecStream(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecStable(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecStableContent(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecBindPort(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecPipoDepth(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecExpr(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecExprBalance(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecDependence(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecLoopMerge(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecLoopFlatten(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecLoopRewind(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecFuncInstantiation(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecFuncBuffer(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecFuncExtract(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecConstant(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_DataPack(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecDataPack(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecBitsMap(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecLicense(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void __xilinx_ip_top(...) __attribute__ ((nothrow)) __attribute__((overloadable));


}
# 2 "<built-in>" 2
# 1 "hello.cpp" 2
# 58 "hello.cpp"
# 1 "C:/AMDDesignTools/2025.2/Vitis/common/technology/autopilot\\hls_half.h" 1
# 12 "C:/AMDDesignTools/2025.2/Vitis/common/technology/autopilot\\hls_half.h"
typedef __fp16 half;
# 59 "hello.cpp" 2
# 1 "C:\\AMDDesignTools\\2025.2\\Vitis\\win64\\tools\\clang-16\\lib\\clang\\16\\include\\stdint.h" 1 3
# 52 "C:\\AMDDesignTools\\2025.2\\Vitis\\win64\\tools\\clang-16\\lib\\clang\\16\\include\\stdint.h" 3
# 1 "C:/AMDDesignTools/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\stdint.h" 1 3
# 28 "C:/AMDDesignTools/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\stdint.h" 3
# 1 "C:/AMDDesignTools/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\crtdefs.h" 1 3
# 10 "C:/AMDDesignTools/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\crtdefs.h" 3
# 1 "C:/AMDDesignTools/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\_mingw.h" 1 3
# 12 "C:/AMDDesignTools/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\_mingw.h" 3
# 1 "C:/AMDDesignTools/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include/_mingw_mac.h" 1 3
# 13 "C:/AMDDesignTools/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\_mingw.h" 2 3
# 1 "C:/AMDDesignTools/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include/_mingw_secapi.h" 1 3
# 44 "C:/AMDDesignTools/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include/_mingw_secapi.h" 3
extern "C++" {
template <bool __test, typename __dsttype>
  struct __if_array;
template <typename __dsttype>
  struct __if_array <true, __dsttype> {
    typedef __dsttype __type;
};
}
# 14 "C:/AMDDesignTools/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\_mingw.h" 2 3
# 282 "C:/AMDDesignTools/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\_mingw.h" 3
# 1 "C:\\AMDDesignTools\\2025.2\\Vitis\\win64\\tools\\clang-16\\lib\\clang\\16\\include\\vadefs.h" 1 3
# 12 "C:\\AMDDesignTools\\2025.2\\Vitis\\win64\\tools\\clang-16\\lib\\clang\\16\\include\\vadefs.h" 3
# 1 "C:/AMDDesignTools/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\vadefs.h" 1 3








# 1 "C:/AMDDesignTools/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\_mingw.h" 1 3
# 595 "C:/AMDDesignTools/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\_mingw.h" 3
# 1 "C:/AMDDesignTools/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include/sdks/_mingw_directx.h" 1 3
# 596 "C:/AMDDesignTools/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\_mingw.h" 2 3
# 1 "C:/AMDDesignTools/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include/sdks/_mingw_ddk.h" 1 3
# 597 "C:/AMDDesignTools/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\_mingw.h" 2 3
# 10 "C:/AMDDesignTools/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\vadefs.h" 2 3




#pragma pack(push,_CRT_PACKING)



extern "C" {





  typedef __builtin_va_list __gnuc_va_list;






  typedef __gnuc_va_list va_list;
# 99 "C:/AMDDesignTools/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\vadefs.h" 3
}



#pragma pack(pop)
# 13 "C:\\AMDDesignTools\\2025.2\\Vitis\\win64\\tools\\clang-16\\lib\\clang\\16\\include\\vadefs.h" 2 3
# 283 "C:/AMDDesignTools/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\_mingw.h" 2 3
# 558 "C:/AMDDesignTools/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\_mingw.h" 3
extern "C" {
# 569 "C:/AMDDesignTools/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\_mingw.h" 3
void __attribute__((__cdecl__)) __debugbreak(void);
extern __inline__ __attribute__((__always_inline__,__gnu_inline__)) void __attribute__((__cdecl__)) __debugbreak(void)
{
  __asm__ __volatile__("int {$}3":);
}




const char *__mingw_get_crt_info (void);


}
# 11 "C:/AMDDesignTools/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\crtdefs.h" 2 3




#pragma pack(push,_CRT_PACKING)
# 35 "C:/AMDDesignTools/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\crtdefs.h" 3
__extension__ typedef unsigned long size_t;
# 45 "C:/AMDDesignTools/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\crtdefs.h" 3
__extension__ typedef long ssize_t;






typedef size_t rsize_t;
# 62 "C:/AMDDesignTools/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\crtdefs.h" 3
__extension__ typedef long intptr_t;
# 75 "C:/AMDDesignTools/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\crtdefs.h" 3
__extension__ typedef unsigned long uintptr_t;
# 88 "C:/AMDDesignTools/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\crtdefs.h" 3
__extension__ typedef long ptrdiff_t;
# 106 "C:/AMDDesignTools/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\crtdefs.h" 3
typedef unsigned short wint_t;
typedef unsigned short wctype_t;





typedef int errno_t;




typedef long __time32_t;




__extension__ typedef long __time64_t;
# 138 "C:/AMDDesignTools/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\crtdefs.h" 3
typedef __time64_t time_t;
# 422 "C:/AMDDesignTools/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\crtdefs.h" 3
struct threadlocaleinfostruct;
struct threadmbcinfostruct;
typedef struct threadlocaleinfostruct *pthreadlocinfo;
typedef struct threadmbcinfostruct *pthreadmbcinfo;
struct __lc_time_data;

typedef struct localeinfo_struct {
  pthreadlocinfo locinfo;
  pthreadmbcinfo mbcinfo;
} _locale_tstruct,*_locale_t;



typedef struct tagLC_ID {
  unsigned short wLanguage;
  unsigned short wCountry;
  unsigned short wCodePage;
} LC_ID,*LPLC_ID;




typedef struct threadlocaleinfostruct {
  int refcount;
  unsigned int lc_codepage;
  unsigned int lc_collate_cp;
  unsigned long lc_handle[6];
  LC_ID lc_id[6];
  struct {
    char *locale;
    wchar_t *wlocale;
    int *refcount;
    int *wrefcount;
  } lc_category[6];
  int lc_clike;
  int mb_cur_max;
  int *lconv_intl_refcount;
  int *lconv_num_refcount;
  int *lconv_mon_refcount;
  struct lconv *lconv;
  int *ctype1_refcount;
  unsigned short *ctype1;
  const unsigned short *pctype;
  const unsigned char *pclmap;
  const unsigned char *pcumap;
  struct __lc_time_data *lc_time_curr;
} threadlocinfo;







#pragma pack(pop)
# 29 "C:/AMDDesignTools/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\stdint.h" 2 3



# 1 "C:\\AMDDesignTools\\2025.2\\Vitis\\win64\\tools\\clang-16\\lib\\clang\\16\\include\\stddef.h" 1 3
# 33 "C:/AMDDesignTools/2025.2/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\stdint.h" 2 3


typedef signed char int8_t;
typedef unsigned char uint8_t;
typedef short int16_t;
typedef unsigned short uint16_t;
typedef int int32_t;
typedef unsigned uint32_t;
__extension__ typedef long long int64_t;
__extension__ typedef unsigned long long uint64_t;


typedef signed char int_least8_t;
typedef unsigned char uint_least8_t;
typedef short int_least16_t;
typedef unsigned short uint_least16_t;
typedef int int_least32_t;
typedef unsigned uint_least32_t;
__extension__ typedef long long int_least64_t;
__extension__ typedef unsigned long long uint_least64_t;





typedef signed char int_fast8_t;
typedef unsigned char uint_fast8_t;
typedef short int_fast16_t;
typedef unsigned short uint_fast16_t;
typedef int int_fast32_t;
typedef unsigned int uint_fast32_t;
__extension__ typedef long long int_fast64_t;
__extension__ typedef unsigned long long uint_fast64_t;


__extension__ typedef long long intmax_t;
__extension__ typedef unsigned long long uintmax_t;
# 53 "C:\\AMDDesignTools\\2025.2\\Vitis\\win64\\tools\\clang-16\\lib\\clang\\16\\include\\stdint.h" 2 3
# 60 "hello.cpp" 2
# 1 "C:/AMDDesignTools/2025.2/Vitis/common/technology/autopilot\\hls_stream.h" 1
# 13 "C:/AMDDesignTools/2025.2/Vitis/common/technology/autopilot\\hls_stream.h"
# 1 "C:/AMDDesignTools/2025.2/Vitis/common/technology/autopilot/hls_stream_39.h" 1
# 23 "C:/AMDDesignTools/2025.2/Vitis/common/technology/autopilot/hls_stream_39.h"
namespace hls {
# 49 "C:/AMDDesignTools/2025.2/Vitis/common/technology/autopilot/hls_stream_39.h"
template<typename __STREAM_T__, int DEPTH=0>
class stream;

template<typename __STREAM_T__>
class stream<__STREAM_T__, 0>
{
  public:
    using value_type = __STREAM_T__;

    inline __attribute__((always_inline)) __attribute__((nodebug)) stream() {
    }

    inline __attribute__((always_inline)) __attribute__((nodebug)) stream(const char* name) {
      (void)(name);
    }


  private:
    inline __attribute__((always_inline)) __attribute__((nodebug)) stream(const stream< __STREAM_T__ >& chn):V(chn.V) {
    }

    inline __attribute__((always_inline)) __attribute__((nodebug)) stream& operator= (const stream< __STREAM_T__ >& chn) {
        V = chn.V;
        return *this;
    }

  public:

    inline __attribute__((always_inline)) __attribute__((nodebug)) void operator >> (__STREAM_T__& rdata) {
        read(rdata);
    }

    inline __attribute__((always_inline)) __attribute__((nodebug)) void operator << (const __STREAM_T__& wdata) {
        write(wdata);
    }


  public:

    inline __attribute__((always_inline)) __attribute__((nodebug)) bool empty() const {
        return !__fpga_fifo_not_empty(&V);
    }

    inline __attribute__((always_inline)) __attribute__((nodebug)) bool full() const {
        return !__fpga_fifo_not_full(&V);
    }


    inline __attribute__((always_inline)) __attribute__((nodebug)) void read(__STREAM_T__& dout) {
        __fpga_fifo_pop(&V, &dout);
    }


    inline __attribute__((noinline)) __attribute__((nodebug)) bool read_dep(__STREAM_T__& dout, volatile bool flag) {
        __fpga_fifo_pop(&V, &dout);
        return flag;
    }

    inline __attribute__((always_inline)) __attribute__((nodebug)) __STREAM_T__ read() {
        __STREAM_T__ tmp;
        read(tmp);
        return tmp;
    }


    inline __attribute__((always_inline)) __attribute__((nodebug)) bool read_nb(__STREAM_T__& dout) {
        __STREAM_T__ tmp;

        if (__fpga_fifo_nb_pop(&V, &tmp)) {
            dout = tmp;
            return true;
        } else {
            return false;
        }
    }


    inline __attribute__((always_inline)) __attribute__((nodebug)) void write(const __STREAM_T__& din) {
        __fpga_fifo_push(&V, &din);
    }


    inline __attribute__((noinline)) __attribute__((nodebug)) bool write_dep(const __STREAM_T__& din, volatile bool flag) {
        __fpga_fifo_push(&V, &din);
        return flag;
    }


    inline __attribute__((always_inline)) __attribute__((nodebug)) bool write_nb(const __STREAM_T__& din) {
        return __fpga_fifo_nb_push(&V, &din);
    }


    inline __attribute__((always_inline)) __attribute__((nodebug)) unsigned size() const {
        return __fpga_fifo_size(&V);
    }


    inline __attribute__((always_inline)) __attribute__((nodebug)) unsigned capacity() const {
        return __fpga_fifo_capacity(&V);
    }


    void set_name(const char* name) { (void)(name); }

  public:
    __STREAM_T__ V __attribute__((no_ctor));
};

template<typename __STREAM_T__, int DEPTH>
class stream : public stream<__STREAM_T__, 0> {
  public:
    inline __attribute__((always_inline)) __attribute__((nodebug)) stream() {
#pragma HLS stream variable=this depth=DEPTH
    }

    inline __attribute__((always_inline)) __attribute__((nodebug)) stream(const char* name) {
#pragma HLS stream variable=this depth=DEPTH
      (void)(name);
    }
};
}
# 14 "C:/AMDDesignTools/2025.2/Vitis/common/technology/autopilot\\hls_stream.h" 2
# 61 "hello.cpp" 2







uint16_t lmul(uint16_t a_bf16, uint16_t b_bf16) {
#pragma HLS INLINE
    uint16_t a_fld = a_bf16 & 0x7FFF;
    uint16_t b_fld = b_bf16 & 0x7FFF;

    uint8_t a_exp = (a_fld >> 7) & 0xFF;
    uint8_t b_exp = (b_fld >> 7) & 0xFF;
    if (a_exp == 0 || b_exp == 0) return 0;

    const uint32_t OFFSET_MOD = 0x4080;
    uint32_t sum_full = (uint32_t)a_fld + b_fld + OFFSET_MOD;

    uint16_t carry2 = (sum_full >> 15) & 0x3;
    uint16_t low_bits = sum_full & 0x7FFF;
    uint16_t field_sel;

    if (carry2 == 0) field_sel = 0;
    else if (carry2 == 1) field_sel = low_bits;
    else field_sel = 0x7FFF;

    uint16_t out_sign = (field_sel == 0) ? 0 : ((a_bf16 ^ b_bf16) >> 15) & 0x1;
    return (out_sign << 15) | field_sel;
}





inline int32_t bf16_to_fixed32(uint16_t bf) {
#pragma HLS INLINE
    if ((bf & 0x7FFF) == 0) return 0;

    uint8_t sign = (bf >> 15) & 1;
    int16_t exp = ((bf >> 7) & 0xFF) - 127;
    uint32_t mantissa = (bf & 0x7F) | 0x80;




    int shift = 16 - 7 + exp;

    int32_t fixed_val = 0;
    if (shift >= 0 && shift < 31) {
        fixed_val = (int32_t)mantissa << shift;
    } else if (shift < 0 && shift > -31) {
        fixed_val = (int32_t)mantissa >> (-shift);
    }

    return sign ? -fixed_val : fixed_val;
}

inline uint16_t fixed32_to_bf16(int32_t fixed_val) {
#pragma HLS INLINE
    if (fixed_val == 0) return 0;

    uint8_t sign = (fixed_val < 0) ? 1 : 0;
    uint32_t abs_val = (fixed_val < 0) ? (uint32_t)-fixed_val : (uint32_t)fixed_val;


    int bit_pos = 31 - __builtin_clz(abs_val);
    int16_t exp = bit_pos - 16;
    int16_t biased_exp = exp + 127;

    if (biased_exp <= 0) return (sign << 15);
    if (biased_exp >= 255) return (sign << 15) | 0x7F80;

    int shift = bit_pos - 7;
    uint16_t mantissa;
    if (shift > 0) {
        uint32_t shifted = abs_val >> shift;

        mantissa = shifted & 0x7F;
    } else {
        mantissa = (abs_val << (-shift)) & 0x7F;
    }

    return (sign << 15) | (biased_exp << 7) | mantissa;
}
# 230 "hello.cpp"
void qwen_linear_layer(
    uint16_t *A,
    uint16_t *W,
    uint16_t *C,
    int M, int N, int K
) {

    uint16_t bufA[32][32];
    uint16_t bufW[32][32];
    int32_t bufC[32][32];

#pragma HLS ARRAY_PARTITION variable=bufA cyclic factor=16 dim=2
#pragma HLS ARRAY_PARTITION variable=bufW cyclic factor=16 dim=1

    VITIS_LOOP_244_1: for (int i = 0; i < M; i += 32) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=1
        VITIS_LOOP_246_2: for (int j = 0; j < N; j += 32) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=28


            VITIS_LOOP_250_3: for(int r=0; r<32; r++) {
#pragma HLS UNROLL factor=4
                VITIS_LOOP_252_4: for(int c=0; c<32; c++) bufC[r][c] = 0;
            }

            VITIS_LOOP_255_5: for (int k = 0; k < K; k += 32) {
#pragma HLS LOOP_TRIPCOUNT min=1 max=28


                VITIS_LOOP_259_6: for(int r=0; r<32; r++) {
#pragma HLS PIPELINE
                    VITIS_LOOP_261_7: for(int c=0; c<32; c++) {
                        bufA[r][c] = A[(i+r)*K + (k+c)];
                        bufW[r][c] = W[(k+r)*N + (j+c)];
                    }
                }


                VITIS_LOOP_268_8: for (int ti = 0; ti < 32; ti++) {
                    VITIS_LOOP_269_9: for (int tj = 0; tj < 32; tj++) {


                        int32_t acc = bufC[ti][tj];

                        VITIS_LOOP_274_10: for (int tk = 0; tk < 32; tk++) {
#pragma HLS PIPELINE II=1


                            uint16_t raw_prod = lmul(bufA[ti][tk], bufW[tk][tj]);


                            acc += bf16_to_fixed32(raw_prod);
                        }


                        bufC[ti][tj] = acc;
                    }
                }
            }


            VITIS_LOOP_291_11: for(int r=0; r<32; r++) {
#pragma HLS PIPELINE
                VITIS_LOOP_293_12: for(int c=0; c<32; c++) {

                    C[(i+r)*N + (j+c)] = fixed32_to_bf16(bufC[r][c]);
                }
            }
        }
    }
}




__attribute__((sdx_kernel("qwen_superblock", 0))) void qwen_superblock(
    uint16_t *A,
    uint16_t *W1,
    uint16_t *W2,
    uint16_t *C,
    int M, int N_W1, int N_W2, int K
) {
#line 1 "directive"
#pragma HLSDIRECTIVE TOP name=qwen_superblock
# 311 "hello.cpp"

#pragma HLS INTERFACE m_axi port=A offset=slave bundle=gmem0
#pragma HLS INTERFACE m_axi port=W1 offset=slave bundle=gmem1
#pragma HLS INTERFACE m_axi port=W2 offset=slave bundle=gmem2
#pragma HLS INTERFACE m_axi port=C offset=slave bundle=gmem0
#pragma HLS INTERFACE s_axilite port=return

#pragma HLS DATAFLOW

    uint16_t temp[32 * 896];

    qwen_linear_layer(A, W1, temp, M, N_W1, K);
    qwen_linear_layer(temp, W2, C, M, N_W2, N_W1);
}
