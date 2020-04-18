import { APIGatewayEvent, APIGatewayProxyResult } from 'aws-lambda';

const createEntity = async (event: APIGatewayEvent) : Promise<APIGatewayProxyResult> => {
    console.log(event)
    const body = 'CREATED!'
    const response: APIGatewayProxyResult = {
        statusCode: 200,
        headers: {
            "x-custom-header" : "my custom header value"
        },
        body: JSON.stringify(body)
    }
    return response;
};

export {createEntity as handler};
