//
//  AWSClientProtocol.swift
//

import SmokeHTTPClient
import SmokeAWSCore
import NIO

public protocol AWSClientProtocol {
    var awsRegion: AWSRegion { get }
    var service: String { get }
    var target: String? { get }
    var retryConfiguration: HTTPClientRetryConfiguration { get }
    var retryOnErrorProvider: (SmokeHTTPClient.HTTPClientError) -> Bool { get }
    var credentialsProvider: CredentialsProvider { get }
}

public extension AWSClientProtocol {
    func executeWithoutOutput<InvocationReportingType: HTTPClientInvocationReporting, InputType: HTTPRequestInputProtocol>(
            httpClient: HTTPOperationsClient,
            requestInput: InputType,
            operation: String,
            reporting: InvocationReportingType) -> EventLoopFuture<Void> {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: operation,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: reporting,
                                                            handlerDelegate: handlerDelegate)

        return httpClient.executeAsEventLoopFutureRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }
    
    func executeWithOutput<OutputType: HTTPResponseOutputProtocol, InvocationReportingType: HTTPClientInvocationReporting,
                           InputType: HTTPRequestInputProtocol>(
            httpClient: HTTPOperationsClient,
            requestInput: InputType,
            operation: String,
            reporting: InvocationReportingType) -> EventLoopFuture<OutputType> {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    operation: operation,
                    target: target)

        let invocationContext = HTTPClientInvocationContext(reporting: reporting,
                                                            handlerDelegate: handlerDelegate)

        return httpClient.executeAsEventLoopFutureRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }
}
