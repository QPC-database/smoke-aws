// Copyright 2018-2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//
// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length line_length identifier_name type_name vertical_parameter_alignment
// swiftlint:disable type_body_length function_body_length generic_type_name cyclomatic_complexity
// -- Generated Code; do not edit --
//
// AWSSecurityTokenClient.swift
// SecurityTokenClient
//

import Foundation
import SecurityTokenModel
import SmokeAWSCore
import SmokeHTTPClient
import NIO
import SmokeAWSHttp
import NIO
import NIOHTTP1
import AsyncHTTPClient
import Logging

public enum SecurityTokenClientError: Swift.Error {
    case invalidEndpoint(String)
    case unsupportedPayload
    case unknownError(String?)
}

 extension SecurityTokenError: ConvertableError {
    public static func asUnrecognizedError(error: Swift.Error) -> SecurityTokenError {
        return error.asUnrecognizedSecurityTokenError()
    }
}

/**
 AWS Client for the SecurityToken service.
 */
public struct AWSSecurityTokenClient<InvocationReportingType: HTTPClientCoreInvocationReporting>: SecurityTokenClientProtocol, AWSQueryClientProtocol {
    let httpClient: HTTPOperationsClient
    let ownsHttpClients: Bool
    public let awsRegion: AWSRegion
    public let service: String
    public let apiVersion: String
    public let target: String?
    public let retryConfiguration: HTTPClientRetryConfiguration
    public let retryOnErrorProvider: (SmokeHTTPClient.HTTPClientError) -> Bool
    public let credentialsProvider: CredentialsProvider
    
    public let eventLoopGroup: EventLoopGroup
    public let reporting: InvocationReportingType

    let operationsReporting: SecurityTokenOperationsReporting
    let invocationsReporting: SecurityTokenInvocationsReporting<InvocationReportingType>
    
