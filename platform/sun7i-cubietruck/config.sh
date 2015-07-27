# ARCH will be auto-detected as the host if not specified
#ARCH=i486
#ARCH=x86_64
#ARCH=powerpc
ARCH=arm
#ARCH=microblaze
#ARCH=mips
#ARCH=mipsel

CC_BASE_PREFIX=/opt/cross

# If you use arm, you may need more fine-tuning:
# arm hardfloat v7
#TRIPLE=arm-linux-musleabihf
#GCC_BOOTSTRAP_CONFFLAGS="--with-arch=armv7-a --with-float=hard --with-fpu=vfpv3-d16"
#GCC_CONFFLAGS="--with-arch=armv7-a --with-float=hard --with-fpu=vfpv3-d16"

# arm softfp
TRIPLE=arm-linux-musleabi
GCC_BOOTSTRAP_CONFFLAGS="--with-arch=armv7-a --with-float=softfp"
GCC_CONFFLAGS="--with-arch=armv7-a --with-float=softfp"

MAKEFLAGS=-j4

# Enable this to build the bootstrap gcc (thrown away) without optimization, to reduce build time
GCC_STAGE1_NOOPT=1

# Versions of things
#BINUTILS_URL=http://ftp.gnu.org/gnu/binutils/binutils-2.25.tar.bz2
BINUTILS_URL=http://mirrors.ustc.edu.cn/gnu/binutils/binutils-2.25.tar.bz2

GCC_URL=http://mirrors.ustc.edu.cn/gnu/gcc/gcc-4.6.4/gcc-4.6.4.tar.bz2
GCC_VERSION=4.6.4

GCC_BUILTIN_PREREQS=yes

#GDB_VERSION=7.4.1
#GMP_VERSION=4.3.2
#MPC_VERSION=0.8.1
#MPFR_VERSION=2.4.2
#LIBELF_VERSION=71bf774909fd654d8167a475333fa8f37fbbcb5d

