import { Context, Handler } from "aws-lambda"

export const lambdaHandler: Handler = async (event, context: Context) => {
    return Promise.resolve("hello");
}
