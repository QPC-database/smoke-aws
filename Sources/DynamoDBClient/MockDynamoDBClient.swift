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
// MockDynamoDBClient.swift
// DynamoDBClient
//

import Foundation
import DynamoDBModel
import SmokeAWSCore
import SmokeHTTPClient
import NIO

/**
 Mock Client for the DynamoDB service by default returns the `__default` property of its return type.
 */
public struct MockDynamoDBClient: DynamoDBClientProtocol {
    let eventLoop: EventLoop
    let typedErrorProvider: (Swift.Error) -> DynamoDBError = { $0.asTypedError() }
    let batchExecuteStatementEventLoopFutureAsyncOverride: BatchExecuteStatementEventLoopFutureAsyncType?
    let batchGetItemEventLoopFutureAsyncOverride: BatchGetItemEventLoopFutureAsyncType?
    let batchWriteItemEventLoopFutureAsyncOverride: BatchWriteItemEventLoopFutureAsyncType?
    let createBackupEventLoopFutureAsyncOverride: CreateBackupEventLoopFutureAsyncType?
    let createGlobalTableEventLoopFutureAsyncOverride: CreateGlobalTableEventLoopFutureAsyncType?
    let createTableEventLoopFutureAsyncOverride: CreateTableEventLoopFutureAsyncType?
    let deleteBackupEventLoopFutureAsyncOverride: DeleteBackupEventLoopFutureAsyncType?
    let deleteItemEventLoopFutureAsyncOverride: DeleteItemEventLoopFutureAsyncType?
    let deleteTableEventLoopFutureAsyncOverride: DeleteTableEventLoopFutureAsyncType?
    let describeBackupEventLoopFutureAsyncOverride: DescribeBackupEventLoopFutureAsyncType?
    let describeContinuousBackupsEventLoopFutureAsyncOverride: DescribeContinuousBackupsEventLoopFutureAsyncType?
    let describeContributorInsightsEventLoopFutureAsyncOverride: DescribeContributorInsightsEventLoopFutureAsyncType?
    let describeEndpointsEventLoopFutureAsyncOverride: DescribeEndpointsEventLoopFutureAsyncType?
    let describeExportEventLoopFutureAsyncOverride: DescribeExportEventLoopFutureAsyncType?
    let describeGlobalTableEventLoopFutureAsyncOverride: DescribeGlobalTableEventLoopFutureAsyncType?
    let describeGlobalTableSettingsEventLoopFutureAsyncOverride: DescribeGlobalTableSettingsEventLoopFutureAsyncType?
    let describeKinesisStreamingDestinationEventLoopFutureAsyncOverride: DescribeKinesisStreamingDestinationEventLoopFutureAsyncType?
    let describeLimitsEventLoopFutureAsyncOverride: DescribeLimitsEventLoopFutureAsyncType?
    let describeTableEventLoopFutureAsyncOverride: DescribeTableEventLoopFutureAsyncType?
    let describeTableReplicaAutoScalingEventLoopFutureAsyncOverride: DescribeTableReplicaAutoScalingEventLoopFutureAsyncType?
    let describeTimeToLiveEventLoopFutureAsyncOverride: DescribeTimeToLiveEventLoopFutureAsyncType?
    let disableKinesisStreamingDestinationEventLoopFutureAsyncOverride: DisableKinesisStreamingDestinationEventLoopFutureAsyncType?
    let enableKinesisStreamingDestinationEventLoopFutureAsyncOverride: EnableKinesisStreamingDestinationEventLoopFutureAsyncType?
    let executeStatementEventLoopFutureAsyncOverride: ExecuteStatementEventLoopFutureAsyncType?
    let executeTransactionEventLoopFutureAsyncOverride: ExecuteTransactionEventLoopFutureAsyncType?
    let exportTableToPointInTimeEventLoopFutureAsyncOverride: ExportTableToPointInTimeEventLoopFutureAsyncType?
    let getItemEventLoopFutureAsyncOverride: GetItemEventLoopFutureAsyncType?
    let listBackupsEventLoopFutureAsyncOverride: ListBackupsEventLoopFutureAsyncType?
    let listContributorInsightsEventLoopFutureAsyncOverride: ListContributorInsightsEventLoopFutureAsyncType?
    let listExportsEventLoopFutureAsyncOverride: ListExportsEventLoopFutureAsyncType?
    let listGlobalTablesEventLoopFutureAsyncOverride: ListGlobalTablesEventLoopFutureAsyncType?
    let listTablesEventLoopFutureAsyncOverride: ListTablesEventLoopFutureAsyncType?
    let listTagsOfResourceEventLoopFutureAsyncOverride: ListTagsOfResourceEventLoopFutureAsyncType?
    let putItemEventLoopFutureAsyncOverride: PutItemEventLoopFutureAsyncType?
    let queryEventLoopFutureAsyncOverride: QueryEventLoopFutureAsyncType?
    let restoreTableFromBackupEventLoopFutureAsyncOverride: RestoreTableFromBackupEventLoopFutureAsyncType?
    let restoreTableToPointInTimeEventLoopFutureAsyncOverride: RestoreTableToPointInTimeEventLoopFutureAsyncType?
    let scanEventLoopFutureAsyncOverride: ScanEventLoopFutureAsyncType?
    let tagResourceEventLoopFutureAsyncOverride: TagResourceEventLoopFutureAsyncType?
    let transactGetItemsEventLoopFutureAsyncOverride: TransactGetItemsEventLoopFutureAsyncType?
    let transactWriteItemsEventLoopFutureAsyncOverride: TransactWriteItemsEventLoopFutureAsyncType?
    let untagResourceEventLoopFutureAsyncOverride: UntagResourceEventLoopFutureAsyncType?
    let updateContinuousBackupsEventLoopFutureAsyncOverride: UpdateContinuousBackupsEventLoopFutureAsyncType?
    let updateContributorInsightsEventLoopFutureAsyncOverride: UpdateContributorInsightsEventLoopFutureAsyncType?
    let updateGlobalTableEventLoopFutureAsyncOverride: UpdateGlobalTableEventLoopFutureAsyncType?
    let updateGlobalTableSettingsEventLoopFutureAsyncOverride: UpdateGlobalTableSettingsEventLoopFutureAsyncType?
    let updateItemEventLoopFutureAsyncOverride: UpdateItemEventLoopFutureAsyncType?
    let updateTableEventLoopFutureAsyncOverride: UpdateTableEventLoopFutureAsyncType?
    let updateTableReplicaAutoScalingEventLoopFutureAsyncOverride: UpdateTableReplicaAutoScalingEventLoopFutureAsyncType?
    let updateTimeToLiveEventLoopFutureAsyncOverride: UpdateTimeToLiveEventLoopFutureAsyncType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(
            eventLoop: EventLoop,
            batchExecuteStatementEventLoopFutureAsync: BatchExecuteStatementEventLoopFutureAsyncType? = nil,
            batchGetItemEventLoopFutureAsync: BatchGetItemEventLoopFutureAsyncType? = nil,
            batchWriteItemEventLoopFutureAsync: BatchWriteItemEventLoopFutureAsyncType? = nil,
            createBackupEventLoopFutureAsync: CreateBackupEventLoopFutureAsyncType? = nil,
            createGlobalTableEventLoopFutureAsync: CreateGlobalTableEventLoopFutureAsyncType? = nil,
            createTableEventLoopFutureAsync: CreateTableEventLoopFutureAsyncType? = nil,
            deleteBackupEventLoopFutureAsync: DeleteBackupEventLoopFutureAsyncType? = nil,
            deleteItemEventLoopFutureAsync: DeleteItemEventLoopFutureAsyncType? = nil,
            deleteTableEventLoopFutureAsync: DeleteTableEventLoopFutureAsyncType? = nil,
            describeBackupEventLoopFutureAsync: DescribeBackupEventLoopFutureAsyncType? = nil,
            describeContinuousBackupsEventLoopFutureAsync: DescribeContinuousBackupsEventLoopFutureAsyncType? = nil,
            describeContributorInsightsEventLoopFutureAsync: DescribeContributorInsightsEventLoopFutureAsyncType? = nil,
            describeEndpointsEventLoopFutureAsync: DescribeEndpointsEventLoopFutureAsyncType? = nil,
            describeExportEventLoopFutureAsync: DescribeExportEventLoopFutureAsyncType? = nil,
            describeGlobalTableEventLoopFutureAsync: DescribeGlobalTableEventLoopFutureAsyncType? = nil,
            describeGlobalTableSettingsEventLoopFutureAsync: DescribeGlobalTableSettingsEventLoopFutureAsyncType? = nil,
            describeKinesisStreamingDestinationEventLoopFutureAsync: DescribeKinesisStreamingDestinationEventLoopFutureAsyncType? = nil,
            describeLimitsEventLoopFutureAsync: DescribeLimitsEventLoopFutureAsyncType? = nil,
            describeTableEventLoopFutureAsync: DescribeTableEventLoopFutureAsyncType? = nil,
            describeTableReplicaAutoScalingEventLoopFutureAsync: DescribeTableReplicaAutoScalingEventLoopFutureAsyncType? = nil,
            describeTimeToLiveEventLoopFutureAsync: DescribeTimeToLiveEventLoopFutureAsyncType? = nil,
            disableKinesisStreamingDestinationEventLoopFutureAsync: DisableKinesisStreamingDestinationEventLoopFutureAsyncType? = nil,
            enableKinesisStreamingDestinationEventLoopFutureAsync: EnableKinesisStreamingDestinationEventLoopFutureAsyncType? = nil,
            executeStatementEventLoopFutureAsync: ExecuteStatementEventLoopFutureAsyncType? = nil,
            executeTransactionEventLoopFutureAsync: ExecuteTransactionEventLoopFutureAsyncType? = nil,
            exportTableToPointInTimeEventLoopFutureAsync: ExportTableToPointInTimeEventLoopFutureAsyncType? = nil,
            getItemEventLoopFutureAsync: GetItemEventLoopFutureAsyncType? = nil,
            listBackupsEventLoopFutureAsync: ListBackupsEventLoopFutureAsyncType? = nil,
            listContributorInsightsEventLoopFutureAsync: ListContributorInsightsEventLoopFutureAsyncType? = nil,
            listExportsEventLoopFutureAsync: ListExportsEventLoopFutureAsyncType? = nil,
            listGlobalTablesEventLoopFutureAsync: ListGlobalTablesEventLoopFutureAsyncType? = nil,
            listTablesEventLoopFutureAsync: ListTablesEventLoopFutureAsyncType? = nil,
            listTagsOfResourceEventLoopFutureAsync: ListTagsOfResourceEventLoopFutureAsyncType? = nil,
            putItemEventLoopFutureAsync: PutItemEventLoopFutureAsyncType? = nil,
            queryEventLoopFutureAsync: QueryEventLoopFutureAsyncType? = nil,
            restoreTableFromBackupEventLoopFutureAsync: RestoreTableFromBackupEventLoopFutureAsyncType? = nil,
            restoreTableToPointInTimeEventLoopFutureAsync: RestoreTableToPointInTimeEventLoopFutureAsyncType? = nil,
            scanEventLoopFutureAsync: ScanEventLoopFutureAsyncType? = nil,
            tagResourceEventLoopFutureAsync: TagResourceEventLoopFutureAsyncType? = nil,
            transactGetItemsEventLoopFutureAsync: TransactGetItemsEventLoopFutureAsyncType? = nil,
            transactWriteItemsEventLoopFutureAsync: TransactWriteItemsEventLoopFutureAsyncType? = nil,
            untagResourceEventLoopFutureAsync: UntagResourceEventLoopFutureAsyncType? = nil,
            updateContinuousBackupsEventLoopFutureAsync: UpdateContinuousBackupsEventLoopFutureAsyncType? = nil,
            updateContributorInsightsEventLoopFutureAsync: UpdateContributorInsightsEventLoopFutureAsyncType? = nil,
            updateGlobalTableEventLoopFutureAsync: UpdateGlobalTableEventLoopFutureAsyncType? = nil,
            updateGlobalTableSettingsEventLoopFutureAsync: UpdateGlobalTableSettingsEventLoopFutureAsyncType? = nil,
            updateItemEventLoopFutureAsync: UpdateItemEventLoopFutureAsyncType? = nil,
            updateTableEventLoopFutureAsync: UpdateTableEventLoopFutureAsyncType? = nil,
            updateTableReplicaAutoScalingEventLoopFutureAsync: UpdateTableReplicaAutoScalingEventLoopFutureAsyncType? = nil,
            updateTimeToLiveEventLoopFutureAsync: UpdateTimeToLiveEventLoopFutureAsyncType? = nil) {
        self.eventLoop = eventLoop
        
        self.batchExecuteStatementEventLoopFutureAsyncOverride = batchExecuteStatementEventLoopFutureAsync
        self.batchGetItemEventLoopFutureAsyncOverride = batchGetItemEventLoopFutureAsync
        self.batchWriteItemEventLoopFutureAsyncOverride = batchWriteItemEventLoopFutureAsync
        self.createBackupEventLoopFutureAsyncOverride = createBackupEventLoopFutureAsync
        self.createGlobalTableEventLoopFutureAsyncOverride = createGlobalTableEventLoopFutureAsync
        self.createTableEventLoopFutureAsyncOverride = createTableEventLoopFutureAsync
        self.deleteBackupEventLoopFutureAsyncOverride = deleteBackupEventLoopFutureAsync
        self.deleteItemEventLoopFutureAsyncOverride = deleteItemEventLoopFutureAsync
        self.deleteTableEventLoopFutureAsyncOverride = deleteTableEventLoopFutureAsync
        self.describeBackupEventLoopFutureAsyncOverride = describeBackupEventLoopFutureAsync
        self.describeContinuousBackupsEventLoopFutureAsyncOverride = describeContinuousBackupsEventLoopFutureAsync
        self.describeContributorInsightsEventLoopFutureAsyncOverride = describeContributorInsightsEventLoopFutureAsync
        self.describeEndpointsEventLoopFutureAsyncOverride = describeEndpointsEventLoopFutureAsync
        self.describeExportEventLoopFutureAsyncOverride = describeExportEventLoopFutureAsync
        self.describeGlobalTableEventLoopFutureAsyncOverride = describeGlobalTableEventLoopFutureAsync
        self.describeGlobalTableSettingsEventLoopFutureAsyncOverride = describeGlobalTableSettingsEventLoopFutureAsync
        self.describeKinesisStreamingDestinationEventLoopFutureAsyncOverride = describeKinesisStreamingDestinationEventLoopFutureAsync
        self.describeLimitsEventLoopFutureAsyncOverride = describeLimitsEventLoopFutureAsync
        self.describeTableEventLoopFutureAsyncOverride = describeTableEventLoopFutureAsync
        self.describeTableReplicaAutoScalingEventLoopFutureAsyncOverride = describeTableReplicaAutoScalingEventLoopFutureAsync
        self.describeTimeToLiveEventLoopFutureAsyncOverride = describeTimeToLiveEventLoopFutureAsync
        self.disableKinesisStreamingDestinationEventLoopFutureAsyncOverride = disableKinesisStreamingDestinationEventLoopFutureAsync
        self.enableKinesisStreamingDestinationEventLoopFutureAsyncOverride = enableKinesisStreamingDestinationEventLoopFutureAsync
        self.executeStatementEventLoopFutureAsyncOverride = executeStatementEventLoopFutureAsync
        self.executeTransactionEventLoopFutureAsyncOverride = executeTransactionEventLoopFutureAsync
        self.exportTableToPointInTimeEventLoopFutureAsyncOverride = exportTableToPointInTimeEventLoopFutureAsync
        self.getItemEventLoopFutureAsyncOverride = getItemEventLoopFutureAsync
        self.listBackupsEventLoopFutureAsyncOverride = listBackupsEventLoopFutureAsync
        self.listContributorInsightsEventLoopFutureAsyncOverride = listContributorInsightsEventLoopFutureAsync
        self.listExportsEventLoopFutureAsyncOverride = listExportsEventLoopFutureAsync
        self.listGlobalTablesEventLoopFutureAsyncOverride = listGlobalTablesEventLoopFutureAsync
        self.listTablesEventLoopFutureAsyncOverride = listTablesEventLoopFutureAsync
        self.listTagsOfResourceEventLoopFutureAsyncOverride = listTagsOfResourceEventLoopFutureAsync
        self.putItemEventLoopFutureAsyncOverride = putItemEventLoopFutureAsync
        self.queryEventLoopFutureAsyncOverride = queryEventLoopFutureAsync
        self.restoreTableFromBackupEventLoopFutureAsyncOverride = restoreTableFromBackupEventLoopFutureAsync
        self.restoreTableToPointInTimeEventLoopFutureAsyncOverride = restoreTableToPointInTimeEventLoopFutureAsync
        self.scanEventLoopFutureAsyncOverride = scanEventLoopFutureAsync
        self.tagResourceEventLoopFutureAsyncOverride = tagResourceEventLoopFutureAsync
        self.transactGetItemsEventLoopFutureAsyncOverride = transactGetItemsEventLoopFutureAsync
        self.transactWriteItemsEventLoopFutureAsyncOverride = transactWriteItemsEventLoopFutureAsync
        self.untagResourceEventLoopFutureAsyncOverride = untagResourceEventLoopFutureAsync
        self.updateContinuousBackupsEventLoopFutureAsyncOverride = updateContinuousBackupsEventLoopFutureAsync
        self.updateContributorInsightsEventLoopFutureAsyncOverride = updateContributorInsightsEventLoopFutureAsync
        self.updateGlobalTableEventLoopFutureAsyncOverride = updateGlobalTableEventLoopFutureAsync
        self.updateGlobalTableSettingsEventLoopFutureAsyncOverride = updateGlobalTableSettingsEventLoopFutureAsync
        self.updateItemEventLoopFutureAsyncOverride = updateItemEventLoopFutureAsync
        self.updateTableEventLoopFutureAsyncOverride = updateTableEventLoopFutureAsync
        self.updateTableReplicaAutoScalingEventLoopFutureAsyncOverride = updateTableReplicaAutoScalingEventLoopFutureAsync
        self.updateTimeToLiveEventLoopFutureAsyncOverride = updateTimeToLiveEventLoopFutureAsync
    }

