# LCSD Captcha Solver

## Description
The captcha solver uses [attention-based OCR deep learning model](https://arxiv.org/pdf/1609.04938.pdf) for the [Leisure and Cultural Services Department (LCSD) of Hong Kong SAR Government](https://www.lcsd.gov.hk/tc/index.html) Online Booking system with TensorFlow Serving.
<br>

## Prerequisites
- [Docker](https://www.docker.com/)

## Installation
To build the TensorFlow model with AOCR support image, run the following command:
```bash
docker build -t tf-aocr:v1 .
```

To start the containers with TensorFlow Serving, run the following command:
```bash
docker-compose up -d
```

## Usage

### Captcha Solving Prediction API
1. Download the image from the LCSD Online Booking system.
2. Dilate the captcha image to make the characters more distinguishable.
3. Convert the captcha image to grayscale.
4. Crop the captcha image to 79x32 and 92x32 for 4 and 5 characters captcha.
5. Post the captcha image to the TensorFlow Serving API with:
```
For 4 characters captcha:
http://localhost:9000/v1/models/lcsd-captcha-4:predict

For 5 characters captcha:
http://localhost:9001/v1/models/lcsd-captcha-5:predict

For 4 characters captcha in the same docker-compose file:
http://tf-aocr-lcsd-4:8501/v1/models/lcsd-captcha-4:predict

For 5 characters captcha in the same docker-compose file:
http://tf-aocr-lcsd-5:8501/v1/models/lcsd-captcha-5:predict
```
6. Get the prediction result from the response.

## Acknowledgements
This project is based on a model by [Qi Guo](http://qiguo.ml) and [Yuntian Deng](https://github.com/da03).
<br>
You can find the original model in the [da03/Attention-OCR](https://github.com/da03/Attention-OCR) repository.
<br>
The TensorFlow version of the model is available in the [@emedvedev/attention-ocr](https://github.com/emedvedev/attention-ocr)
## References
- [TensorFlow Serving](https://www.tensorflow.org/tfx/serving/docker)
- [Pypi AOCR](https://pypi.org/project/aocr/)
- [@emedvedev/attention-ocr](https://github.com/emedvedev/attention-ocr)