    public init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion? = nil,
                reporting: InvocationReportingType,
                endpointHostName: String = "sts.amazonaws.com",
                endpointPort: Int = 443,
                requiresTLS: Bool? = nil,
                service: String = "sts",
                contentType: String = "application/octet-stream",
                apiVersion: String = "2011-06-15",
                connectionTimeoutSeconds: Int64 = 10,
                retryConfiguration: HTTPClientRetryConfiguration = .default,
                eventLoopProvider: HTTPClient.EventLoopGroupProvider = .createNew,
                reportingConfiguration: SmokeAWSClientReportingConfiguration<SecurityTokenModelOperations>
                    = SmokeAWSClientReportingConfiguration<SecurityTokenModelOperations>() ) {
        self.eventLoopGroup = AWSClientHelper.getEventLoop(eventLoopGroupProvider: eventLoopProvider)
        let useTLS = requiresTLS ?? AWSHTTPClientDelegate.requiresTLS(forEndpointPort: endpointPort)
        let clientDelegate = XMLAWSHttpClientDelegate<SecurityTokenError>(requiresTLS: useTLS)

        self.httpClient = HTTPOperationsClient(
            endpointHostName: endpointHostName,
            endpointPort: endpointPort,
            contentType: contentType,
            clientDelegate: clientDelegate,
            connectionTimeoutSeconds: connectionTimeoutSeconds,
            eventLoopProvider: .shared(self.eventLoopGroup))
        self.ownsHttpClients = true
        self.awsRegion = awsRegion ?? .us_east_1
        self.service = service
        self.target = nil
        self.credentialsProvider = credentialsProvider
        self.retryConfiguration = retryConfiguration
        self.reporting = reporting
        self.retryOnErrorProvider = { error in error.isRetriable() }
        self.apiVersion = apiVersion
        self.operationsReporting = SecurityTokenOperationsReporting(clientName: "AWSSecurityTokenClient", reportingConfiguration: reportingConfiguration)
        self.invocationsReporting = SecurityTokenInvocationsReporting(reporting: reporting, operationsReporting: self.operationsReporting)
    }
    
    internal init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion? = nil,
                reporting: InvocationReportingType,
                httpClient: HTTPOperationsClient,
                service: String,
                apiVersion: String,
                eventLoopGroup: EventLoopGroup,
                retryOnErrorProvider: @escaping (SmokeHTTPClient.HTTPClientError) -> Bool,
                retryConfiguration: HTTPClientRetryConfiguration,
                operationsReporting: SecurityTokenOperationsReporting) {
        self.eventLoopGroup = eventLoopGroup
        self.httpClient = httpClient
        self.ownsHttpClients = false
        self.awsRegion = awsRegion ?? .us_east_1
        self.service = service
        self.target = nil
        self.credentialsProvider = credentialsProvider
        self.retryConfiguration = retryConfiguration
        self.reporting = reporting
        self.retryOnErrorProvider = retryOnErrorProvider
        self.apiVersion = apiVersion
        self.operationsReporting = operationsReporting
        self.invocationsReporting = SecurityTokenInvocationsReporting(reporting: reporting, operationsReporting: self.operationsReporting)
    }

    /**
     Gracefully shuts down this client. This function is idempotent and
     will handle being called multiple times.
     */
    public func close() throws {
        if self.ownsHttpClients {
            try httpClient.close()
        }
    }

    /**
     Invokes the AssumeRole operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AssumeRoleRequest object being passed to this operation.
     - Returns: A future to the AssumeRoleResponseForAssumeRole object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: expiredToken, malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    public func assumeRole(
            input: SecurityTokenModel.AssumeRoleRequest) -> EventLoopFuture<SecurityTokenModel.AssumeRoleResponseForAssumeRole> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: AssumeRoleOperationHTTPRequestInput(encodable: input),
                                 action: SecurityTokenModelOperations.assumeRole.rawValue,
                                 reporting: self.invocationsReporting.assumeRole,
                                 errorType: SecurityTokenError.self)
    }

    /**
     Invokes the AssumeRoleWithSAML operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AssumeRoleWithSAMLRequest object being passed to this operation.
     - Returns: A future to the AssumeRoleWithSAMLResponseForAssumeRoleWithSAML object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: expiredToken, iDPRejectedClaim, invalidIdentityToken, malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    public func assumeRoleWithSAML(
            input: SecurityTokenModel.AssumeRoleWithSAMLRequest) -> EventLoopFuture<SecurityTokenModel.AssumeRoleWithSAMLResponseForAssumeRoleWithSAML> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: AssumeRoleWithSAMLOperationHTTPRequestInput(encodable: input),
                                 action: SecurityTokenModelOperations.assumeRoleWithSAML.rawValue,
                                 reporting: self.invocationsReporting.assumeRoleWithSAML,
                                 errorType: SecurityTokenError.self)
    }

    /**
     Invokes the AssumeRoleWithWebIdentity operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AssumeRoleWithWebIdentityRequest object being passed to this operation.
     - Returns: A future to the AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: expiredToken, iDPCommunicationError, iDPRejectedClaim, invalidIdentityToken, malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    public func assumeRoleWithWebIdentity(
            input: SecurityTokenModel.AssumeRoleWithWebIdentityRequest) -> EventLoopFuture<SecurityTokenModel.AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: AssumeRoleWithWebIdentityOperationHTTPRequestInput(encodable: input),
                                 action: SecurityTokenModelOperations.assumeRoleWithWebIdentity.rawValue,
                                 reporting: self.invocationsReporting.assumeRoleWithWebIdentity,
                                 errorType: SecurityTokenError.self)
    }

    /**
     Invokes the DecodeAuthorizationMessage operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DecodeAuthorizationMessageRequest object being passed to this operation.
     - Returns: A future to the DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidAuthorizationMessage.
     */
    public func decodeAuthorizationMessage(
            input: SecurityTokenModel.DecodeAuthorizationMessageRequest) -> EventLoopFuture<SecurityTokenModel.DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DecodeAuthorizationMessageOperationHTTPRequestInput(encodable: input),
                                 action: SecurityTokenModelOperations.decodeAuthorizationMessage.rawValue,
                                 reporting: self.invocationsReporting.decodeAuthorizationMessage,
                                 errorType: SecurityTokenError.self)
    }

    /**
     Invokes the GetAccessKeyInfo operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetAccessKeyInfoRequest object being passed to this operation.
     - Returns: A future to the GetAccessKeyInfoResponseForGetAccessKeyInfo object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getAccessKeyInfo(
            input: SecurityTokenModel.GetAccessKeyInfoRequest) -> EventLoopFuture<SecurityTokenModel.GetAccessKeyInfoResponseForGetAccessKeyInfo> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: GetAccessKeyInfoOperationHTTPRequestInput(encodable: input),
                                 action: SecurityTokenModelOperations.getAccessKeyInfo.rawValue,
                                 reporting: self.invocationsReporting.getAccessKeyInfo,
                                 errorType: SecurityTokenError.self)
    }

    /**
     Invokes the GetCallerIdentity operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetCallerIdentityRequest object being passed to this operation.
     - Returns: A future to the GetCallerIdentityResponseForGetCallerIdentity object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getCallerIdentity(
            input: SecurityTokenModel.GetCallerIdentityRequest) -> EventLoopFuture<SecurityTokenModel.GetCallerIdentityResponseForGetCallerIdentity> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: GetCallerIdentityOperationHTTPRequestInput(encodable: input),
                                 action: SecurityTokenModelOperations.getCallerIdentity.rawValue,
                                 reporting: self.invocationsReporting.getCallerIdentity,
                                 errorType: SecurityTokenError.self)
    }

    /**
     Invokes the GetFederationToken operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetFederationTokenRequest object being passed to this operation.
     - Returns: A future to the GetFederationTokenResponseForGetFederationToken object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    public func getFederationToken(
            input: SecurityTokenModel.GetFederationTokenRequest) -> EventLoopFuture<SecurityTokenModel.GetFederationTokenResponseForGetFederationToken> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: GetFederationTokenOperationHTTPRequestInput(encodable: input),
                                 action: SecurityTokenModelOperations.getFederationToken.rawValue,
                                 reporting: self.invocationsReporting.getFederationToken,
                                 errorType: SecurityTokenError.self)
    }

    /**
     Invokes the GetSessionToken operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetSessionTokenRequest object being passed to this operation.
     - Returns: A future to the GetSessionTokenResponseForGetSessionToken object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: regionDisabled.
     */
    public func getSessionToken(
            input: SecurityTokenModel.GetSessionTokenRequest) -> EventLoopFuture<SecurityTokenModel.GetSessionTokenResponseForGetSessionToken> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: GetSessionTokenOperationHTTPRequestInput(encodable: input),
                                 action: SecurityTokenModelOperations.getSessionToken.rawValue,
                                 reporting: self.invocationsReporting.getSessionToken,
                                 errorType: SecurityTokenError.self)
    }
}
