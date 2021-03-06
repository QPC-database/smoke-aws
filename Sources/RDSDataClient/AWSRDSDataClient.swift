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
// AWSRDSDataClient.swift
// RDSDataClient
//

import Foundation
import RDSDataModel
import SmokeAWSCore
import SmokeHTTPClient
import NIO
import SmokeAWSHttp
import NIO
import NIOHTTP1
import AsyncHTTPClient
import Logging

public enum RDSDataClientError: Swift.Error {
    case invalidEndpoint(String)
    case unsupportedPayload
    case unknownError(String?)
}

 extension RDSDataError: ConvertableError {
    public static func asUnrecognizedError(error: Swift.Error) -> RDSDataError {
        return error.asUnrecognizedRDSDataError()
    }
}

/**
 AWS Client for the RDSData service.
 */
public struct AWSRDSDataClient<InvocationReportingType: HTTPClientCoreInvocationReporting>: RDSDataClientProtocol, AWSClientProtocol {
    let httpClient: HTTPOperationsClient
    let ownsHttpClients: Bool
    public let awsRegion: AWSRegion
    public let service: String
    public let target: String?
    public let retryConfiguration: HTTPClientRetryConfiguration
    public let retryOnErrorProvider: (SmokeHTTPClient.HTTPClientError) -> Bool
    public let credentialsProvider: CredentialsProvider
    
    public let eventLoopProvider: HTTPClient.EventLoopGroupProvider
    public let reporting: InvocationReportingType

    let operationsReporting: RDSDataOperationsReporting
    let invocationsReporting: RDSDataInvocationsReporting<InvocationReportingType>
    
