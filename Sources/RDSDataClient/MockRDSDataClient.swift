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
// MockRDSDataClient.swift
// RDSDataClient
//

import Foundation
import RDSDataModel
import SmokeAWSCore
import SmokeHTTPClient
import NIO

/**
 Mock Client for the RDSData service by default returns the `__default` property of its return type.
 */
public struct MockRDSDataClient: RDSDataClientProtocol {
    let eventLoop: EventLoop
    let typedErrorProvider: (Swift.Error) -> RDSDataError = { $0.asTypedError() }
    let batchExecuteStatementEventLoopFutureAsyncOverride: BatchExecuteStatementEventLoopFutureAsyncType?
    let beginTransactionEventLoopFutureAsyncOverride: BeginTransactionEventLoopFutureAsyncType?
    let commitTransactionEventLoopFutureAsyncOverride: CommitTransactionEventLoopFutureAsyncType?
    let executeSqlEventLoopFutureAsyncOverride: ExecuteSqlEventLoopFutureAsyncType?
    let executeStatementEventLoopFutureAsyncOverride: ExecuteStatementEventLoopFutureAsyncType?
    let rollbackTransactionEventLoopFutureAsyncOverride: RollbackTransactionEventLoopFutureAsyncType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(
            eventLoop: EventLoop,
            batchExecuteStatementEventLoopFutureAsync: BatchExecuteStatementEventLoopFutureAsyncType? = nil,
            beginTransactionEventLoopFutureAsync: BeginTransactionEventLoopFutureAsyncType? = nil,
            commitTransactionEventLoopFutureAsync: CommitTransactionEventLoopFutureAsyncType? = nil,
            executeSqlEventLoopFutureAsync: ExecuteSqlEventLoopFutureAsyncType? = nil,
            executeStatementEventLoopFutureAsync: ExecuteStatementEventLoopFutureAsyncType? = nil,
            rollbackTransactionEventLoopFutureAsync: RollbackTransactionEventLoopFutureAsyncType? = nil) {
        self.eventLoop = eventLoop
        
        self.batchExecuteStatementEventLoopFutureAsyncOverride = batchExecuteStatementEventLoopFutureAsync
        self.beginTransactionEventLoopFutureAsyncOverride = beginTransactionEventLoopFutureAsync
        self.commitTransactionEventLoopFutureAsyncOverride = commitTransactionEventLoopFutureAsync
        self.executeSqlEventLoopFutureAsyncOverride = executeSqlEventLoopFutureAsync
        self.executeStatementEventLoopFutureAsyncOverride = executeStatementEventLoopFutureAsync
        self.rollbackTransactionEventLoopFutureAsyncOverride = rollbackTransactionEventLoopFutureAsync
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
        if let batchExecuteStatementEventLoopFutureAsyncOverride = batchExecuteStatementEventLoopFutureAsyncOverride {
            return batchExecuteStatementEventLoopFutureAsyncOverride(input)
        }

        let result = BatchExecuteStatementResponse.__default
        
        let promise = self.eventLoop.makePromise(of: BatchExecuteStatementResponse.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let beginTransactionEventLoopFutureAsyncOverride = beginTransactionEventLoopFutureAsyncOverride {
            return beginTransactionEventLoopFutureAsyncOverride(input)
        }

        let result = BeginTransactionResponse.__default
        
        let promise = self.eventLoop.makePromise(of: BeginTransactionResponse.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let commitTransactionEventLoopFutureAsyncOverride = commitTransactionEventLoopFutureAsyncOverride {
            return commitTransactionEventLoopFutureAsyncOverride(input)
        }

        let result = CommitTransactionResponse.__default
        
        let promise = self.eventLoop.makePromise(of: CommitTransactionResponse.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let executeSqlEventLoopFutureAsyncOverride = executeSqlEventLoopFutureAsyncOverride {
            return executeSqlEventLoopFutureAsyncOverride(input)
        }

        let result = ExecuteSqlResponse.__default
        
        let promise = self.eventLoop.makePromise(of: ExecuteSqlResponse.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let executeStatementEventLoopFutureAsyncOverride = executeStatementEventLoopFutureAsyncOverride {
            return executeStatementEventLoopFutureAsyncOverride(input)
        }

        let result = ExecuteStatementResponse.__default
        
        let promise = self.eventLoop.makePromise(of: ExecuteStatementResponse.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let rollbackTransactionEventLoopFutureAsyncOverride = rollbackTransactionEventLoopFutureAsyncOverride {
            return rollbackTransactionEventLoopFutureAsyncOverride(input)
        }

        let result = RollbackTransactionResponse.__default
        
        let promise = self.eventLoop.makePromise(of: RollbackTransactionResponse.self)
        promise.succeed(result)
        
        return promise.futureResult
    }
}
