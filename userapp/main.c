#include "fftw3.h"
#include <math.h>

// sample dots
#define CONFIG_SAMPLEDOTS      (800)

// sample rate. unit: Hz
#define CONFIG_SAMPLERATE      (200)

// the input signal
#define CONFIG_INPUTSIGNAL(x)  (34.35 * sin(2 * PI * 11.19 * (x)) + 278.93 * sin(2 * PI * 52.46 * (x)) + 45.92)

#define PI                     (3.1415926)
#define REAL(x)                ((x)[0])        // x: fftw_complex *x; usage: REAL(x[3])
#define IMAG(x)                ((x)[1])        // x: fftw_complex *x; usage: IMAG(x[3])
#define ABS(x)                 sqrt((x)[0] * (x)[0] + (x)[1] * (x)[1])
#define STR1(R)                #R
#define STR2(R)                STR1(R)

int main(void) {
    double *in;
    fftw_complex *out;
    fftw_plan p;

    in = (double *)fftw_malloc(sizeof(double) * CONFIG_SAMPLEDOTS);
    out = (fftw_complex *)fftw_malloc(sizeof(fftw_complex) * CONFIG_SAMPLEDOTS);

    // [1]! construct the input signal
    int i;
    for (i = 0; i < CONFIG_SAMPLEDOTS; i++) {
        in[i] = CONFIG_INPUTSIGNAL((double)i / CONFIG_SAMPLERATE);
    }

    // [2]! calculate the FFT
    p = fftw_plan_dft_r2c_1d(CONFIG_SAMPLEDOTS, in, out, FFTW_ESTIMATE);
    fftw_execute(p); /* repeat as needed */

    // [3]! print the output signal
    printf("the input signal f(t)=%s\n", STR2(CONFIG_INPUTSIGNAL(t)));
    printf("sample rate=%dHz\n", CONFIG_SAMPLERATE);
    printf("sample dots=%d\n", CONFIG_SAMPLEDOTS);
    printf("\n");
    printf("seq freq amp\n");
    printf("==============================\n");
    for (i = 0; i < CONFIG_SAMPLEDOTS / 2 + 1; i++) {
        if (i == 0) {
            printf("%d, %fHz, %f\n", i, (double)i / CONFIG_SAMPLEDOTS * CONFIG_SAMPLERATE, ABS(out[i]) / CONFIG_SAMPLEDOTS);
            continue;
        }
        printf("%d, %fHz, %f\n", i, (double)i / CONFIG_SAMPLEDOTS * CONFIG_SAMPLERATE, ABS(out[i]) * 2.0 / CONFIG_SAMPLEDOTS);
    }

    fftw_destroy_plan(p);
    fftw_free(in);
    fftw_free(out);

    return 0;
}