    public init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                reporting: InvocationReportingType,
                endpointHostName: String,
                endpointPort: Int = 443,
                requiresTLS: Bool? = nil,
                service: String = "rds-data",
                contentType: String = "application/x-amz-rest-json-1.1",
                target: String? = nil,
                connectionTimeoutSeconds: Int64 = 10,
                retryConfiguration: HTTPClientRetryConfiguration = .default,
                eventLoopProvider: HTTPClient.EventLoopGroupProvider = .createNew,
                reportingConfiguration: SmokeAWSClientReportingConfiguration<RDSDataModelOperations>
                    = SmokeAWSClientReportingConfiguration<RDSDataModelOperations>() ) {
        let useTLS = requiresTLS ?? AWSHTTPClientDelegate.requiresTLS(forEndpointPort: endpointPort)
        let clientDelegate = JSONAWSHttpClientDelegate<RDSDataError>(requiresTLS: useTLS)

        self.httpClient = HTTPOperationsClient(
            endpointHostName: endpointHostName,
            endpointPort: endpointPort,
            contentType: contentType,
            clientDelegate: clientDelegate,
            connectionTimeoutSeconds: connectionTimeoutSeconds,
            eventLoopProvider: eventLoopProvider)
        self.ownsHttpClients = true
        self.awsRegion = awsRegion
        self.service = service
        self.target = target
        self.credentialsProvider = credentialsProvider
        self.eventLoopProvider = eventLoopProvider
        self.retryConfiguration = retryConfiguration
        self.reporting = reporting
        self.retryOnErrorProvider = { error in error.isRetriable() }
        self.operationsReporting = RDSDataOperationsReporting(clientName: "AWSRDSDataClient", reportingConfiguration: reportingConfiguration)
        self.invocationsReporting = RDSDataInvocationsReporting(reporting: reporting, operationsReporting: self.operationsReporting)
    }
    
    internal init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                reporting: InvocationReportingType,
                httpClient: HTTPOperationsClient,
                service: String,
                target: String?,
                eventLoopProvider: HTTPClient.EventLoopGroupProvider,
                retryOnErrorProvider: @escaping (SmokeHTTPClient.HTTPClientError) -> Bool,
                retryConfiguration: HTTPClientRetryConfiguration,
                operationsReporting: RDSDataOperationsReporting) {
        self.httpClient = httpClient
        self.ownsHttpClients = false
        self.awsRegion = awsRegion
        self.service = service
        self.target = target
        self.credentialsProvider = credentialsProvider
        self.eventLoopProvider = eventLoopProvider
        self.retryConfiguration = retryConfiguration
        self.reporting = reporting
        self.retryOnErrorProvider = retryOnErrorProvider
        self.operationsReporting = operationsReporting
        self.invocationsReporting = RDSDataInvocationsReporting(reporting: reporting, operationsReporting: self.operationsReporting)
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
     Invokes the BatchExecuteStatement operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated BatchExecuteStatementRequest object being passed to this operation.
     - Returns: A future to the BatchExecuteStatementResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: badRequest, forbidden, internalServerError, serviceUnavailable, statementTimeout.
     */
    public func batchExecuteStatement(
            input: RDSDataModel.BatchExecuteStatementRequest) -> EventLoopFuture<RDSDataModel.BatchExecuteStatementResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: BatchExecuteStatementOperationHTTPRequestInput(encodable: input),
                                 operation: RDSDataModelOperations.batchExecuteStatement.rawValue,
                                 reporting: self.invocationsReporting.batchExecuteStatement)
    }

    /**
     Invokes the BeginTransaction operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated BeginTransactionRequest object being passed to this operation.
     - Returns: A future to the BeginTransactionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: badRequest, forbidden, internalServerError, serviceUnavailable, statementTimeout.
     */
    public func beginTransaction(
            input: RDSDataModel.BeginTransactionRequest) -> EventLoopFuture<RDSDataModel.BeginTransactionResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: BeginTransactionOperationHTTPRequestInput(encodable: input),
                                 operation: RDSDataModelOperations.beginTransaction.rawValue,
                                 reporting: self.invocationsReporting.beginTransaction)
    }

    /**
     Invokes the CommitTransaction operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CommitTransactionRequest object being passed to this operation.
     - Returns: A future to the CommitTransactionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: badRequest, forbidden, internalServerError, notFound, serviceUnavailable, statementTimeout.
     */
    public func commitTransaction(
            input: RDSDataModel.CommitTransactionRequest) -> EventLoopFuture<RDSDataModel.CommitTransactionResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: CommitTransactionOperationHTTPRequestInput(encodable: input),
                                 operation: RDSDataModelOperations.commitTransaction.rawValue,
                                 reporting: self.invocationsReporting.commitTransaction)
    }

    /**
     Invokes the ExecuteSql operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ExecuteSqlRequest object being passed to this operation.
     - Returns: A future to the ExecuteSqlResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: badRequest, forbidden, internalServerError, serviceUnavailable.
     */
    public func executeSql(
            input: RDSDataModel.ExecuteSqlRequest) -> EventLoopFuture<RDSDataModel.ExecuteSqlResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: ExecuteSqlOperationHTTPRequestInput(encodable: input),
                                 operation: RDSDataModelOperations.executeSql.rawValue,
                                 reporting: self.invocationsReporting.executeSql)
    }

    /**
     Invokes the ExecuteStatement operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ExecuteStatementRequest object being passed to this operation.
     - Returns: A future to the ExecuteStatementResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: badRequest, forbidden, internalServerError, serviceUnavailable, statementTimeout.
     */
    public func executeStatement(
            input: RDSDataModel.ExecuteStatementRequest) -> EventLoopFuture<RDSDataModel.ExecuteStatementResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: ExecuteStatementOperationHTTPRequestInput(encodable: input),
                                 operation: RDSDataModelOperations.executeStatement.rawValue,
                                 reporting: self.invocationsReporting.executeStatement)
    }

    /**
     Invokes the RollbackTransaction operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RollbackTransactionRequest object being passed to this operation.
     - Returns: A future to the RollbackTransactionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: badRequest, forbidden, internalServerError, notFound, serviceUnavailable, statementTimeout.
     */
    public func rollbackTransaction(
            input: RDSDataModel.RollbackTransactionRequest) -> EventLoopFuture<RDSDataModel.RollbackTransactionResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: RollbackTransactionOperationHTTPRequestInput(encodable: input),
                                 operation: RDSDataModelOperations.rollbackTransaction.rawValue,
                                 reporting: self.invocationsReporting.rollbackTransaction)
    }
}
