import { APIGatewayEvent, APIGatewayProxyResult } from 'aws-lambda';

const updateEntity = async (event: APIGatewayEvent) : Promise<APIGatewayProxyResult> => {
    console.log(event);
    const body = 'UPDATE!';
    const response: APIGatewayProxyResult = {
        statusCode: 200,
        headers: {
            "x-custom-header" : "my custom header value"
        },
        body: JSON.stringify(body)
    }
    return response;
};

export {updateEntity as handler};
