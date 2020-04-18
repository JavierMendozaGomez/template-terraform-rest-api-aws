import { APIGatewayEvent, APIGatewayProxyResult } from 'aws-lambda';

const readEntity = async (event: APIGatewayEvent) : Promise<APIGatewayProxyResult> => {
    console.log(event)
    const body = 'READ!'
    const response: APIGatewayProxyResult = {
        statusCode: 200,
        headers: {
            "x-custom-header" : "my custom header value"
        },
        body: JSON.stringify(body)
    }
    return response;
};

export {readEntity as handler};
