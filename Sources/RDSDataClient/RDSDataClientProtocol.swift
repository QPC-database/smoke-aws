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
// RDSDataClientProtocol.swift
// RDSDataClient
//

import Foundation
import RDSDataModel
import SmokeAWSCore
import SmokeHTTPClient
import NIO

/**
 Client Protocol for the RDSData service.
 */
public protocol RDSDataClientProtocol {
    typealias BatchExecuteStatementEventLoopFutureAsyncType = (
            _ input: RDSDataModel.BatchExecuteStatementRequest) -> EventLoopFuture<RDSDataModel.BatchExecuteStatementResponse>
    typealias BeginTransactionEventLoopFutureAsyncType = (
            _ input: RDSDataModel.BeginTransactionRequest) -> EventLoopFuture<RDSDataModel.BeginTransactionResponse>
    typealias CommitTransactionEventLoopFutureAsyncType = (
            _ input: RDSDataModel.CommitTransactionRequest) -> EventLoopFuture<RDSDataModel.CommitTransactionResponse>
    typealias ExecuteSqlEventLoopFutureAsyncType = (
            _ input: RDSDataModel.ExecuteSqlRequest) -> EventLoopFuture<RDSDataModel.ExecuteSqlResponse>
    typealias ExecuteStatementEventLoopFutureAsyncType = (
            _ input: RDSDataModel.ExecuteStatementRequest) -> EventLoopFuture<RDSDataModel.ExecuteStatementResponse>
    typealias RollbackTransactionEventLoopFutureAsyncType = (
            _ input: RDSDataModel.RollbackTransactionRequest) -> EventLoopFuture<RDSDataModel.RollbackTransactionResponse>

    /**
     Invokes the BatchExecuteStatement operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated BatchExecuteStatementRequest object being passed to this operation.
     - Returns: A future to the BatchExecuteStatementResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: badRequest, forbidden, internalServerError, serviceUnavailable, statementTimeout.
     */
    func batchExecuteStatement(
            input: RDSDataModel.BatchExecuteStatementRequest) -> EventLoopFuture<RDSDataModel.BatchExecuteStatementResponse>

    /**
     Invokes the BeginTransaction operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated BeginTransactionRequest object being passed to this operation.
     - Returns: A future to the BeginTransactionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: badRequest, forbidden, internalServerError, serviceUnavailable, statementTimeout.
     */
    func beginTransaction(
            input: RDSDataModel.BeginTransactionRequest) -> EventLoopFuture<RDSDataModel.BeginTransactionResponse>

    /**
     Invokes the CommitTransaction operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CommitTransactionRequest object being passed to this operation.
     - Returns: A future to the CommitTransactionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: badRequest, forbidden, internalServerError, notFound, serviceUnavailable, statementTimeout.
     */
    func commitTransaction(
            input: RDSDataModel.CommitTransactionRequest) -> EventLoopFuture<RDSDataModel.CommitTransactionResponse>

    /**
     Invokes the ExecuteSql operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ExecuteSqlRequest object being passed to this operation.
     - Returns: A future to the ExecuteSqlResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: badRequest, forbidden, internalServerError, serviceUnavailable.
     */
    func executeSql(
            input: RDSDataModel.ExecuteSqlRequest) -> EventLoopFuture<RDSDataModel.ExecuteSqlResponse>

    /**
     Invokes the ExecuteStatement operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ExecuteStatementRequest object being passed to this operation.
     - Returns: A future to the ExecuteStatementResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: badRequest, forbidden, internalServerError, serviceUnavailable, statementTimeout.
     */
    func executeStatement(
            input: RDSDataModel.ExecuteStatementRequest) -> EventLoopFuture<RDSDataModel.ExecuteStatementResponse>

    /**
     Invokes the RollbackTransaction operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RollbackTransactionRequest object being passed to this operation.
     - Returns: A future to the RollbackTransactionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: badRequest, forbidden, internalServerError, notFound, serviceUnavailable, statementTimeout.
     */
    func rollbackTransaction(
            input: RDSDataModel.RollbackTransactionRequest) -> EventLoopFuture<RDSDataModel.RollbackTransactionResponse>
}
