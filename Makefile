#----------------------------------------------------------------------
CFLAGS = -O3 -fomit-frame-pointer -mtune=native -malign-double \
         -fstrict-aliasing -fno-schedule-insns -DHAVE_CONFIG_H

TARGET = test

#./libbench2/useropt.c \
#./libbench2/bench-main.c \
#./libbench2/main.c \

SRC = \
./userapp/main.c \
./tools/fftw-wisdom.c \
./tests/fftw-bench.c \
./tests/bench.c \
./libbench2/allocate.c \
./libbench2/after-ccopy-to.c \
./libbench2/after-rcopy-from.c \
./libbench2/dotens2.c \
./libbench2/aset.c \
./libbench2/verify-dft.c \
./libbench2/verify-r2r.c \
./libbench2/speed.c \
./libbench2/can-do.c \
./libbench2/mp.c \
./libbench2/bench-cost-postprocess.c \
./libbench2/problem.c \
./libbench2/after-ccopy-from.c \
./libbench2/report.c \
./libbench2/verify-rdft2.c \
./libbench2/ovtpvt.c \
./libbench2/after-rcopy-to.c \
./libbench2/after-hccopy-to.c \
./libbench2/mflops.c \
./libbench2/info.c \
./libbench2/bench-exit.c \
./libbench2/verify-lib.c \
./libbench2/tensor.c \
./libbench2/my-getopt.c \
./libbench2/timer.c \
./libbench2/util.c \
./libbench2/after-hccopy-from.c \
./libbench2/pow2.c \
./libbench2/zero.c \
./libbench2/caset.c \
./libbench2/verify.c \
./rdft/buffered2.c \
./rdft/rdft-dht.c \
./rdft/nop.c \
./rdft/indirect.c \
./rdft/direct2.c \
./rdft/rank0.c \
./rdft/rank-geq2-rdft2.c \
./rdft/rank-geq2.c \
./rdft/conf.c \
./rdft/rdft2-strides.c \
./rdft/plan.c \
./rdft/dht-r2hc.c \
./rdft/generic.c \
./rdft/hc2hc.c \
./rdft/rdft2-inplace-strides.c \
./rdft/plan2.c \
./rdft/hc2hc-direct.c \
./rdft/rdft2-tensor-max-index.c \
./rdft/problem.c \
./rdft/ct-hc2c-direct.c \
./rdft/vrank-geq1-rdft2.c \
./rdft/buffered.c \
./rdft/problem2.c \
./rdft/dft-r2hc.c \
./rdft/khc2hc.c \
./rdft/dht-rader.c \
./rdft/nop2.c \
./rdft/solve2.c \
./rdft/direct-r2r.c \
./rdft/ct-hc2c.c \
./rdft/rdft2-rdft.c \
./rdft/direct-r2c.c \
./rdft/rank0-rdft2.c \
./rdft/vrank3-transpose.c \
./rdft/vrank-geq1.c \
./rdft/solve.c \
./rdft/scalar/r2c.c \
./rdft/scalar/r2r/e01_8.c \
./rdft/scalar/r2r/codlist.c \
./rdft/scalar/r2r/e10_8.c \
./rdft/scalar/hfb.c \
./rdft/scalar/r2r.c \
./rdft/scalar/r2cf/hc2cfdft_8.c \
./rdft/scalar/r2cf/r2cf_128.c \
./rdft/scalar/r2cf/r2cfII_16.c \
./rdft/scalar/r2cf/hf_20.c \
./rdft/scalar/r2cf/r2cfII_9.c \
./rdft/scalar/r2cf/hc2cfdft_32.c \
./rdft/scalar/r2cf/hc2cfdft_6.c \
./rdft/scalar/r2cf/r2cfII_25.c \
./rdft/scalar/r2cf/hf_25.c \
./rdft/scalar/r2cf/hf_5.c \
./rdft/scalar/r2cf/hc2cf_16.c \
./rdft/scalar/r2cf/hf_12.c \
./rdft/scalar/r2cf/r2cf_16.c \
./rdft/scalar/r2cf/hc2cf_10.c \
./rdft/scalar/r2cf/hc2cf2_4.c \
./rdft/scalar/r2cf/hc2cf2_8.c \
./rdft/scalar/r2cf/r2cf_32.c \
./rdft/scalar/r2cf/r2cfII_8.c \
./rdft/scalar/r2cf/hc2cfdft_2.c \
./rdft/scalar/r2cf/hc2cfdft_12.c \
./rdft/scalar/r2cf/hf_32.c \
./rdft/scalar/r2cf/hc2cf_2.c \
./rdft/scalar/r2cf/r2cfII_7.c \
./rdft/scalar/r2cf/hc2cfdft_4.c \
./rdft/scalar/r2cf/r2cf_64.c \
./rdft/scalar/r2cf/hf_8.c \
./rdft/scalar/r2cf/hf_2.c \
./rdft/scalar/r2cf/r2cf_2.c \
./rdft/scalar/r2cf/r2cf_7.c \
./rdft/scalar/r2cf/hf_3.c \
./rdft/scalar/r2cf/hc2cfdft2_20.c \
./rdft/scalar/r2cf/hc2cf_20.c \
./rdft/scalar/r2cf/hc2cf2_16.c \
./rdft/scalar/r2cf/hc2cf_6.c \
./rdft/scalar/r2cf/hc2cfdft2_4.c \
./rdft/scalar/r2cf/codlist.c \
./rdft/scalar/r2cf/hf2_16.c \
./rdft/scalar/r2cf/r2cf_5.c \
./rdft/scalar/r2cf/r2cf_9.c \
./rdft/scalar/r2cf/hf_10.c \
./rdft/scalar/r2cf/r2cf_11.c \
./rdft/scalar/r2cf/r2cfII_5.c \
./rdft/scalar/r2cf/r2cfII_12.c \
./rdft/scalar/r2cf/r2cf_12.c \
./rdft/scalar/r2cf/r2cf_3.c \
./rdft/scalar/r2cf/hc2cfdft_20.c \
./rdft/scalar/r2cf/r2cfII_4.c \
./rdft/scalar/r2cf/hf_4.c \
./rdft/scalar/r2cf/r2cf_15.c \
./rdft/scalar/r2cf/r2cf_10.c \
./rdft/scalar/r2cf/r2cfII_15.c \
./rdft/scalar/r2cf/hc2cf_12.c \
./rdft/scalar/r2cf/r2cf_13.c \
./rdft/scalar/r2cf/hc2cf_32.c \
./rdft/scalar/r2cf/hf2_4.c \
./rdft/scalar/r2cf/r2cfII_10.c \
./rdft/scalar/r2cf/hc2cf2_20.c \
./rdft/scalar/r2cf/hf2_32.c \
./rdft/scalar/r2cf/r2cfII_64.c \
./rdft/scalar/r2cf/hc2cfdft_16.c \
./rdft/scalar/r2cf/hf2_5.c \
./rdft/scalar/r2cf/r2cfII_6.c \
./rdft/scalar/r2cf/r2cf_20.c \
./rdft/scalar/r2cf/hc2cf_8.c \
./rdft/scalar/r2cf/hf_64.c \
./rdft/scalar/r2cf/r2cf_6.c \
./rdft/scalar/r2cf/hf_9.c \
./rdft/scalar/r2cf/hf2_25.c \
./rdft/scalar/r2cf/hc2cf2_32.c \
./rdft/scalar/r2cf/hf_6.c \
./rdft/scalar/r2cf/hf2_8.c \
./rdft/scalar/r2cf/r2cfII_3.c \
./rdft/scalar/r2cf/hc2cfdft2_16.c \
./rdft/scalar/r2cf/hc2cf_4.c \
./rdft/scalar/r2cf/r2cf_4.c \
./rdft/scalar/r2cf/r2cf_14.c \
./rdft/scalar/r2cf/hc2cfdft2_32.c \
./rdft/scalar/r2cf/hc2cfdft2_8.c \
./rdft/scalar/r2cf/hf_7.c \
./rdft/scalar/r2cf/r2cfII_20.c \
./rdft/scalar/r2cf/hf_15.c \
./rdft/scalar/r2cf/r2cf_25.c \
./rdft/scalar/r2cf/hf2_20.c \
./rdft/scalar/r2cf/hf_16.c \
./rdft/scalar/r2cf/r2cfII_2.c \
./rdft/scalar/r2cf/r2cfII_32.c \
./rdft/scalar/r2cf/hc2cfdft_10.c \
./rdft/scalar/r2cf/r2cf_8.c \
./rdft/scalar/r2cb/r2cb_64.c \
./rdft/scalar/r2cb/hc2cbdft_32.c \
./rdft/scalar/r2cb/hb_64.c \
./rdft/scalar/r2cb/hb_20.c \
./rdft/scalar/r2cb/hb_8.c \
./rdft/scalar/r2cb/r2cbIII_3.c \
./rdft/scalar/r2cb/r2cb_2.c \
./rdft/scalar/r2cb/hb_25.c \
./rdft/scalar/r2cb/r2cb_25.c \
./rdft/scalar/r2cb/hb_9.c \
./rdft/scalar/r2cb/hb_5.c \
./rdft/scalar/r2cb/r2cbIII_9.c \
./rdft/scalar/r2cb/hc2cb_8.c \
./rdft/scalar/r2cb/hb_15.c \
./rdft/scalar/r2cb/hc2cbdft2_32.c \
./rdft/scalar/r2cb/r2cbIII_4.c \
./rdft/scalar/r2cb/r2cb_4.c \
./rdft/scalar/r2cb/hc2cbdft2_8.c \
./rdft/scalar/r2cb/hb_2.c \
./rdft/scalar/r2cb/r2cb_15.c \
./rdft/scalar/r2cb/r2cbIII_32.c \
./rdft/scalar/r2cb/r2cbIII_20.c \
./rdft/scalar/r2cb/hb_3.c \
./rdft/scalar/r2cb/hb_7.c \
./rdft/scalar/r2cb/hc2cb_6.c \
./rdft/scalar/r2cb/hc2cb2_16.c \
./rdft/scalar/r2cb/r2cbIII_6.c \
./rdft/scalar/r2cb/r2cbIII_8.c \
./rdft/scalar/r2cb/hc2cbdft_10.c \
./rdft/scalar/r2cb/r2cb_11.c \
./rdft/scalar/r2cb/r2cb_8.c \
./rdft/scalar/r2cb/r2cb_10.c \
./rdft/scalar/r2cb/hb2_20.c \
./rdft/scalar/r2cb/r2cb_6.c \
./rdft/scalar/r2cb/r2cbIII_12.c \
./rdft/scalar/r2cb/r2cbIII_10.c \
./rdft/scalar/r2cb/r2cbIII_16.c \
./rdft/scalar/r2cb/r2cbIII_5.c \
./rdft/scalar/r2cb/r2cbIII_25.c \
./rdft/scalar/r2cb/hc2cb_16.c \
./rdft/scalar/r2cb/hc2cbdft_8.c \
./rdft/scalar/r2cb/r2cb_16.c \
./rdft/scalar/r2cb/codlist.c \
./rdft/scalar/r2cb/hc2cbdft_4.c \
./rdft/scalar/r2cb/hb2_8.c \
./rdft/scalar/r2cb/hc2cbdft_2.c \
./rdft/scalar/r2cb/hc2cbdft_16.c \
./rdft/scalar/r2cb/r2cbIII_2.c \
./rdft/scalar/r2cb/hb2_32.c \
./rdft/scalar/r2cb/r2cb_32.c \
./rdft/scalar/r2cb/r2cb_5.c \
./rdft/scalar/r2cb/r2cb_9.c \
./rdft/scalar/r2cb/hc2cb_12.c \
./rdft/scalar/r2cb/r2cbIII_64.c \
./rdft/scalar/r2cb/hc2cb_32.c \
./rdft/scalar/r2cb/hb_32.c \
./rdft/scalar/r2cb/r2cb_12.c \
./rdft/scalar/r2cb/hc2cbdft_12.c \
./rdft/scalar/r2cb/r2cbIII_15.c \
./rdft/scalar/r2cb/hc2cb_2.c \
./rdft/scalar/r2cb/hc2cb_10.c \
./rdft/scalar/r2cb/r2cb_128.c \
./rdft/scalar/r2cb/hb2_4.c \
./rdft/scalar/r2cb/hc2cb2_32.c \
./rdft/scalar/r2cb/hb_4.c \
./rdft/scalar/r2cb/hc2cb2_20.c \
./rdft/scalar/r2cb/hb_12.c \
./rdft/scalar/r2cb/hc2cb_4.c \
./rdft/scalar/r2cb/hc2cbdft_20.c \
./rdft/scalar/r2cb/hc2cb_20.c \
./rdft/scalar/r2cb/hc2cb2_4.c \
./rdft/scalar/r2cb/r2cb_20.c \
./rdft/scalar/r2cb/hb2_5.c \
./rdft/scalar/r2cb/r2cb_14.c \
./rdft/scalar/r2cb/r2cb_13.c \
./rdft/scalar/r2cb/hb2_16.c \
./rdft/scalar/r2cb/hc2cbdft2_20.c \
./rdft/scalar/r2cb/hc2cbdft2_16.c \
./rdft/scalar/r2cb/r2cbIII_7.c \
./rdft/scalar/r2cb/hc2cbdft2_4.c \
./rdft/scalar/r2cb/r2cb_7.c \
./rdft/scalar/r2cb/hb_16.c \
./rdft/scalar/r2cb/r2cb_3.c \
./rdft/scalar/r2cb/hb_10.c \
./rdft/scalar/r2cb/hb_6.c \
./rdft/scalar/r2cb/hc2cb2_8.c \
./rdft/scalar/r2cb/hc2cbdft_6.c \
./rdft/scalar/r2cb/hb2_25.c \
./rdft/scalar/hc2c.c \
./rdft/kr2c.c \
./rdft/hc2hc-generic.c \
./rdft/kr2r.c \
./rdft/khc2c.c \
./reodft/conf.c \
./reodft/reodft00e-splitradix.c \
./reodft/reodft11e-r2hc-odd.c \
./reodft/reodft010e-r2hc.c \
./reodft/reodft11e-radix2.c \
./reodft/rodft00e-r2hc-pad.c \
./reodft/redft00e-r2hc-pad.c \
./api/import-wisdom-from-file.c \
./api/mkprinter-str.c \
./api/plan-many-dft-r2c.c \
./api/flops.c \
./api/plan-dft-c2r-3d.c \
./api/the-planner.c \
./api/execute-dft-c2r.c \
./api/print-plan.c \
./api/plan-guru64-r2r.c \
./api/plan-guru64-split-dft-c2r.c \
./api/f77api.c \
./api/plan-guru64-dft-r2c.c \
./api/plan-dft-2d.c \
./api/forget-wisdom.c \
./api/export-wisdom-to-file.c \
./api/version.c \
./api/plan-dft-1d.c \
./api/plan-guru64-split-dft.c \
./api/configure.c \
./api/mktensor-iodims.c \
./api/plan-r2r-1d.c \
./api/mktensor-iodims64.c \
./api/map-r2r-kind.c \
./api/plan-dft-r2c-2d.c \
./api/execute-r2r.c \
./api/plan-guru-split-dft.c \
./api/plan-guru-r2r.c \
./api/plan-dft.c \
./api/execute-split-dft-c2r.c \
./api/plan-dft-c2r-1d.c \
./api/plan-guru-split-dft-r2c.c \
./api/execute-split-dft.c \
./api/plan-dft-r2c.c \
./api/execute-dft-r2c.c \
./api/plan-guru64-dft-c2r.c \
./api/execute.c \
./api/plan-guru-dft-c2r.c \
./api/import-wisdom.c \
./api/plan-r2r-2d.c \
./api/plan-guru-dft.c \
./api/import-wisdom-from-string.c \
./api/malloc.c \
./api/plan-many-dft-c2r.c \
./api/apiplan.c \
./api/mktensor-rowmajor.c \
./api/rdft2-pad.c \
./api/plan-r2r.c \
./api/mkprinter-file.c \
./api/plan-dft-r2c-3d.c \
./api/export-wisdom-to-string.c \
./api/execute-split-dft-r2c.c \
./api/plan-dft-c2r.c \
./api/plan-many-r2r.c \
./api/plan-r2r-3d.c \
./api/import-system-wisdom.c \
./api/execute-dft.c \
./api/export-wisdom.c \
./api/plan-dft-r2c-1d.c \
./api/plan-guru64-split-dft-r2c.c \
./api/plan-guru-split-dft-c2r.c \
./api/mapflags.c \
./api/plan-guru-dft-r2c.c \
./api/plan-guru64-dft.c \
./api/plan-dft-c2r-2d.c \
./api/plan-dft-3d.c \
./api/plan-many-dft.c \
./dft/nop.c \
./dft/indirect.c \
./dft/rank-geq2.c \
./dft/conf.c \
./dft/dftw-direct.c \
./dft/plan.c \
./dft/generic.c \
./dft/bluestein.c \
./dft/dftw-directsq.c \
./dft/ct.c \
./dft/problem.c \
./dft/buffered.c \
./dft/indirect-transpose.c \
./dft/kdft.c \
./dft/rader.c \
./dft/direct.c \
./dft/kdft-dit.c \
./dft/kdft-dif.c \
./dft/dftw-generic.c \
./dft/vrank-geq1.c \
./dft/solve.c \
./dft/scalar/n.c \
./dft/scalar/t.c \
./dft/scalar/codelets/t2_10.c \
./dft/scalar/codelets/t1_32.c \
./dft/scalar/codelets/t2_32.c \
./dft/scalar/codelets/n1_4.c \
./dft/scalar/codelets/t1_16.c \
./dft/scalar/codelets/n1_13.c \
./dft/scalar/codelets/n1_8.c \
./dft/scalar/codelets/n1_7.c \
./dft/scalar/codelets/q1_6.c \
./dft/scalar/codelets/n1_3.c \
./dft/scalar/codelets/t1_10.c \
./dft/scalar/codelets/n1_6.c \
./dft/scalar/codelets/n1_16.c \
./dft/scalar/codelets/q1_2.c \
./dft/scalar/codelets/t1_3.c \
./dft/scalar/codelets/t2_64.c \
./dft/scalar/codelets/q1_8.c \
./dft/scalar/codelets/n1_20.c \
./dft/scalar/codelets/n1_12.c \
./dft/scalar/codelets/t1_12.c \
./dft/scalar/codelets/q1_4.c \
./dft/scalar/codelets/t2_25.c \
./dft/scalar/codelets/t1_25.c \
./dft/scalar/codelets/codlist.c \
./dft/scalar/codelets/t1_2.c \
./dft/scalar/codelets/n1_10.c \
./dft/scalar/codelets/n1_9.c \
./dft/scalar/codelets/q1_3.c \
./dft/scalar/codelets/t2_4.c \
./dft/scalar/codelets/n1_32.c \
./dft/scalar/codelets/t1_7.c \
./dft/scalar/codelets/t1_20.c \
./dft/scalar/codelets/t2_20.c \
./dft/scalar/codelets/t2_16.c \
./dft/scalar/codelets/t1_8.c \
./dft/scalar/codelets/t1_9.c \
./dft/scalar/codelets/t1_4.c \
./dft/scalar/codelets/n1_25.c \
./dft/scalar/codelets/t1_5.c \
./dft/scalar/codelets/n1_14.c \
./dft/scalar/codelets/n1_64.c \
./dft/scalar/codelets/t2_5.c \
./dft/scalar/codelets/q1_5.c \
./dft/scalar/codelets/t1_64.c \
./dft/scalar/codelets/n1_15.c \
./dft/scalar/codelets/n1_5.c \
./dft/scalar/codelets/n1_11.c \
./dft/scalar/codelets/t1_15.c \
./dft/scalar/codelets/n1_2.c \
./dft/scalar/codelets/t2_8.c \
./dft/scalar/codelets/t1_6.c \
./dft/kdft-difsq.c \
./dft/dftw-genericbuf.c \
./dft/zero.c \
./kernel/tensor8.c \
./kernel/tensor1.c \
./kernel/trig.c \
./kernel/hash.c \
./kernel/align.c \
./kernel/plan.c \
./kernel/cpy2d.c \
./kernel/md5.c \
./kernel/tile2d.c \
./kernel/ops.c \
./kernel/planner.c \
./kernel/ct.c \
./kernel/primes.c \
./kernel/kalloc.c \
./kernel/solvtab.c \
./kernel/solver.c \
./kernel/tensor4.c \
./kernel/minmax.c \
./kernel/problem.c \
./kernel/tensor3.c \
./kernel/alloc.c \
./kernel/buffered.c \
./kernel/cpy1d.c \
./kernel/tensor7.c \
./kernel/transpose.c \
./kernel/cpy2d-pair.c \
./kernel/scan.c \
./kernel/extract-reim.c \
./kernel/rader.c \
./kernel/tensor5.c \
./kernel/debug.c \
./kernel/tensor2.c \
./kernel/md5-1.c \
./kernel/twiddle.c \
./kernel/assert.c \
./kernel/tensor.c \
./kernel/timer.c \
./kernel/iabs.c \
./kernel/awake.c \
./kernel/pickdim.c \
./kernel/tensor9.c \
./kernel/print.c \
./kernel/stride.c \
./simd-support/vsx.c \
./simd-support/avx2.c \
./simd-support/kcvi.c \
./simd-support/taint.c \
./simd-support/avx-128-fma.c \
./simd-support/sse2.c \
./simd-support/avx512.c \
./simd-support/avx.c \
./simd-support/altivec.c \
./simd-support/neon.c

INC = \
-I. \
-I./api \
-I./dft \
-I./dft/scalar \
-I./dft/simd \
-I./kernel \
-I./libbench2 \
-I./mpi \
-I./rdft \
-I./rdft/scalar \
-I./rdft/simd \
-I./reodft \
-I./simd-support \
-I./tests \
-I./threads

# you may need to add some archive lib here
# e.g:
#     ALIB = `$(CC) -print-file-name=libc.a` \
#            `$(CC) -print-file-name=libgcc.a`
ALIB =

# you may need to add some share lib here
# e.g:
#     SLIB = -lm \
#            -lfftw3
SLIB = -lm

#----------------------------------------------------------------------
TARGET ?= target

OBJ = $(patsubst %.c, %.o, $(SRC))

$(TARGET) : $(OBJ)
	@echo "  Linking ..."
	@$(CC) $(OBJ) $(ALIB) $(SLIB) -o $(TARGET)
	@echo "  end"

%.o : %.c
	@$(CC) $(CFLAGS) $(INC) -o $@ -c $<
	@echo "  CC    "$<

clean :
	@rm -f $(TARGET) $(OBJ)
	@echo "  clean over"

.PHONY: clean
