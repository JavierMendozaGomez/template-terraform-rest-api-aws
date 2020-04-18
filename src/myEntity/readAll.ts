import { APIGatewayEvent, APIGatewayProxyResult } from 'aws-lambda';

const readAllEntity = async (event: APIGatewayEvent) : Promise<APIGatewayProxyResult> => {
    console.log(event)
    const body = 'READALL!';
    const response: APIGatewayProxyResult = {
        statusCode: 200,
        headers: {
            "x-custom-header" : "my custom header value"
        },
        body: JSON.stringify(body)
    }
    return response;
};

export {readAllEntity as handler};
