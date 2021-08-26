FROM amazon/aws-lambda-nodejs:14

COPY package*.json ${LAMBDA_TASK_ROOT}/
RUN npm ci

COPY . ${LAMBDA_TASK_ROOT}

RUN npm run test
RUN npm run build

CMD [ "dist/app.lambdaHandler" ]