    /**
     Invokes the BatchExecuteStatement operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated BatchExecuteStatementInput object being passed to this operation.
     - Returns: A future to the BatchExecuteStatementOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: internalServer, requestLimitExceeded.
     */
    public func batchExecuteStatement(
            input: DynamoDBModel.BatchExecuteStatementInput) -> EventLoopFuture<DynamoDBModel.BatchExecuteStatementOutput> {
        if let batchExecuteStatementEventLoopFutureAsyncOverride = batchExecuteStatementEventLoopFutureAsyncOverride {
            return batchExecuteStatementEventLoopFutureAsyncOverride(input)
        }

        let result = BatchExecuteStatementOutput.__default
        
        let promise = self.eventLoop.makePromise(of: BatchExecuteStatementOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the BatchGetItem operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated BatchGetItemInput object being passed to this operation.
     - Returns: A future to the BatchGetItemOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound.
     */
    public func batchGetItem(
            input: DynamoDBModel.BatchGetItemInput) -> EventLoopFuture<DynamoDBModel.BatchGetItemOutput> {
        if let batchGetItemEventLoopFutureAsyncOverride = batchGetItemEventLoopFutureAsyncOverride {
            return batchGetItemEventLoopFutureAsyncOverride(input)
        }

        let result = BatchGetItemOutput.__default
        
        let promise = self.eventLoop.makePromise(of: BatchGetItemOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the BatchWriteItem operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated BatchWriteItemInput object being passed to this operation.
     - Returns: A future to the BatchWriteItemOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: internalServer, itemCollectionSizeLimitExceeded, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound.
     */
    public func batchWriteItem(
            input: DynamoDBModel.BatchWriteItemInput) -> EventLoopFuture<DynamoDBModel.BatchWriteItemOutput> {
        if let batchWriteItemEventLoopFutureAsyncOverride = batchWriteItemEventLoopFutureAsyncOverride {
            return batchWriteItemEventLoopFutureAsyncOverride(input)
        }

        let result = BatchWriteItemOutput.__default
        
        let promise = self.eventLoop.makePromise(of: BatchWriteItemOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the CreateBackup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateBackupInput object being passed to this operation.
     - Returns: A future to the CreateBackupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: backupInUse, continuousBackupsUnavailable, internalServer, limitExceeded, tableInUse, tableNotFound.
     */
    public func createBackup(
            input: DynamoDBModel.CreateBackupInput) -> EventLoopFuture<DynamoDBModel.CreateBackupOutput> {
        if let createBackupEventLoopFutureAsyncOverride = createBackupEventLoopFutureAsyncOverride {
            return createBackupEventLoopFutureAsyncOverride(input)
        }

        let result = CreateBackupOutput.__default
        
        let promise = self.eventLoop.makePromise(of: CreateBackupOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the CreateGlobalTable operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateGlobalTableInput object being passed to this operation.
     - Returns: A future to the CreateGlobalTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: globalTableAlreadyExists, internalServer, limitExceeded, tableNotFound.
     */
    public func createGlobalTable(
            input: DynamoDBModel.CreateGlobalTableInput) -> EventLoopFuture<DynamoDBModel.CreateGlobalTableOutput> {
        if let createGlobalTableEventLoopFutureAsyncOverride = createGlobalTableEventLoopFutureAsyncOverride {
            return createGlobalTableEventLoopFutureAsyncOverride(input)
        }

        let result = CreateGlobalTableOutput.__default
        
        let promise = self.eventLoop.makePromise(of: CreateGlobalTableOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the CreateTable operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateTableInput object being passed to this operation.
     - Returns: A future to the CreateTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: internalServer, limitExceeded, resourceInUse.
     */
    public func createTable(
            input: DynamoDBModel.CreateTableInput) -> EventLoopFuture<DynamoDBModel.CreateTableOutput> {
        if let createTableEventLoopFutureAsyncOverride = createTableEventLoopFutureAsyncOverride {
            return createTableEventLoopFutureAsyncOverride(input)
        }

        let result = CreateTableOutput.__default
        
        let promise = self.eventLoop.makePromise(of: CreateTableOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DeleteBackup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteBackupInput object being passed to this operation.
     - Returns: A future to the DeleteBackupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: backupInUse, backupNotFound, internalServer, limitExceeded.
     */
    public func deleteBackup(
            input: DynamoDBModel.DeleteBackupInput) -> EventLoopFuture<DynamoDBModel.DeleteBackupOutput> {
        if let deleteBackupEventLoopFutureAsyncOverride = deleteBackupEventLoopFutureAsyncOverride {
            return deleteBackupEventLoopFutureAsyncOverride(input)
        }

        let result = DeleteBackupOutput.__default
        
        let promise = self.eventLoop.makePromise(of: DeleteBackupOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DeleteItem operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteItemInput object being passed to this operation.
     - Returns: A future to the DeleteItemOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: conditionalCheckFailed, internalServer, itemCollectionSizeLimitExceeded, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionConflict.
     */
    public func deleteItem(
            input: DynamoDBModel.DeleteItemInput) -> EventLoopFuture<DynamoDBModel.DeleteItemOutput> {
        if let deleteItemEventLoopFutureAsyncOverride = deleteItemEventLoopFutureAsyncOverride {
            return deleteItemEventLoopFutureAsyncOverride(input)
        }

        let result = DeleteItemOutput.__default
        
        let promise = self.eventLoop.makePromise(of: DeleteItemOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DeleteTable operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteTableInput object being passed to this operation.
     - Returns: A future to the DeleteTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    public func deleteTable(
            input: DynamoDBModel.DeleteTableInput) -> EventLoopFuture<DynamoDBModel.DeleteTableOutput> {
        if let deleteTableEventLoopFutureAsyncOverride = deleteTableEventLoopFutureAsyncOverride {
            return deleteTableEventLoopFutureAsyncOverride(input)
        }

        let result = DeleteTableOutput.__default
        
        let promise = self.eventLoop.makePromise(of: DeleteTableOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeBackup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeBackupInput object being passed to this operation.
     - Returns: A future to the DescribeBackupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: backupNotFound, internalServer.
     */
    public func describeBackup(
            input: DynamoDBModel.DescribeBackupInput) -> EventLoopFuture<DynamoDBModel.DescribeBackupOutput> {
        if let describeBackupEventLoopFutureAsyncOverride = describeBackupEventLoopFutureAsyncOverride {
            return describeBackupEventLoopFutureAsyncOverride(input)
        }

        let result = DescribeBackupOutput.__default
        
        let promise = self.eventLoop.makePromise(of: DescribeBackupOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeContinuousBackups operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeContinuousBackupsInput object being passed to this operation.
     - Returns: A future to the DescribeContinuousBackupsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: internalServer, tableNotFound.
     */
    public func describeContinuousBackups(
            input: DynamoDBModel.DescribeContinuousBackupsInput) -> EventLoopFuture<DynamoDBModel.DescribeContinuousBackupsOutput> {
        if let describeContinuousBackupsEventLoopFutureAsyncOverride = describeContinuousBackupsEventLoopFutureAsyncOverride {
            return describeContinuousBackupsEventLoopFutureAsyncOverride(input)
        }

        let result = DescribeContinuousBackupsOutput.__default
        
        let promise = self.eventLoop.makePromise(of: DescribeContinuousBackupsOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeContributorInsights operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeContributorInsightsInput object being passed to this operation.
     - Returns: A future to the DescribeContributorInsightsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: internalServer, resourceNotFound.
     */
    public func describeContributorInsights(
            input: DynamoDBModel.DescribeContributorInsightsInput) -> EventLoopFuture<DynamoDBModel.DescribeContributorInsightsOutput> {
        if let describeContributorInsightsEventLoopFutureAsyncOverride = describeContributorInsightsEventLoopFutureAsyncOverride {
            return describeContributorInsightsEventLoopFutureAsyncOverride(input)
        }

        let result = DescribeContributorInsightsOutput.__default
        
        let promise = self.eventLoop.makePromise(of: DescribeContributorInsightsOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeEndpoints operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeEndpointsRequest object being passed to this operation.
     - Returns: A future to the DescribeEndpointsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeEndpoints(
            input: DynamoDBModel.DescribeEndpointsRequest) -> EventLoopFuture<DynamoDBModel.DescribeEndpointsResponse> {
        if let describeEndpointsEventLoopFutureAsyncOverride = describeEndpointsEventLoopFutureAsyncOverride {
            return describeEndpointsEventLoopFutureAsyncOverride(input)
        }

        let result = DescribeEndpointsResponse.__default
        
        let promise = self.eventLoop.makePromise(of: DescribeEndpointsResponse.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeExport operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeExportInput object being passed to this operation.
     - Returns: A future to the DescribeExportOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: exportNotFound, internalServer, limitExceeded.
     */
    public func describeExport(
            input: DynamoDBModel.DescribeExportInput) -> EventLoopFuture<DynamoDBModel.DescribeExportOutput> {
        if let describeExportEventLoopFutureAsyncOverride = describeExportEventLoopFutureAsyncOverride {
            return describeExportEventLoopFutureAsyncOverride(input)
        }

        let result = DescribeExportOutput.__default
        
        let promise = self.eventLoop.makePromise(of: DescribeExportOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeGlobalTable operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeGlobalTableInput object being passed to this operation.
     - Returns: A future to the DescribeGlobalTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: globalTableNotFound, internalServer.
     */
    public func describeGlobalTable(
            input: DynamoDBModel.DescribeGlobalTableInput) -> EventLoopFuture<DynamoDBModel.DescribeGlobalTableOutput> {
        if let describeGlobalTableEventLoopFutureAsyncOverride = describeGlobalTableEventLoopFutureAsyncOverride {
            return describeGlobalTableEventLoopFutureAsyncOverride(input)
        }

        let result = DescribeGlobalTableOutput.__default
        
        let promise = self.eventLoop.makePromise(of: DescribeGlobalTableOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeGlobalTableSettings operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeGlobalTableSettingsInput object being passed to this operation.
     - Returns: A future to the DescribeGlobalTableSettingsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: globalTableNotFound, internalServer.
     */
    public func describeGlobalTableSettings(
            input: DynamoDBModel.DescribeGlobalTableSettingsInput) -> EventLoopFuture<DynamoDBModel.DescribeGlobalTableSettingsOutput> {
        if let describeGlobalTableSettingsEventLoopFutureAsyncOverride = describeGlobalTableSettingsEventLoopFutureAsyncOverride {
            return describeGlobalTableSettingsEventLoopFutureAsyncOverride(input)
        }

        let result = DescribeGlobalTableSettingsOutput.__default
        
        let promise = self.eventLoop.makePromise(of: DescribeGlobalTableSettingsOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeKinesisStreamingDestination operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeKinesisStreamingDestinationInput object being passed to this operation.
     - Returns: A future to the DescribeKinesisStreamingDestinationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: internalServer, resourceNotFound.
     */
    public func describeKinesisStreamingDestination(
            input: DynamoDBModel.DescribeKinesisStreamingDestinationInput) -> EventLoopFuture<DynamoDBModel.DescribeKinesisStreamingDestinationOutput> {
        if let describeKinesisStreamingDestinationEventLoopFutureAsyncOverride = describeKinesisStreamingDestinationEventLoopFutureAsyncOverride {
            return describeKinesisStreamingDestinationEventLoopFutureAsyncOverride(input)
        }

        let result = DescribeKinesisStreamingDestinationOutput.__default
        
        let promise = self.eventLoop.makePromise(of: DescribeKinesisStreamingDestinationOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeLimits operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeLimitsInput object being passed to this operation.
     - Returns: A future to the DescribeLimitsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: internalServer.
     */
    public func describeLimits(
            input: DynamoDBModel.DescribeLimitsInput) -> EventLoopFuture<DynamoDBModel.DescribeLimitsOutput> {
        if let describeLimitsEventLoopFutureAsyncOverride = describeLimitsEventLoopFutureAsyncOverride {
            return describeLimitsEventLoopFutureAsyncOverride(input)
        }

        let result = DescribeLimitsOutput.__default
        
        let promise = self.eventLoop.makePromise(of: DescribeLimitsOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeTable operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeTableInput object being passed to this operation.
     - Returns: A future to the DescribeTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: internalServer, resourceNotFound.
     */
    public func describeTable(
            input: DynamoDBModel.DescribeTableInput) -> EventLoopFuture<DynamoDBModel.DescribeTableOutput> {
        if let describeTableEventLoopFutureAsyncOverride = describeTableEventLoopFutureAsyncOverride {
            return describeTableEventLoopFutureAsyncOverride(input)
        }

        let result = DescribeTableOutput.__default
        
        let promise = self.eventLoop.makePromise(of: DescribeTableOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeTableReplicaAutoScaling operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeTableReplicaAutoScalingInput object being passed to this operation.
     - Returns: A future to the DescribeTableReplicaAutoScalingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: internalServer, resourceNotFound.
     */
    public func describeTableReplicaAutoScaling(
            input: DynamoDBModel.DescribeTableReplicaAutoScalingInput) -> EventLoopFuture<DynamoDBModel.DescribeTableReplicaAutoScalingOutput> {
        if let describeTableReplicaAutoScalingEventLoopFutureAsyncOverride = describeTableReplicaAutoScalingEventLoopFutureAsyncOverride {
            return describeTableReplicaAutoScalingEventLoopFutureAsyncOverride(input)
        }

        let result = DescribeTableReplicaAutoScalingOutput.__default
        
        let promise = self.eventLoop.makePromise(of: DescribeTableReplicaAutoScalingOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeTimeToLive operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeTimeToLiveInput object being passed to this operation.
     - Returns: A future to the DescribeTimeToLiveOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: internalServer, resourceNotFound.
     */
    public func describeTimeToLive(
            input: DynamoDBModel.DescribeTimeToLiveInput) -> EventLoopFuture<DynamoDBModel.DescribeTimeToLiveOutput> {
        if let describeTimeToLiveEventLoopFutureAsyncOverride = describeTimeToLiveEventLoopFutureAsyncOverride {
            return describeTimeToLiveEventLoopFutureAsyncOverride(input)
        }

        let result = DescribeTimeToLiveOutput.__default
        
        let promise = self.eventLoop.makePromise(of: DescribeTimeToLiveOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DisableKinesisStreamingDestination operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated KinesisStreamingDestinationInput object being passed to this operation.
     - Returns: A future to the KinesisStreamingDestinationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    public func disableKinesisStreamingDestination(
            input: DynamoDBModel.KinesisStreamingDestinationInput) -> EventLoopFuture<DynamoDBModel.KinesisStreamingDestinationOutput> {
        if let disableKinesisStreamingDestinationEventLoopFutureAsyncOverride = disableKinesisStreamingDestinationEventLoopFutureAsyncOverride {
            return disableKinesisStreamingDestinationEventLoopFutureAsyncOverride(input)
        }

        let result = KinesisStreamingDestinationOutput.__default
        
        let promise = self.eventLoop.makePromise(of: KinesisStreamingDestinationOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the EnableKinesisStreamingDestination operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated KinesisStreamingDestinationInput object being passed to this operation.
     - Returns: A future to the KinesisStreamingDestinationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    public func enableKinesisStreamingDestination(
            input: DynamoDBModel.KinesisStreamingDestinationInput) -> EventLoopFuture<DynamoDBModel.KinesisStreamingDestinationOutput> {
        if let enableKinesisStreamingDestinationEventLoopFutureAsyncOverride = enableKinesisStreamingDestinationEventLoopFutureAsyncOverride {
            return enableKinesisStreamingDestinationEventLoopFutureAsyncOverride(input)
        }

        let result = KinesisStreamingDestinationOutput.__default
        
        let promise = self.eventLoop.makePromise(of: KinesisStreamingDestinationOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the ExecuteStatement operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ExecuteStatementInput object being passed to this operation.
     - Returns: A future to the ExecuteStatementOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: conditionalCheckFailed, duplicateItem, internalServer, itemCollectionSizeLimitExceeded, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionConflict.
     */
    public func executeStatement(
            input: DynamoDBModel.ExecuteStatementInput) -> EventLoopFuture<DynamoDBModel.ExecuteStatementOutput> {
        if let executeStatementEventLoopFutureAsyncOverride = executeStatementEventLoopFutureAsyncOverride {
            return executeStatementEventLoopFutureAsyncOverride(input)
        }

        let result = ExecuteStatementOutput.__default
        
        let promise = self.eventLoop.makePromise(of: ExecuteStatementOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the ExecuteTransaction operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ExecuteTransactionInput object being passed to this operation.
     - Returns: A future to the ExecuteTransactionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: idempotentParameterMismatch, internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionCanceled, transactionInProgress.
     */
    public func executeTransaction(
            input: DynamoDBModel.ExecuteTransactionInput) -> EventLoopFuture<DynamoDBModel.ExecuteTransactionOutput> {
        if let executeTransactionEventLoopFutureAsyncOverride = executeTransactionEventLoopFutureAsyncOverride {
            return executeTransactionEventLoopFutureAsyncOverride(input)
        }

        let result = ExecuteTransactionOutput.__default
        
        let promise = self.eventLoop.makePromise(of: ExecuteTransactionOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the ExportTableToPointInTime operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ExportTableToPointInTimeInput object being passed to this operation.
     - Returns: A future to the ExportTableToPointInTimeOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: exportConflict, internalServer, invalidExportTime, limitExceeded, pointInTimeRecoveryUnavailable, tableNotFound.
     */
    public func exportTableToPointInTime(
            input: DynamoDBModel.ExportTableToPointInTimeInput) -> EventLoopFuture<DynamoDBModel.ExportTableToPointInTimeOutput> {
        if let exportTableToPointInTimeEventLoopFutureAsyncOverride = exportTableToPointInTimeEventLoopFutureAsyncOverride {
            return exportTableToPointInTimeEventLoopFutureAsyncOverride(input)
        }

        let result = ExportTableToPointInTimeOutput.__default
        
        let promise = self.eventLoop.makePromise(of: ExportTableToPointInTimeOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the GetItem operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetItemInput object being passed to this operation.
     - Returns: A future to the GetItemOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound.
     */
    public func getItem(
            input: DynamoDBModel.GetItemInput) -> EventLoopFuture<DynamoDBModel.GetItemOutput> {
        if let getItemEventLoopFutureAsyncOverride = getItemEventLoopFutureAsyncOverride {
            return getItemEventLoopFutureAsyncOverride(input)
        }

        let result = GetItemOutput.__default
        
        let promise = self.eventLoop.makePromise(of: GetItemOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the ListBackups operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListBackupsInput object being passed to this operation.
     - Returns: A future to the ListBackupsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: internalServer.
     */
    public func listBackups(
            input: DynamoDBModel.ListBackupsInput) -> EventLoopFuture<DynamoDBModel.ListBackupsOutput> {
        if let listBackupsEventLoopFutureAsyncOverride = listBackupsEventLoopFutureAsyncOverride {
            return listBackupsEventLoopFutureAsyncOverride(input)
        }

        let result = ListBackupsOutput.__default
        
        let promise = self.eventLoop.makePromise(of: ListBackupsOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the ListContributorInsights operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListContributorInsightsInput object being passed to this operation.
     - Returns: A future to the ListContributorInsightsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: internalServer, resourceNotFound.
     */
    public func listContributorInsights(
            input: DynamoDBModel.ListContributorInsightsInput) -> EventLoopFuture<DynamoDBModel.ListContributorInsightsOutput> {
        if let listContributorInsightsEventLoopFutureAsyncOverride = listContributorInsightsEventLoopFutureAsyncOverride {
            return listContributorInsightsEventLoopFutureAsyncOverride(input)
        }

        let result = ListContributorInsightsOutput.__default
        
        let promise = self.eventLoop.makePromise(of: ListContributorInsightsOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the ListExports operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListExportsInput object being passed to this operation.
     - Returns: A future to the ListExportsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: internalServer, limitExceeded.
     */
    public func listExports(
            input: DynamoDBModel.ListExportsInput) -> EventLoopFuture<DynamoDBModel.ListExportsOutput> {
        if let listExportsEventLoopFutureAsyncOverride = listExportsEventLoopFutureAsyncOverride {
            return listExportsEventLoopFutureAsyncOverride(input)
        }

        let result = ListExportsOutput.__default
        
        let promise = self.eventLoop.makePromise(of: ListExportsOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the ListGlobalTables operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListGlobalTablesInput object being passed to this operation.
     - Returns: A future to the ListGlobalTablesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: internalServer.
     */
    public func listGlobalTables(
            input: DynamoDBModel.ListGlobalTablesInput) -> EventLoopFuture<DynamoDBModel.ListGlobalTablesOutput> {
        if let listGlobalTablesEventLoopFutureAsyncOverride = listGlobalTablesEventLoopFutureAsyncOverride {
            return listGlobalTablesEventLoopFutureAsyncOverride(input)
        }

        let result = ListGlobalTablesOutput.__default
        
        let promise = self.eventLoop.makePromise(of: ListGlobalTablesOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the ListTables operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListTablesInput object being passed to this operation.
     - Returns: A future to the ListTablesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: internalServer.
     */
    public func listTables(
            input: DynamoDBModel.ListTablesInput) -> EventLoopFuture<DynamoDBModel.ListTablesOutput> {
        if let listTablesEventLoopFutureAsyncOverride = listTablesEventLoopFutureAsyncOverride {
            return listTablesEventLoopFutureAsyncOverride(input)
        }

        let result = ListTablesOutput.__default
        
        let promise = self.eventLoop.makePromise(of: ListTablesOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the ListTagsOfResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListTagsOfResourceInput object being passed to this operation.
     - Returns: A future to the ListTagsOfResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: internalServer, resourceNotFound.
     */
    public func listTagsOfResource(
            input: DynamoDBModel.ListTagsOfResourceInput) -> EventLoopFuture<DynamoDBModel.ListTagsOfResourceOutput> {
        if let listTagsOfResourceEventLoopFutureAsyncOverride = listTagsOfResourceEventLoopFutureAsyncOverride {
            return listTagsOfResourceEventLoopFutureAsyncOverride(input)
        }

        let result = ListTagsOfResourceOutput.__default
        
        let promise = self.eventLoop.makePromise(of: ListTagsOfResourceOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the PutItem operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutItemInput object being passed to this operation.
     - Returns: A future to the PutItemOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: conditionalCheckFailed, internalServer, itemCollectionSizeLimitExceeded, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionConflict.
     */
    public func putItem(
            input: DynamoDBModel.PutItemInput) -> EventLoopFuture<DynamoDBModel.PutItemOutput> {
        if let putItemEventLoopFutureAsyncOverride = putItemEventLoopFutureAsyncOverride {
            return putItemEventLoopFutureAsyncOverride(input)
        }

        let result = PutItemOutput.__default
        
        let promise = self.eventLoop.makePromise(of: PutItemOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the Query operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated QueryInput object being passed to this operation.
     - Returns: A future to the QueryOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound.
     */
    public func query(
            input: DynamoDBModel.QueryInput) -> EventLoopFuture<DynamoDBModel.QueryOutput> {
        if let queryEventLoopFutureAsyncOverride = queryEventLoopFutureAsyncOverride {
            return queryEventLoopFutureAsyncOverride(input)
        }

        let result = QueryOutput.__default
        
        let promise = self.eventLoop.makePromise(of: QueryOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the RestoreTableFromBackup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RestoreTableFromBackupInput object being passed to this operation.
     - Returns: A future to the RestoreTableFromBackupOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: backupInUse, backupNotFound, internalServer, limitExceeded, tableAlreadyExists, tableInUse.
     */
    public func restoreTableFromBackup(
            input: DynamoDBModel.RestoreTableFromBackupInput) -> EventLoopFuture<DynamoDBModel.RestoreTableFromBackupOutput> {
        if let restoreTableFromBackupEventLoopFutureAsyncOverride = restoreTableFromBackupEventLoopFutureAsyncOverride {
            return restoreTableFromBackupEventLoopFutureAsyncOverride(input)
        }

        let result = RestoreTableFromBackupOutput.__default
        
        let promise = self.eventLoop.makePromise(of: RestoreTableFromBackupOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the RestoreTableToPointInTime operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RestoreTableToPointInTimeInput object being passed to this operation.
     - Returns: A future to the RestoreTableToPointInTimeOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: internalServer, invalidRestoreTime, limitExceeded, pointInTimeRecoveryUnavailable, tableAlreadyExists, tableInUse, tableNotFound.
     */
    public func restoreTableToPointInTime(
            input: DynamoDBModel.RestoreTableToPointInTimeInput) -> EventLoopFuture<DynamoDBModel.RestoreTableToPointInTimeOutput> {
        if let restoreTableToPointInTimeEventLoopFutureAsyncOverride = restoreTableToPointInTimeEventLoopFutureAsyncOverride {
            return restoreTableToPointInTimeEventLoopFutureAsyncOverride(input)
        }

        let result = RestoreTableToPointInTimeOutput.__default
        
        let promise = self.eventLoop.makePromise(of: RestoreTableToPointInTimeOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the Scan operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ScanInput object being passed to this operation.
     - Returns: A future to the ScanOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound.
     */
    public func scan(
            input: DynamoDBModel.ScanInput) -> EventLoopFuture<DynamoDBModel.ScanOutput> {
        if let scanEventLoopFutureAsyncOverride = scanEventLoopFutureAsyncOverride {
            return scanEventLoopFutureAsyncOverride(input)
        }

        let result = ScanOutput.__default
        
        let promise = self.eventLoop.makePromise(of: ScanOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the TagResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
           The possible errors are: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    public func tagResource(
            input: DynamoDBModel.TagResourceInput) -> EventLoopFuture<Void> {
        if let tagResourceEventLoopFutureAsyncOverride = tagResourceEventLoopFutureAsyncOverride {
            return tagResourceEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the TransactGetItems operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated TransactGetItemsInput object being passed to this operation.
     - Returns: A future to the TransactGetItemsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionCanceled.
     */
    public func transactGetItems(
            input: DynamoDBModel.TransactGetItemsInput) -> EventLoopFuture<DynamoDBModel.TransactGetItemsOutput> {
        if let transactGetItemsEventLoopFutureAsyncOverride = transactGetItemsEventLoopFutureAsyncOverride {
            return transactGetItemsEventLoopFutureAsyncOverride(input)
        }

        let result = TransactGetItemsOutput.__default
        
        let promise = self.eventLoop.makePromise(of: TransactGetItemsOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the TransactWriteItems operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated TransactWriteItemsInput object being passed to this operation.
     - Returns: A future to the TransactWriteItemsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: idempotentParameterMismatch, internalServer, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionCanceled, transactionInProgress.
     */
    public func transactWriteItems(
            input: DynamoDBModel.TransactWriteItemsInput) -> EventLoopFuture<DynamoDBModel.TransactWriteItemsOutput> {
        if let transactWriteItemsEventLoopFutureAsyncOverride = transactWriteItemsEventLoopFutureAsyncOverride {
            return transactWriteItemsEventLoopFutureAsyncOverride(input)
        }

        let result = TransactWriteItemsOutput.__default
        
        let promise = self.eventLoop.makePromise(of: TransactWriteItemsOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the UntagResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
           The possible errors are: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    public func untagResource(
            input: DynamoDBModel.UntagResourceInput) -> EventLoopFuture<Void> {
        if let untagResourceEventLoopFutureAsyncOverride = untagResourceEventLoopFutureAsyncOverride {
            return untagResourceEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the UpdateContinuousBackups operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UpdateContinuousBackupsInput object being passed to this operation.
     - Returns: A future to the UpdateContinuousBackupsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: continuousBackupsUnavailable, internalServer, tableNotFound.
     */
    public func updateContinuousBackups(
            input: DynamoDBModel.UpdateContinuousBackupsInput) -> EventLoopFuture<DynamoDBModel.UpdateContinuousBackupsOutput> {
        if let updateContinuousBackupsEventLoopFutureAsyncOverride = updateContinuousBackupsEventLoopFutureAsyncOverride {
            return updateContinuousBackupsEventLoopFutureAsyncOverride(input)
        }

        let result = UpdateContinuousBackupsOutput.__default
        
        let promise = self.eventLoop.makePromise(of: UpdateContinuousBackupsOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the UpdateContributorInsights operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UpdateContributorInsightsInput object being passed to this operation.
     - Returns: A future to the UpdateContributorInsightsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: internalServer, resourceNotFound.
     */
    public func updateContributorInsights(
            input: DynamoDBModel.UpdateContributorInsightsInput) -> EventLoopFuture<DynamoDBModel.UpdateContributorInsightsOutput> {
        if let updateContributorInsightsEventLoopFutureAsyncOverride = updateContributorInsightsEventLoopFutureAsyncOverride {
            return updateContributorInsightsEventLoopFutureAsyncOverride(input)
        }

        let result = UpdateContributorInsightsOutput.__default
        
        let promise = self.eventLoop.makePromise(of: UpdateContributorInsightsOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the UpdateGlobalTable operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UpdateGlobalTableInput object being passed to this operation.
     - Returns: A future to the UpdateGlobalTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: globalTableNotFound, internalServer, replicaAlreadyExists, replicaNotFound, tableNotFound.
     */
    public func updateGlobalTable(
            input: DynamoDBModel.UpdateGlobalTableInput) -> EventLoopFuture<DynamoDBModel.UpdateGlobalTableOutput> {
        if let updateGlobalTableEventLoopFutureAsyncOverride = updateGlobalTableEventLoopFutureAsyncOverride {
            return updateGlobalTableEventLoopFutureAsyncOverride(input)
        }

        let result = UpdateGlobalTableOutput.__default
        
        let promise = self.eventLoop.makePromise(of: UpdateGlobalTableOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the UpdateGlobalTableSettings operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UpdateGlobalTableSettingsInput object being passed to this operation.
     - Returns: A future to the UpdateGlobalTableSettingsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: globalTableNotFound, indexNotFound, internalServer, limitExceeded, replicaNotFound, resourceInUse.
     */
    public func updateGlobalTableSettings(
            input: DynamoDBModel.UpdateGlobalTableSettingsInput) -> EventLoopFuture<DynamoDBModel.UpdateGlobalTableSettingsOutput> {
        if let updateGlobalTableSettingsEventLoopFutureAsyncOverride = updateGlobalTableSettingsEventLoopFutureAsyncOverride {
            return updateGlobalTableSettingsEventLoopFutureAsyncOverride(input)
        }

        let result = UpdateGlobalTableSettingsOutput.__default
        
        let promise = self.eventLoop.makePromise(of: UpdateGlobalTableSettingsOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the UpdateItem operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UpdateItemInput object being passed to this operation.
     - Returns: A future to the UpdateItemOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: conditionalCheckFailed, internalServer, itemCollectionSizeLimitExceeded, provisionedThroughputExceeded, requestLimitExceeded, resourceNotFound, transactionConflict.
     */
    public func updateItem(
            input: DynamoDBModel.UpdateItemInput) -> EventLoopFuture<DynamoDBModel.UpdateItemOutput> {
        if let updateItemEventLoopFutureAsyncOverride = updateItemEventLoopFutureAsyncOverride {
            return updateItemEventLoopFutureAsyncOverride(input)
        }

        let result = UpdateItemOutput.__default
        
        let promise = self.eventLoop.makePromise(of: UpdateItemOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the UpdateTable operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UpdateTableInput object being passed to this operation.
     - Returns: A future to the UpdateTableOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    public func updateTable(
            input: DynamoDBModel.UpdateTableInput) -> EventLoopFuture<DynamoDBModel.UpdateTableOutput> {
        if let updateTableEventLoopFutureAsyncOverride = updateTableEventLoopFutureAsyncOverride {
            return updateTableEventLoopFutureAsyncOverride(input)
        }

        let result = UpdateTableOutput.__default
        
        let promise = self.eventLoop.makePromise(of: UpdateTableOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the UpdateTableReplicaAutoScaling operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UpdateTableReplicaAutoScalingInput object being passed to this operation.
     - Returns: A future to the UpdateTableReplicaAutoScalingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    public func updateTableReplicaAutoScaling(
            input: DynamoDBModel.UpdateTableReplicaAutoScalingInput) -> EventLoopFuture<DynamoDBModel.UpdateTableReplicaAutoScalingOutput> {
        if let updateTableReplicaAutoScalingEventLoopFutureAsyncOverride = updateTableReplicaAutoScalingEventLoopFutureAsyncOverride {
            return updateTableReplicaAutoScalingEventLoopFutureAsyncOverride(input)
        }

        let result = UpdateTableReplicaAutoScalingOutput.__default
        
        let promise = self.eventLoop.makePromise(of: UpdateTableReplicaAutoScalingOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the UpdateTimeToLive operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UpdateTimeToLiveInput object being passed to this operation.
     - Returns: A future to the UpdateTimeToLiveOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: internalServer, limitExceeded, resourceInUse, resourceNotFound.
     */
    public func updateTimeToLive(
            input: DynamoDBModel.UpdateTimeToLiveInput) -> EventLoopFuture<DynamoDBModel.UpdateTimeToLiveOutput> {
        if let updateTimeToLiveEventLoopFutureAsyncOverride = updateTimeToLiveEventLoopFutureAsyncOverride {
            return updateTimeToLiveEventLoopFutureAsyncOverride(input)
        }

        let result = UpdateTimeToLiveOutput.__default
        
        let promise = self.eventLoop.makePromise(of: UpdateTimeToLiveOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }
}
