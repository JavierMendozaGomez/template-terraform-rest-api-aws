import { APIGatewayEvent, APIGatewayProxyResult } from 'aws-lambda';

const deleteEntity = async (event: APIGatewayEvent) : Promise<APIGatewayProxyResult> => {
    console.log(event)
    const body = 'DELETED!'
    const response: APIGatewayProxyResult = {
        statusCode: 200,
        headers: {
            "x-custom-header" : "my custom header value"
        },
        body: JSON.stringify(body)
    }
    return response;
};

export {deleteEntity as handler};
