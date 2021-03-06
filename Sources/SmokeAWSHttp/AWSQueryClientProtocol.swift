//
//  AWSClientProtocol.swift
//

import SmokeHTTPClient
import SmokeAWSCore
import NIO

public protocol AWSQueryClientProtocol {
    var awsRegion: AWSRegion { get }
    var service: String { get }
    var apiVersion: String { get }
    var target: String? { get }
    var retryConfiguration: HTTPClientRetryConfiguration { get }
    var retryOnErrorProvider: (SmokeHTTPClient.HTTPClientError) -> Bool { get }
    var credentialsProvider: CredentialsProvider { get }
}

public extension AWSQueryClientProtocol {
    func executeWithoutOutput<InvocationReportingType: HTTPClientInvocationReporting, WrappedInputType: HTTPRequestInputProtocol>(
            httpClient: HTTPOperationsClient,
            wrappedInput: WrappedInputType,
            action: String,
            reporting: InvocationReportingType) -> EventLoopFuture<Void> {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: reporting,
                                                            handlerDelegate: handlerDelegate)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: action,
            version: apiVersion)

        return httpClient.executeAsEventLoopFutureRetriableWithoutOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }
        
    func executeWithOutput<OutputType: HTTPResponseOutputProtocol, InvocationReportingType: HTTPClientInvocationReporting,
                                WrappedInputType: HTTPRequestInputProtocol>(
            httpClient: HTTPOperationsClient,
            wrappedInput: WrappedInputType,
            action: String,
            reporting: InvocationReportingType) -> EventLoopFuture<OutputType> {
        let handlerDelegate = AWSClientInvocationDelegate(
                    credentialsProvider: credentialsProvider,
                    awsRegion: awsRegion,
                    service: service,
                    target: target)
        
        let invocationContext = HTTPClientInvocationContext(reporting: reporting,
                                                            handlerDelegate: handlerDelegate)
        
        let requestInput = QueryWrapperHTTPRequestInput(
            wrappedInput: wrappedInput,
            action: action,
            version: apiVersion)

        return httpClient.executeAsEventLoopFutureRetriableWithOutput(
            endpointPath: "/",
            httpMethod: .POST,
            input: requestInput,
            invocationContext: invocationContext,
            retryConfiguration: retryConfiguration,
            retryOnError: retryOnErrorProvider)
    }
}
