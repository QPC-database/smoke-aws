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
// MockCloudformationClient.swift
// CloudformationClient
//

import Foundation
import CloudformationModel
import SmokeAWSCore
import SmokeHTTPClient
import NIO

/**
 Mock Client for the Cloudformation service by default returns the `__default` property of its return type.
 */
public struct MockCloudformationClient: CloudformationClientProtocol {
    let eventLoop: EventLoop
    let typedErrorProvider: (Swift.Error) -> CloudformationError = { $0.asTypedError() }
    let cancelUpdateStackEventLoopFutureAsyncOverride: CancelUpdateStackEventLoopFutureAsyncType?
    let continueUpdateRollbackEventLoopFutureAsyncOverride: ContinueUpdateRollbackEventLoopFutureAsyncType?
    let createChangeSetEventLoopFutureAsyncOverride: CreateChangeSetEventLoopFutureAsyncType?
    let createStackEventLoopFutureAsyncOverride: CreateStackEventLoopFutureAsyncType?
    let createStackInstancesEventLoopFutureAsyncOverride: CreateStackInstancesEventLoopFutureAsyncType?
    let createStackSetEventLoopFutureAsyncOverride: CreateStackSetEventLoopFutureAsyncType?
    let deleteChangeSetEventLoopFutureAsyncOverride: DeleteChangeSetEventLoopFutureAsyncType?
    let deleteStackEventLoopFutureAsyncOverride: DeleteStackEventLoopFutureAsyncType?
    let deleteStackInstancesEventLoopFutureAsyncOverride: DeleteStackInstancesEventLoopFutureAsyncType?
    let deleteStackSetEventLoopFutureAsyncOverride: DeleteStackSetEventLoopFutureAsyncType?
    let deregisterTypeEventLoopFutureAsyncOverride: DeregisterTypeEventLoopFutureAsyncType?
    let describeAccountLimitsEventLoopFutureAsyncOverride: DescribeAccountLimitsEventLoopFutureAsyncType?
    let describeChangeSetEventLoopFutureAsyncOverride: DescribeChangeSetEventLoopFutureAsyncType?
    let describeStackDriftDetectionStatusEventLoopFutureAsyncOverride: DescribeStackDriftDetectionStatusEventLoopFutureAsyncType?
    let describeStackEventsEventLoopFutureAsyncOverride: DescribeStackEventsEventLoopFutureAsyncType?
    let describeStackInstanceEventLoopFutureAsyncOverride: DescribeStackInstanceEventLoopFutureAsyncType?
    let describeStackResourceEventLoopFutureAsyncOverride: DescribeStackResourceEventLoopFutureAsyncType?
    let describeStackResourceDriftsEventLoopFutureAsyncOverride: DescribeStackResourceDriftsEventLoopFutureAsyncType?
    let describeStackResourcesEventLoopFutureAsyncOverride: DescribeStackResourcesEventLoopFutureAsyncType?
    let describeStackSetEventLoopFutureAsyncOverride: DescribeStackSetEventLoopFutureAsyncType?
    let describeStackSetOperationEventLoopFutureAsyncOverride: DescribeStackSetOperationEventLoopFutureAsyncType?
    let describeStacksEventLoopFutureAsyncOverride: DescribeStacksEventLoopFutureAsyncType?
    let describeTypeEventLoopFutureAsyncOverride: DescribeTypeEventLoopFutureAsyncType?
    let describeTypeRegistrationEventLoopFutureAsyncOverride: DescribeTypeRegistrationEventLoopFutureAsyncType?
    let detectStackDriftEventLoopFutureAsyncOverride: DetectStackDriftEventLoopFutureAsyncType?
    let detectStackResourceDriftEventLoopFutureAsyncOverride: DetectStackResourceDriftEventLoopFutureAsyncType?
    let detectStackSetDriftEventLoopFutureAsyncOverride: DetectStackSetDriftEventLoopFutureAsyncType?
    let estimateTemplateCostEventLoopFutureAsyncOverride: EstimateTemplateCostEventLoopFutureAsyncType?
    let executeChangeSetEventLoopFutureAsyncOverride: ExecuteChangeSetEventLoopFutureAsyncType?
    let getStackPolicyEventLoopFutureAsyncOverride: GetStackPolicyEventLoopFutureAsyncType?
    let getTemplateEventLoopFutureAsyncOverride: GetTemplateEventLoopFutureAsyncType?
    let getTemplateSummaryEventLoopFutureAsyncOverride: GetTemplateSummaryEventLoopFutureAsyncType?
    let listChangeSetsEventLoopFutureAsyncOverride: ListChangeSetsEventLoopFutureAsyncType?
    let listExportsEventLoopFutureAsyncOverride: ListExportsEventLoopFutureAsyncType?
    let listImportsEventLoopFutureAsyncOverride: ListImportsEventLoopFutureAsyncType?
    let listStackInstancesEventLoopFutureAsyncOverride: ListStackInstancesEventLoopFutureAsyncType?
    let listStackResourcesEventLoopFutureAsyncOverride: ListStackResourcesEventLoopFutureAsyncType?
    let listStackSetOperationResultsEventLoopFutureAsyncOverride: ListStackSetOperationResultsEventLoopFutureAsyncType?
    let listStackSetOperationsEventLoopFutureAsyncOverride: ListStackSetOperationsEventLoopFutureAsyncType?
    let listStackSetsEventLoopFutureAsyncOverride: ListStackSetsEventLoopFutureAsyncType?
    let listStacksEventLoopFutureAsyncOverride: ListStacksEventLoopFutureAsyncType?
    let listTypeRegistrationsEventLoopFutureAsyncOverride: ListTypeRegistrationsEventLoopFutureAsyncType?
    let listTypeVersionsEventLoopFutureAsyncOverride: ListTypeVersionsEventLoopFutureAsyncType?
    let listTypesEventLoopFutureAsyncOverride: ListTypesEventLoopFutureAsyncType?
    let recordHandlerProgressEventLoopFutureAsyncOverride: RecordHandlerProgressEventLoopFutureAsyncType?
    let registerTypeEventLoopFutureAsyncOverride: RegisterTypeEventLoopFutureAsyncType?
    let setStackPolicyEventLoopFutureAsyncOverride: SetStackPolicyEventLoopFutureAsyncType?
    let setTypeDefaultVersionEventLoopFutureAsyncOverride: SetTypeDefaultVersionEventLoopFutureAsyncType?
    let signalResourceEventLoopFutureAsyncOverride: SignalResourceEventLoopFutureAsyncType?
    let stopStackSetOperationEventLoopFutureAsyncOverride: StopStackSetOperationEventLoopFutureAsyncType?
    let updateStackEventLoopFutureAsyncOverride: UpdateStackEventLoopFutureAsyncType?
    let updateStackInstancesEventLoopFutureAsyncOverride: UpdateStackInstancesEventLoopFutureAsyncType?
    let updateStackSetEventLoopFutureAsyncOverride: UpdateStackSetEventLoopFutureAsyncType?
    let updateTerminationProtectionEventLoopFutureAsyncOverride: UpdateTerminationProtectionEventLoopFutureAsyncType?
    let validateTemplateEventLoopFutureAsyncOverride: ValidateTemplateEventLoopFutureAsyncType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(
            eventLoop: EventLoop,
            cancelUpdateStackEventLoopFutureAsync: CancelUpdateStackEventLoopFutureAsyncType? = nil,
            continueUpdateRollbackEventLoopFutureAsync: ContinueUpdateRollbackEventLoopFutureAsyncType? = nil,
            createChangeSetEventLoopFutureAsync: CreateChangeSetEventLoopFutureAsyncType? = nil,
            createStackEventLoopFutureAsync: CreateStackEventLoopFutureAsyncType? = nil,
            createStackInstancesEventLoopFutureAsync: CreateStackInstancesEventLoopFutureAsyncType? = nil,
            createStackSetEventLoopFutureAsync: CreateStackSetEventLoopFutureAsyncType? = nil,
            deleteChangeSetEventLoopFutureAsync: DeleteChangeSetEventLoopFutureAsyncType? = nil,
            deleteStackEventLoopFutureAsync: DeleteStackEventLoopFutureAsyncType? = nil,
            deleteStackInstancesEventLoopFutureAsync: DeleteStackInstancesEventLoopFutureAsyncType? = nil,
            deleteStackSetEventLoopFutureAsync: DeleteStackSetEventLoopFutureAsyncType? = nil,
            deregisterTypeEventLoopFutureAsync: DeregisterTypeEventLoopFutureAsyncType? = nil,
            describeAccountLimitsEventLoopFutureAsync: DescribeAccountLimitsEventLoopFutureAsyncType? = nil,
            describeChangeSetEventLoopFutureAsync: DescribeChangeSetEventLoopFutureAsyncType? = nil,
            describeStackDriftDetectionStatusEventLoopFutureAsync: DescribeStackDriftDetectionStatusEventLoopFutureAsyncType? = nil,
            describeStackEventsEventLoopFutureAsync: DescribeStackEventsEventLoopFutureAsyncType? = nil,
            describeStackInstanceEventLoopFutureAsync: DescribeStackInstanceEventLoopFutureAsyncType? = nil,
            describeStackResourceEventLoopFutureAsync: DescribeStackResourceEventLoopFutureAsyncType? = nil,
            describeStackResourceDriftsEventLoopFutureAsync: DescribeStackResourceDriftsEventLoopFutureAsyncType? = nil,
            describeStackResourcesEventLoopFutureAsync: DescribeStackResourcesEventLoopFutureAsyncType? = nil,
            describeStackSetEventLoopFutureAsync: DescribeStackSetEventLoopFutureAsyncType? = nil,
            describeStackSetOperationEventLoopFutureAsync: DescribeStackSetOperationEventLoopFutureAsyncType? = nil,
            describeStacksEventLoopFutureAsync: DescribeStacksEventLoopFutureAsyncType? = nil,
            describeTypeEventLoopFutureAsync: DescribeTypeEventLoopFutureAsyncType? = nil,
            describeTypeRegistrationEventLoopFutureAsync: DescribeTypeRegistrationEventLoopFutureAsyncType? = nil,
            detectStackDriftEventLoopFutureAsync: DetectStackDriftEventLoopFutureAsyncType? = nil,
            detectStackResourceDriftEventLoopFutureAsync: DetectStackResourceDriftEventLoopFutureAsyncType? = nil,
            detectStackSetDriftEventLoopFutureAsync: DetectStackSetDriftEventLoopFutureAsyncType? = nil,
            estimateTemplateCostEventLoopFutureAsync: EstimateTemplateCostEventLoopFutureAsyncType? = nil,
            executeChangeSetEventLoopFutureAsync: ExecuteChangeSetEventLoopFutureAsyncType? = nil,
            getStackPolicyEventLoopFutureAsync: GetStackPolicyEventLoopFutureAsyncType? = nil,
            getTemplateEventLoopFutureAsync: GetTemplateEventLoopFutureAsyncType? = nil,
            getTemplateSummaryEventLoopFutureAsync: GetTemplateSummaryEventLoopFutureAsyncType? = nil,
            listChangeSetsEventLoopFutureAsync: ListChangeSetsEventLoopFutureAsyncType? = nil,
            listExportsEventLoopFutureAsync: ListExportsEventLoopFutureAsyncType? = nil,
            listImportsEventLoopFutureAsync: ListImportsEventLoopFutureAsyncType? = nil,
            listStackInstancesEventLoopFutureAsync: ListStackInstancesEventLoopFutureAsyncType? = nil,
            listStackResourcesEventLoopFutureAsync: ListStackResourcesEventLoopFutureAsyncType? = nil,
            listStackSetOperationResultsEventLoopFutureAsync: ListStackSetOperationResultsEventLoopFutureAsyncType? = nil,
            listStackSetOperationsEventLoopFutureAsync: ListStackSetOperationsEventLoopFutureAsyncType? = nil,
            listStackSetsEventLoopFutureAsync: ListStackSetsEventLoopFutureAsyncType? = nil,
            listStacksEventLoopFutureAsync: ListStacksEventLoopFutureAsyncType? = nil,
            listTypeRegistrationsEventLoopFutureAsync: ListTypeRegistrationsEventLoopFutureAsyncType? = nil,
            listTypeVersionsEventLoopFutureAsync: ListTypeVersionsEventLoopFutureAsyncType? = nil,
            listTypesEventLoopFutureAsync: ListTypesEventLoopFutureAsyncType? = nil,
            recordHandlerProgressEventLoopFutureAsync: RecordHandlerProgressEventLoopFutureAsyncType? = nil,
            registerTypeEventLoopFutureAsync: RegisterTypeEventLoopFutureAsyncType? = nil,
            setStackPolicyEventLoopFutureAsync: SetStackPolicyEventLoopFutureAsyncType? = nil,
            setTypeDefaultVersionEventLoopFutureAsync: SetTypeDefaultVersionEventLoopFutureAsyncType? = nil,
            signalResourceEventLoopFutureAsync: SignalResourceEventLoopFutureAsyncType? = nil,
            stopStackSetOperationEventLoopFutureAsync: StopStackSetOperationEventLoopFutureAsyncType? = nil,
            updateStackEventLoopFutureAsync: UpdateStackEventLoopFutureAsyncType? = nil,
            updateStackInstancesEventLoopFutureAsync: UpdateStackInstancesEventLoopFutureAsyncType? = nil,
            updateStackSetEventLoopFutureAsync: UpdateStackSetEventLoopFutureAsyncType? = nil,
            updateTerminationProtectionEventLoopFutureAsync: UpdateTerminationProtectionEventLoopFutureAsyncType? = nil,
            validateTemplateEventLoopFutureAsync: ValidateTemplateEventLoopFutureAsyncType? = nil) {
        self.eventLoop = eventLoop
        
        self.cancelUpdateStackEventLoopFutureAsyncOverride = cancelUpdateStackEventLoopFutureAsync
        self.continueUpdateRollbackEventLoopFutureAsyncOverride = continueUpdateRollbackEventLoopFutureAsync
        self.createChangeSetEventLoopFutureAsyncOverride = createChangeSetEventLoopFutureAsync
        self.createStackEventLoopFutureAsyncOverride = createStackEventLoopFutureAsync
        self.createStackInstancesEventLoopFutureAsyncOverride = createStackInstancesEventLoopFutureAsync
        self.createStackSetEventLoopFutureAsyncOverride = createStackSetEventLoopFutureAsync
        self.deleteChangeSetEventLoopFutureAsyncOverride = deleteChangeSetEventLoopFutureAsync
        self.deleteStackEventLoopFutureAsyncOverride = deleteStackEventLoopFutureAsync
        self.deleteStackInstancesEventLoopFutureAsyncOverride = deleteStackInstancesEventLoopFutureAsync
        self.deleteStackSetEventLoopFutureAsyncOverride = deleteStackSetEventLoopFutureAsync
        self.deregisterTypeEventLoopFutureAsyncOverride = deregisterTypeEventLoopFutureAsync
        self.describeAccountLimitsEventLoopFutureAsyncOverride = describeAccountLimitsEventLoopFutureAsync
        self.describeChangeSetEventLoopFutureAsyncOverride = describeChangeSetEventLoopFutureAsync
        self.describeStackDriftDetectionStatusEventLoopFutureAsyncOverride = describeStackDriftDetectionStatusEventLoopFutureAsync
        self.describeStackEventsEventLoopFutureAsyncOverride = describeStackEventsEventLoopFutureAsync
        self.describeStackInstanceEventLoopFutureAsyncOverride = describeStackInstanceEventLoopFutureAsync
        self.describeStackResourceEventLoopFutureAsyncOverride = describeStackResourceEventLoopFutureAsync
        self.describeStackResourceDriftsEventLoopFutureAsyncOverride = describeStackResourceDriftsEventLoopFutureAsync
        self.describeStackResourcesEventLoopFutureAsyncOverride = describeStackResourcesEventLoopFutureAsync
        self.describeStackSetEventLoopFutureAsyncOverride = describeStackSetEventLoopFutureAsync
        self.describeStackSetOperationEventLoopFutureAsyncOverride = describeStackSetOperationEventLoopFutureAsync
        self.describeStacksEventLoopFutureAsyncOverride = describeStacksEventLoopFutureAsync
        self.describeTypeEventLoopFutureAsyncOverride = describeTypeEventLoopFutureAsync
        self.describeTypeRegistrationEventLoopFutureAsyncOverride = describeTypeRegistrationEventLoopFutureAsync
        self.detectStackDriftEventLoopFutureAsyncOverride = detectStackDriftEventLoopFutureAsync
        self.detectStackResourceDriftEventLoopFutureAsyncOverride = detectStackResourceDriftEventLoopFutureAsync
        self.detectStackSetDriftEventLoopFutureAsyncOverride = detectStackSetDriftEventLoopFutureAsync
        self.estimateTemplateCostEventLoopFutureAsyncOverride = estimateTemplateCostEventLoopFutureAsync
        self.executeChangeSetEventLoopFutureAsyncOverride = executeChangeSetEventLoopFutureAsync
        self.getStackPolicyEventLoopFutureAsyncOverride = getStackPolicyEventLoopFutureAsync
        self.getTemplateEventLoopFutureAsyncOverride = getTemplateEventLoopFutureAsync
        self.getTemplateSummaryEventLoopFutureAsyncOverride = getTemplateSummaryEventLoopFutureAsync
        self.listChangeSetsEventLoopFutureAsyncOverride = listChangeSetsEventLoopFutureAsync
        self.listExportsEventLoopFutureAsyncOverride = listExportsEventLoopFutureAsync
        self.listImportsEventLoopFutureAsyncOverride = listImportsEventLoopFutureAsync
        self.listStackInstancesEventLoopFutureAsyncOverride = listStackInstancesEventLoopFutureAsync
        self.listStackResourcesEventLoopFutureAsyncOverride = listStackResourcesEventLoopFutureAsync
        self.listStackSetOperationResultsEventLoopFutureAsyncOverride = listStackSetOperationResultsEventLoopFutureAsync
        self.listStackSetOperationsEventLoopFutureAsyncOverride = listStackSetOperationsEventLoopFutureAsync
        self.listStackSetsEventLoopFutureAsyncOverride = listStackSetsEventLoopFutureAsync
        self.listStacksEventLoopFutureAsyncOverride = listStacksEventLoopFutureAsync
        self.listTypeRegistrationsEventLoopFutureAsyncOverride = listTypeRegistrationsEventLoopFutureAsync
        self.listTypeVersionsEventLoopFutureAsyncOverride = listTypeVersionsEventLoopFutureAsync
        self.listTypesEventLoopFutureAsyncOverride = listTypesEventLoopFutureAsync
        self.recordHandlerProgressEventLoopFutureAsyncOverride = recordHandlerProgressEventLoopFutureAsync
        self.registerTypeEventLoopFutureAsyncOverride = registerTypeEventLoopFutureAsync
        self.setStackPolicyEventLoopFutureAsyncOverride = setStackPolicyEventLoopFutureAsync
        self.setTypeDefaultVersionEventLoopFutureAsyncOverride = setTypeDefaultVersionEventLoopFutureAsync
        self.signalResourceEventLoopFutureAsyncOverride = signalResourceEventLoopFutureAsync
        self.stopStackSetOperationEventLoopFutureAsyncOverride = stopStackSetOperationEventLoopFutureAsync
        self.updateStackEventLoopFutureAsyncOverride = updateStackEventLoopFutureAsync
        self.updateStackInstancesEventLoopFutureAsyncOverride = updateStackInstancesEventLoopFutureAsync
        self.updateStackSetEventLoopFutureAsyncOverride = updateStackSetEventLoopFutureAsync
        self.updateTerminationProtectionEventLoopFutureAsyncOverride = updateTerminationProtectionEventLoopFutureAsync
        self.validateTemplateEventLoopFutureAsyncOverride = validateTemplateEventLoopFutureAsync
    }

    /**
     Invokes the CancelUpdateStack operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CancelUpdateStackInput object being passed to this operation.
           The possible errors are: tokenAlreadyExists.
     */
    public func cancelUpdateStack(
            input: CloudformationModel.CancelUpdateStackInput) -> EventLoopFuture<Void> {
        if let cancelUpdateStackEventLoopFutureAsyncOverride = cancelUpdateStackEventLoopFutureAsyncOverride {
            return cancelUpdateStackEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the ContinueUpdateRollback operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ContinueUpdateRollbackInput object being passed to this operation.
     - Returns: A future to the ContinueUpdateRollbackOutputForContinueUpdateRollback object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: tokenAlreadyExists.
     */
    public func continueUpdateRollback(
            input: CloudformationModel.ContinueUpdateRollbackInput) -> EventLoopFuture<CloudformationModel.ContinueUpdateRollbackOutputForContinueUpdateRollback> {
        if let continueUpdateRollbackEventLoopFutureAsyncOverride = continueUpdateRollbackEventLoopFutureAsyncOverride {
            return continueUpdateRollbackEventLoopFutureAsyncOverride(input)
        }

        let result = ContinueUpdateRollbackOutputForContinueUpdateRollback.__default
        
        let promise = self.eventLoop.makePromise(of: ContinueUpdateRollbackOutputForContinueUpdateRollback.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the CreateChangeSet operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateChangeSetInput object being passed to this operation.
     - Returns: A future to the CreateChangeSetOutputForCreateChangeSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: alreadyExists, insufficientCapabilities, limitExceeded.
     */
    public func createChangeSet(
            input: CloudformationModel.CreateChangeSetInput) -> EventLoopFuture<CloudformationModel.CreateChangeSetOutputForCreateChangeSet> {
        if let createChangeSetEventLoopFutureAsyncOverride = createChangeSetEventLoopFutureAsyncOverride {
            return createChangeSetEventLoopFutureAsyncOverride(input)
        }

        let result = CreateChangeSetOutputForCreateChangeSet.__default
        
        let promise = self.eventLoop.makePromise(of: CreateChangeSetOutputForCreateChangeSet.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the CreateStack operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateStackInput object being passed to this operation.
     - Returns: A future to the CreateStackOutputForCreateStack object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: alreadyExists, insufficientCapabilities, limitExceeded, tokenAlreadyExists.
     */
    public func createStack(
            input: CloudformationModel.CreateStackInput) -> EventLoopFuture<CloudformationModel.CreateStackOutputForCreateStack> {
        if let createStackEventLoopFutureAsyncOverride = createStackEventLoopFutureAsyncOverride {
            return createStackEventLoopFutureAsyncOverride(input)
        }

        let result = CreateStackOutputForCreateStack.__default
        
        let promise = self.eventLoop.makePromise(of: CreateStackOutputForCreateStack.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the CreateStackInstances operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateStackInstancesInput object being passed to this operation.
     - Returns: A future to the CreateStackInstancesOutputForCreateStackInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidOperation, limitExceeded, operationIdAlreadyExists, operationInProgress, stackSetNotFound, staleRequest.
     */
    public func createStackInstances(
            input: CloudformationModel.CreateStackInstancesInput) -> EventLoopFuture<CloudformationModel.CreateStackInstancesOutputForCreateStackInstances> {
        if let createStackInstancesEventLoopFutureAsyncOverride = createStackInstancesEventLoopFutureAsyncOverride {
            return createStackInstancesEventLoopFutureAsyncOverride(input)
        }

        let result = CreateStackInstancesOutputForCreateStackInstances.__default
        
        let promise = self.eventLoop.makePromise(of: CreateStackInstancesOutputForCreateStackInstances.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the CreateStackSet operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateStackSetInput object being passed to this operation.
     - Returns: A future to the CreateStackSetOutputForCreateStackSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: createdButModified, limitExceeded, nameAlreadyExists.
     */
    public func createStackSet(
            input: CloudformationModel.CreateStackSetInput) -> EventLoopFuture<CloudformationModel.CreateStackSetOutputForCreateStackSet> {
        if let createStackSetEventLoopFutureAsyncOverride = createStackSetEventLoopFutureAsyncOverride {
            return createStackSetEventLoopFutureAsyncOverride(input)
        }

        let result = CreateStackSetOutputForCreateStackSet.__default
        
        let promise = self.eventLoop.makePromise(of: CreateStackSetOutputForCreateStackSet.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DeleteChangeSet operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteChangeSetInput object being passed to this operation.
     - Returns: A future to the DeleteChangeSetOutputForDeleteChangeSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidChangeSetStatus.
     */
    public func deleteChangeSet(
            input: CloudformationModel.DeleteChangeSetInput) -> EventLoopFuture<CloudformationModel.DeleteChangeSetOutputForDeleteChangeSet> {
        if let deleteChangeSetEventLoopFutureAsyncOverride = deleteChangeSetEventLoopFutureAsyncOverride {
            return deleteChangeSetEventLoopFutureAsyncOverride(input)
        }

        let result = DeleteChangeSetOutputForDeleteChangeSet.__default
        
        let promise = self.eventLoop.makePromise(of: DeleteChangeSetOutputForDeleteChangeSet.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DeleteStack operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteStackInput object being passed to this operation.
           The possible errors are: tokenAlreadyExists.
     */
    public func deleteStack(
            input: CloudformationModel.DeleteStackInput) -> EventLoopFuture<Void> {
        if let deleteStackEventLoopFutureAsyncOverride = deleteStackEventLoopFutureAsyncOverride {
            return deleteStackEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the DeleteStackInstances operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteStackInstancesInput object being passed to this operation.
     - Returns: A future to the DeleteStackInstancesOutputForDeleteStackInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidOperation, operationIdAlreadyExists, operationInProgress, stackSetNotFound, staleRequest.
     */
    public func deleteStackInstances(
            input: CloudformationModel.DeleteStackInstancesInput) -> EventLoopFuture<CloudformationModel.DeleteStackInstancesOutputForDeleteStackInstances> {
        if let deleteStackInstancesEventLoopFutureAsyncOverride = deleteStackInstancesEventLoopFutureAsyncOverride {
            return deleteStackInstancesEventLoopFutureAsyncOverride(input)
        }

        let result = DeleteStackInstancesOutputForDeleteStackInstances.__default
        
        let promise = self.eventLoop.makePromise(of: DeleteStackInstancesOutputForDeleteStackInstances.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DeleteStackSet operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteStackSetInput object being passed to this operation.
     - Returns: A future to the DeleteStackSetOutputForDeleteStackSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: operationInProgress, stackSetNotEmpty.
     */
    public func deleteStackSet(
            input: CloudformationModel.DeleteStackSetInput) -> EventLoopFuture<CloudformationModel.DeleteStackSetOutputForDeleteStackSet> {
        if let deleteStackSetEventLoopFutureAsyncOverride = deleteStackSetEventLoopFutureAsyncOverride {
            return deleteStackSetEventLoopFutureAsyncOverride(input)
        }

        let result = DeleteStackSetOutputForDeleteStackSet.__default
        
        let promise = self.eventLoop.makePromise(of: DeleteStackSetOutputForDeleteStackSet.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DeregisterType operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeregisterTypeInput object being passed to this operation.
     - Returns: A future to the DeregisterTypeOutputForDeregisterType object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: cFNRegistry, typeNotFound.
     */
    public func deregisterType(
            input: CloudformationModel.DeregisterTypeInput) -> EventLoopFuture<CloudformationModel.DeregisterTypeOutputForDeregisterType> {
        if let deregisterTypeEventLoopFutureAsyncOverride = deregisterTypeEventLoopFutureAsyncOverride {
            return deregisterTypeEventLoopFutureAsyncOverride(input)
        }

        let result = DeregisterTypeOutputForDeregisterType.__default
        
        let promise = self.eventLoop.makePromise(of: DeregisterTypeOutputForDeregisterType.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeAccountLimits operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeAccountLimitsInput object being passed to this operation.
     - Returns: A future to the DescribeAccountLimitsOutputForDescribeAccountLimits object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeAccountLimits(
            input: CloudformationModel.DescribeAccountLimitsInput) -> EventLoopFuture<CloudformationModel.DescribeAccountLimitsOutputForDescribeAccountLimits> {
        if let describeAccountLimitsEventLoopFutureAsyncOverride = describeAccountLimitsEventLoopFutureAsyncOverride {
            return describeAccountLimitsEventLoopFutureAsyncOverride(input)
        }

        let result = DescribeAccountLimitsOutputForDescribeAccountLimits.__default
        
        let promise = self.eventLoop.makePromise(of: DescribeAccountLimitsOutputForDescribeAccountLimits.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeChangeSet operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeChangeSetInput object being passed to this operation.
     - Returns: A future to the DescribeChangeSetOutputForDescribeChangeSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: changeSetNotFound.
     */
    public func describeChangeSet(
            input: CloudformationModel.DescribeChangeSetInput) -> EventLoopFuture<CloudformationModel.DescribeChangeSetOutputForDescribeChangeSet> {
        if let describeChangeSetEventLoopFutureAsyncOverride = describeChangeSetEventLoopFutureAsyncOverride {
            return describeChangeSetEventLoopFutureAsyncOverride(input)
        }

        let result = DescribeChangeSetOutputForDescribeChangeSet.__default
        
        let promise = self.eventLoop.makePromise(of: DescribeChangeSetOutputForDescribeChangeSet.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeStackDriftDetectionStatus operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeStackDriftDetectionStatusInput object being passed to this operation.
     - Returns: A future to the DescribeStackDriftDetectionStatusOutputForDescribeStackDriftDetectionStatus object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeStackDriftDetectionStatus(
            input: CloudformationModel.DescribeStackDriftDetectionStatusInput) -> EventLoopFuture<CloudformationModel.DescribeStackDriftDetectionStatusOutputForDescribeStackDriftDetectionStatus> {
        if let describeStackDriftDetectionStatusEventLoopFutureAsyncOverride = describeStackDriftDetectionStatusEventLoopFutureAsyncOverride {
            return describeStackDriftDetectionStatusEventLoopFutureAsyncOverride(input)
        }

        let result = DescribeStackDriftDetectionStatusOutputForDescribeStackDriftDetectionStatus.__default
        
        let promise = self.eventLoop.makePromise(of: DescribeStackDriftDetectionStatusOutputForDescribeStackDriftDetectionStatus.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeStackEvents operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeStackEventsInput object being passed to this operation.
     - Returns: A future to the DescribeStackEventsOutputForDescribeStackEvents object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeStackEvents(
            input: CloudformationModel.DescribeStackEventsInput) -> EventLoopFuture<CloudformationModel.DescribeStackEventsOutputForDescribeStackEvents> {
        if let describeStackEventsEventLoopFutureAsyncOverride = describeStackEventsEventLoopFutureAsyncOverride {
            return describeStackEventsEventLoopFutureAsyncOverride(input)
        }

        let result = DescribeStackEventsOutputForDescribeStackEvents.__default
        
        let promise = self.eventLoop.makePromise(of: DescribeStackEventsOutputForDescribeStackEvents.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeStackInstance operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeStackInstanceInput object being passed to this operation.
     - Returns: A future to the DescribeStackInstanceOutputForDescribeStackInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: stackInstanceNotFound, stackSetNotFound.
     */
    public func describeStackInstance(
            input: CloudformationModel.DescribeStackInstanceInput) -> EventLoopFuture<CloudformationModel.DescribeStackInstanceOutputForDescribeStackInstance> {
        if let describeStackInstanceEventLoopFutureAsyncOverride = describeStackInstanceEventLoopFutureAsyncOverride {
            return describeStackInstanceEventLoopFutureAsyncOverride(input)
        }

        let result = DescribeStackInstanceOutputForDescribeStackInstance.__default
        
        let promise = self.eventLoop.makePromise(of: DescribeStackInstanceOutputForDescribeStackInstance.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeStackResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeStackResourceInput object being passed to this operation.
     - Returns: A future to the DescribeStackResourceOutputForDescribeStackResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeStackResource(
            input: CloudformationModel.DescribeStackResourceInput) -> EventLoopFuture<CloudformationModel.DescribeStackResourceOutputForDescribeStackResource> {
        if let describeStackResourceEventLoopFutureAsyncOverride = describeStackResourceEventLoopFutureAsyncOverride {
            return describeStackResourceEventLoopFutureAsyncOverride(input)
        }

        let result = DescribeStackResourceOutputForDescribeStackResource.__default
        
        let promise = self.eventLoop.makePromise(of: DescribeStackResourceOutputForDescribeStackResource.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeStackResourceDrifts operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeStackResourceDriftsInput object being passed to this operation.
     - Returns: A future to the DescribeStackResourceDriftsOutputForDescribeStackResourceDrifts object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeStackResourceDrifts(
            input: CloudformationModel.DescribeStackResourceDriftsInput) -> EventLoopFuture<CloudformationModel.DescribeStackResourceDriftsOutputForDescribeStackResourceDrifts> {
        if let describeStackResourceDriftsEventLoopFutureAsyncOverride = describeStackResourceDriftsEventLoopFutureAsyncOverride {
            return describeStackResourceDriftsEventLoopFutureAsyncOverride(input)
        }

        let result = DescribeStackResourceDriftsOutputForDescribeStackResourceDrifts.__default
        
        let promise = self.eventLoop.makePromise(of: DescribeStackResourceDriftsOutputForDescribeStackResourceDrifts.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeStackResources operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeStackResourcesInput object being passed to this operation.
     - Returns: A future to the DescribeStackResourcesOutputForDescribeStackResources object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeStackResources(
            input: CloudformationModel.DescribeStackResourcesInput) -> EventLoopFuture<CloudformationModel.DescribeStackResourcesOutputForDescribeStackResources> {
        if let describeStackResourcesEventLoopFutureAsyncOverride = describeStackResourcesEventLoopFutureAsyncOverride {
            return describeStackResourcesEventLoopFutureAsyncOverride(input)
        }

        let result = DescribeStackResourcesOutputForDescribeStackResources.__default
        
        let promise = self.eventLoop.makePromise(of: DescribeStackResourcesOutputForDescribeStackResources.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeStackSet operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeStackSetInput object being passed to this operation.
     - Returns: A future to the DescribeStackSetOutputForDescribeStackSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: stackSetNotFound.
     */
    public func describeStackSet(
            input: CloudformationModel.DescribeStackSetInput) -> EventLoopFuture<CloudformationModel.DescribeStackSetOutputForDescribeStackSet> {
        if let describeStackSetEventLoopFutureAsyncOverride = describeStackSetEventLoopFutureAsyncOverride {
            return describeStackSetEventLoopFutureAsyncOverride(input)
        }

        let result = DescribeStackSetOutputForDescribeStackSet.__default
        
        let promise = self.eventLoop.makePromise(of: DescribeStackSetOutputForDescribeStackSet.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeStackSetOperation operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeStackSetOperationInput object being passed to this operation.
     - Returns: A future to the DescribeStackSetOperationOutputForDescribeStackSetOperation object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: operationNotFound, stackSetNotFound.
     */
    public func describeStackSetOperation(
            input: CloudformationModel.DescribeStackSetOperationInput) -> EventLoopFuture<CloudformationModel.DescribeStackSetOperationOutputForDescribeStackSetOperation> {
        if let describeStackSetOperationEventLoopFutureAsyncOverride = describeStackSetOperationEventLoopFutureAsyncOverride {
            return describeStackSetOperationEventLoopFutureAsyncOverride(input)
        }

        let result = DescribeStackSetOperationOutputForDescribeStackSetOperation.__default
        
        let promise = self.eventLoop.makePromise(of: DescribeStackSetOperationOutputForDescribeStackSetOperation.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeStacks operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeStacksInput object being passed to this operation.
     - Returns: A future to the DescribeStacksOutputForDescribeStacks object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeStacks(
            input: CloudformationModel.DescribeStacksInput) -> EventLoopFuture<CloudformationModel.DescribeStacksOutputForDescribeStacks> {
        if let describeStacksEventLoopFutureAsyncOverride = describeStacksEventLoopFutureAsyncOverride {
            return describeStacksEventLoopFutureAsyncOverride(input)
        }

        let result = DescribeStacksOutputForDescribeStacks.__default
        
        let promise = self.eventLoop.makePromise(of: DescribeStacksOutputForDescribeStacks.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeType operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeTypeInput object being passed to this operation.
     - Returns: A future to the DescribeTypeOutputForDescribeType object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: cFNRegistry, typeNotFound.
     */
    public func describeType(
            input: CloudformationModel.DescribeTypeInput) -> EventLoopFuture<CloudformationModel.DescribeTypeOutputForDescribeType> {
        if let describeTypeEventLoopFutureAsyncOverride = describeTypeEventLoopFutureAsyncOverride {
            return describeTypeEventLoopFutureAsyncOverride(input)
        }

        let result = DescribeTypeOutputForDescribeType.__default
        
        let promise = self.eventLoop.makePromise(of: DescribeTypeOutputForDescribeType.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeTypeRegistration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeTypeRegistrationInput object being passed to this operation.
     - Returns: A future to the DescribeTypeRegistrationOutputForDescribeTypeRegistration object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: cFNRegistry.
     */
    public func describeTypeRegistration(
            input: CloudformationModel.DescribeTypeRegistrationInput) -> EventLoopFuture<CloudformationModel.DescribeTypeRegistrationOutputForDescribeTypeRegistration> {
        if let describeTypeRegistrationEventLoopFutureAsyncOverride = describeTypeRegistrationEventLoopFutureAsyncOverride {
            return describeTypeRegistrationEventLoopFutureAsyncOverride(input)
        }

        let result = DescribeTypeRegistrationOutputForDescribeTypeRegistration.__default
        
        let promise = self.eventLoop.makePromise(of: DescribeTypeRegistrationOutputForDescribeTypeRegistration.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DetectStackDrift operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DetectStackDriftInput object being passed to this operation.
     - Returns: A future to the DetectStackDriftOutputForDetectStackDrift object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func detectStackDrift(
            input: CloudformationModel.DetectStackDriftInput) -> EventLoopFuture<CloudformationModel.DetectStackDriftOutputForDetectStackDrift> {
        if let detectStackDriftEventLoopFutureAsyncOverride = detectStackDriftEventLoopFutureAsyncOverride {
            return detectStackDriftEventLoopFutureAsyncOverride(input)
        }

        let result = DetectStackDriftOutputForDetectStackDrift.__default
        
        let promise = self.eventLoop.makePromise(of: DetectStackDriftOutputForDetectStackDrift.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DetectStackResourceDrift operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DetectStackResourceDriftInput object being passed to this operation.
     - Returns: A future to the DetectStackResourceDriftOutputForDetectStackResourceDrift object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func detectStackResourceDrift(
            input: CloudformationModel.DetectStackResourceDriftInput) -> EventLoopFuture<CloudformationModel.DetectStackResourceDriftOutputForDetectStackResourceDrift> {
        if let detectStackResourceDriftEventLoopFutureAsyncOverride = detectStackResourceDriftEventLoopFutureAsyncOverride {
            return detectStackResourceDriftEventLoopFutureAsyncOverride(input)
        }

        let result = DetectStackResourceDriftOutputForDetectStackResourceDrift.__default
        
        let promise = self.eventLoop.makePromise(of: DetectStackResourceDriftOutputForDetectStackResourceDrift.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DetectStackSetDrift operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DetectStackSetDriftInput object being passed to this operation.
     - Returns: A future to the DetectStackSetDriftOutputForDetectStackSetDrift object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidOperation, operationInProgress, stackSetNotFound.
     */
    public func detectStackSetDrift(
            input: CloudformationModel.DetectStackSetDriftInput) -> EventLoopFuture<CloudformationModel.DetectStackSetDriftOutputForDetectStackSetDrift> {
        if let detectStackSetDriftEventLoopFutureAsyncOverride = detectStackSetDriftEventLoopFutureAsyncOverride {
            return detectStackSetDriftEventLoopFutureAsyncOverride(input)
        }

        let result = DetectStackSetDriftOutputForDetectStackSetDrift.__default
        
        let promise = self.eventLoop.makePromise(of: DetectStackSetDriftOutputForDetectStackSetDrift.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the EstimateTemplateCost operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated EstimateTemplateCostInput object being passed to this operation.
     - Returns: A future to the EstimateTemplateCostOutputForEstimateTemplateCost object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func estimateTemplateCost(
            input: CloudformationModel.EstimateTemplateCostInput) -> EventLoopFuture<CloudformationModel.EstimateTemplateCostOutputForEstimateTemplateCost> {
        if let estimateTemplateCostEventLoopFutureAsyncOverride = estimateTemplateCostEventLoopFutureAsyncOverride {
            return estimateTemplateCostEventLoopFutureAsyncOverride(input)
        }

        let result = EstimateTemplateCostOutputForEstimateTemplateCost.__default
        
        let promise = self.eventLoop.makePromise(of: EstimateTemplateCostOutputForEstimateTemplateCost.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the ExecuteChangeSet operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ExecuteChangeSetInput object being passed to this operation.
     - Returns: A future to the ExecuteChangeSetOutputForExecuteChangeSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: changeSetNotFound, insufficientCapabilities, invalidChangeSetStatus, tokenAlreadyExists.
     */
    public func executeChangeSet(
            input: CloudformationModel.ExecuteChangeSetInput) -> EventLoopFuture<CloudformationModel.ExecuteChangeSetOutputForExecuteChangeSet> {
        if let executeChangeSetEventLoopFutureAsyncOverride = executeChangeSetEventLoopFutureAsyncOverride {
            return executeChangeSetEventLoopFutureAsyncOverride(input)
        }

        let result = ExecuteChangeSetOutputForExecuteChangeSet.__default
        
        let promise = self.eventLoop.makePromise(of: ExecuteChangeSetOutputForExecuteChangeSet.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the GetStackPolicy operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetStackPolicyInput object being passed to this operation.
     - Returns: A future to the GetStackPolicyOutputForGetStackPolicy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getStackPolicy(
            input: CloudformationModel.GetStackPolicyInput) -> EventLoopFuture<CloudformationModel.GetStackPolicyOutputForGetStackPolicy> {
        if let getStackPolicyEventLoopFutureAsyncOverride = getStackPolicyEventLoopFutureAsyncOverride {
            return getStackPolicyEventLoopFutureAsyncOverride(input)
        }

        let result = GetStackPolicyOutputForGetStackPolicy.__default
        
        let promise = self.eventLoop.makePromise(of: GetStackPolicyOutputForGetStackPolicy.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the GetTemplate operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetTemplateInput object being passed to this operation.
     - Returns: A future to the GetTemplateOutputForGetTemplate object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: changeSetNotFound.
     */
    public func getTemplate(
            input: CloudformationModel.GetTemplateInput) -> EventLoopFuture<CloudformationModel.GetTemplateOutputForGetTemplate> {
        if let getTemplateEventLoopFutureAsyncOverride = getTemplateEventLoopFutureAsyncOverride {
            return getTemplateEventLoopFutureAsyncOverride(input)
        }

        let result = GetTemplateOutputForGetTemplate.__default
        
        let promise = self.eventLoop.makePromise(of: GetTemplateOutputForGetTemplate.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the GetTemplateSummary operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetTemplateSummaryInput object being passed to this operation.
     - Returns: A future to the GetTemplateSummaryOutputForGetTemplateSummary object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: stackSetNotFound.
     */
    public func getTemplateSummary(
            input: CloudformationModel.GetTemplateSummaryInput) -> EventLoopFuture<CloudformationModel.GetTemplateSummaryOutputForGetTemplateSummary> {
        if let getTemplateSummaryEventLoopFutureAsyncOverride = getTemplateSummaryEventLoopFutureAsyncOverride {
            return getTemplateSummaryEventLoopFutureAsyncOverride(input)
        }

        let result = GetTemplateSummaryOutputForGetTemplateSummary.__default
        
        let promise = self.eventLoop.makePromise(of: GetTemplateSummaryOutputForGetTemplateSummary.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the ListChangeSets operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListChangeSetsInput object being passed to this operation.
     - Returns: A future to the ListChangeSetsOutputForListChangeSets object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listChangeSets(
            input: CloudformationModel.ListChangeSetsInput) -> EventLoopFuture<CloudformationModel.ListChangeSetsOutputForListChangeSets> {
        if let listChangeSetsEventLoopFutureAsyncOverride = listChangeSetsEventLoopFutureAsyncOverride {
            return listChangeSetsEventLoopFutureAsyncOverride(input)
        }

        let result = ListChangeSetsOutputForListChangeSets.__default
        
        let promise = self.eventLoop.makePromise(of: ListChangeSetsOutputForListChangeSets.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the ListExports operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListExportsInput object being passed to this operation.
     - Returns: A future to the ListExportsOutputForListExports object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listExports(
            input: CloudformationModel.ListExportsInput) -> EventLoopFuture<CloudformationModel.ListExportsOutputForListExports> {
        if let listExportsEventLoopFutureAsyncOverride = listExportsEventLoopFutureAsyncOverride {
            return listExportsEventLoopFutureAsyncOverride(input)
        }

        let result = ListExportsOutputForListExports.__default
        
        let promise = self.eventLoop.makePromise(of: ListExportsOutputForListExports.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the ListImports operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListImportsInput object being passed to this operation.
     - Returns: A future to the ListImportsOutputForListImports object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listImports(
            input: CloudformationModel.ListImportsInput) -> EventLoopFuture<CloudformationModel.ListImportsOutputForListImports> {
        if let listImportsEventLoopFutureAsyncOverride = listImportsEventLoopFutureAsyncOverride {
            return listImportsEventLoopFutureAsyncOverride(input)
        }

        let result = ListImportsOutputForListImports.__default
        
        let promise = self.eventLoop.makePromise(of: ListImportsOutputForListImports.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the ListStackInstances operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListStackInstancesInput object being passed to this operation.
     - Returns: A future to the ListStackInstancesOutputForListStackInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: stackSetNotFound.
     */
    public func listStackInstances(
            input: CloudformationModel.ListStackInstancesInput) -> EventLoopFuture<CloudformationModel.ListStackInstancesOutputForListStackInstances> {
        if let listStackInstancesEventLoopFutureAsyncOverride = listStackInstancesEventLoopFutureAsyncOverride {
            return listStackInstancesEventLoopFutureAsyncOverride(input)
        }

        let result = ListStackInstancesOutputForListStackInstances.__default
        
        let promise = self.eventLoop.makePromise(of: ListStackInstancesOutputForListStackInstances.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the ListStackResources operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListStackResourcesInput object being passed to this operation.
     - Returns: A future to the ListStackResourcesOutputForListStackResources object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listStackResources(
            input: CloudformationModel.ListStackResourcesInput) -> EventLoopFuture<CloudformationModel.ListStackResourcesOutputForListStackResources> {
        if let listStackResourcesEventLoopFutureAsyncOverride = listStackResourcesEventLoopFutureAsyncOverride {
            return listStackResourcesEventLoopFutureAsyncOverride(input)
        }

        let result = ListStackResourcesOutputForListStackResources.__default
        
        let promise = self.eventLoop.makePromise(of: ListStackResourcesOutputForListStackResources.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the ListStackSetOperationResults operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListStackSetOperationResultsInput object being passed to this operation.
     - Returns: A future to the ListStackSetOperationResultsOutputForListStackSetOperationResults object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: operationNotFound, stackSetNotFound.
     */
    public func listStackSetOperationResults(
            input: CloudformationModel.ListStackSetOperationResultsInput) -> EventLoopFuture<CloudformationModel.ListStackSetOperationResultsOutputForListStackSetOperationResults> {
        if let listStackSetOperationResultsEventLoopFutureAsyncOverride = listStackSetOperationResultsEventLoopFutureAsyncOverride {
            return listStackSetOperationResultsEventLoopFutureAsyncOverride(input)
        }

        let result = ListStackSetOperationResultsOutputForListStackSetOperationResults.__default
        
        let promise = self.eventLoop.makePromise(of: ListStackSetOperationResultsOutputForListStackSetOperationResults.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the ListStackSetOperations operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListStackSetOperationsInput object being passed to this operation.
     - Returns: A future to the ListStackSetOperationsOutputForListStackSetOperations object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: stackSetNotFound.
     */
    public func listStackSetOperations(
            input: CloudformationModel.ListStackSetOperationsInput) -> EventLoopFuture<CloudformationModel.ListStackSetOperationsOutputForListStackSetOperations> {
        if let listStackSetOperationsEventLoopFutureAsyncOverride = listStackSetOperationsEventLoopFutureAsyncOverride {
            return listStackSetOperationsEventLoopFutureAsyncOverride(input)
        }

        let result = ListStackSetOperationsOutputForListStackSetOperations.__default
        
        let promise = self.eventLoop.makePromise(of: ListStackSetOperationsOutputForListStackSetOperations.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the ListStackSets operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListStackSetsInput object being passed to this operation.
     - Returns: A future to the ListStackSetsOutputForListStackSets object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listStackSets(
            input: CloudformationModel.ListStackSetsInput) -> EventLoopFuture<CloudformationModel.ListStackSetsOutputForListStackSets> {
        if let listStackSetsEventLoopFutureAsyncOverride = listStackSetsEventLoopFutureAsyncOverride {
            return listStackSetsEventLoopFutureAsyncOverride(input)
        }

        let result = ListStackSetsOutputForListStackSets.__default
        
        let promise = self.eventLoop.makePromise(of: ListStackSetsOutputForListStackSets.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the ListStacks operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListStacksInput object being passed to this operation.
     - Returns: A future to the ListStacksOutputForListStacks object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listStacks(
            input: CloudformationModel.ListStacksInput) -> EventLoopFuture<CloudformationModel.ListStacksOutputForListStacks> {
        if let listStacksEventLoopFutureAsyncOverride = listStacksEventLoopFutureAsyncOverride {
            return listStacksEventLoopFutureAsyncOverride(input)
        }

        let result = ListStacksOutputForListStacks.__default
        
        let promise = self.eventLoop.makePromise(of: ListStacksOutputForListStacks.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the ListTypeRegistrations operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListTypeRegistrationsInput object being passed to this operation.
     - Returns: A future to the ListTypeRegistrationsOutputForListTypeRegistrations object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: cFNRegistry.
     */
    public func listTypeRegistrations(
            input: CloudformationModel.ListTypeRegistrationsInput) -> EventLoopFuture<CloudformationModel.ListTypeRegistrationsOutputForListTypeRegistrations> {
        if let listTypeRegistrationsEventLoopFutureAsyncOverride = listTypeRegistrationsEventLoopFutureAsyncOverride {
            return listTypeRegistrationsEventLoopFutureAsyncOverride(input)
        }

        let result = ListTypeRegistrationsOutputForListTypeRegistrations.__default
        
        let promise = self.eventLoop.makePromise(of: ListTypeRegistrationsOutputForListTypeRegistrations.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the ListTypeVersions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListTypeVersionsInput object being passed to this operation.
     - Returns: A future to the ListTypeVersionsOutputForListTypeVersions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: cFNRegistry.
     */
    public func listTypeVersions(
            input: CloudformationModel.ListTypeVersionsInput) -> EventLoopFuture<CloudformationModel.ListTypeVersionsOutputForListTypeVersions> {
        if let listTypeVersionsEventLoopFutureAsyncOverride = listTypeVersionsEventLoopFutureAsyncOverride {
            return listTypeVersionsEventLoopFutureAsyncOverride(input)
        }

        let result = ListTypeVersionsOutputForListTypeVersions.__default
        
        let promise = self.eventLoop.makePromise(of: ListTypeVersionsOutputForListTypeVersions.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the ListTypes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListTypesInput object being passed to this operation.
     - Returns: A future to the ListTypesOutputForListTypes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: cFNRegistry.
     */
    public func listTypes(
            input: CloudformationModel.ListTypesInput) -> EventLoopFuture<CloudformationModel.ListTypesOutputForListTypes> {
        if let listTypesEventLoopFutureAsyncOverride = listTypesEventLoopFutureAsyncOverride {
            return listTypesEventLoopFutureAsyncOverride(input)
        }

        let result = ListTypesOutputForListTypes.__default
        
        let promise = self.eventLoop.makePromise(of: ListTypesOutputForListTypes.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the RecordHandlerProgress operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RecordHandlerProgressInput object being passed to this operation.
     - Returns: A future to the RecordHandlerProgressOutputForRecordHandlerProgress object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidStateTransition, operationStatusCheckFailed.
     */
    public func recordHandlerProgress(
            input: CloudformationModel.RecordHandlerProgressInput) -> EventLoopFuture<CloudformationModel.RecordHandlerProgressOutputForRecordHandlerProgress> {
        if let recordHandlerProgressEventLoopFutureAsyncOverride = recordHandlerProgressEventLoopFutureAsyncOverride {
            return recordHandlerProgressEventLoopFutureAsyncOverride(input)
        }

        let result = RecordHandlerProgressOutputForRecordHandlerProgress.__default
        
        let promise = self.eventLoop.makePromise(of: RecordHandlerProgressOutputForRecordHandlerProgress.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the RegisterType operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RegisterTypeInput object being passed to this operation.
     - Returns: A future to the RegisterTypeOutputForRegisterType object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: cFNRegistry.
     */
    public func registerType(
            input: CloudformationModel.RegisterTypeInput) -> EventLoopFuture<CloudformationModel.RegisterTypeOutputForRegisterType> {
        if let registerTypeEventLoopFutureAsyncOverride = registerTypeEventLoopFutureAsyncOverride {
            return registerTypeEventLoopFutureAsyncOverride(input)
        }

        let result = RegisterTypeOutputForRegisterType.__default
        
        let promise = self.eventLoop.makePromise(of: RegisterTypeOutputForRegisterType.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the SetStackPolicy operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SetStackPolicyInput object being passed to this operation.
     */
    public func setStackPolicy(
            input: CloudformationModel.SetStackPolicyInput) -> EventLoopFuture<Void> {
        if let setStackPolicyEventLoopFutureAsyncOverride = setStackPolicyEventLoopFutureAsyncOverride {
            return setStackPolicyEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the SetTypeDefaultVersion operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SetTypeDefaultVersionInput object being passed to this operation.
     - Returns: A future to the SetTypeDefaultVersionOutputForSetTypeDefaultVersion object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: cFNRegistry, typeNotFound.
     */
    public func setTypeDefaultVersion(
            input: CloudformationModel.SetTypeDefaultVersionInput) -> EventLoopFuture<CloudformationModel.SetTypeDefaultVersionOutputForSetTypeDefaultVersion> {
        if let setTypeDefaultVersionEventLoopFutureAsyncOverride = setTypeDefaultVersionEventLoopFutureAsyncOverride {
            return setTypeDefaultVersionEventLoopFutureAsyncOverride(input)
        }

        let result = SetTypeDefaultVersionOutputForSetTypeDefaultVersion.__default
        
        let promise = self.eventLoop.makePromise(of: SetTypeDefaultVersionOutputForSetTypeDefaultVersion.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the SignalResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SignalResourceInput object being passed to this operation.
     */
    public func signalResource(
            input: CloudformationModel.SignalResourceInput) -> EventLoopFuture<Void> {
        if let signalResourceEventLoopFutureAsyncOverride = signalResourceEventLoopFutureAsyncOverride {
            return signalResourceEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the StopStackSetOperation operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated StopStackSetOperationInput object being passed to this operation.
     - Returns: A future to the StopStackSetOperationOutputForStopStackSetOperation object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidOperation, operationNotFound, stackSetNotFound.
     */
    public func stopStackSetOperation(
            input: CloudformationModel.StopStackSetOperationInput) -> EventLoopFuture<CloudformationModel.StopStackSetOperationOutputForStopStackSetOperation> {
        if let stopStackSetOperationEventLoopFutureAsyncOverride = stopStackSetOperationEventLoopFutureAsyncOverride {
            return stopStackSetOperationEventLoopFutureAsyncOverride(input)
        }

        let result = StopStackSetOperationOutputForStopStackSetOperation.__default
        
        let promise = self.eventLoop.makePromise(of: StopStackSetOperationOutputForStopStackSetOperation.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the UpdateStack operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UpdateStackInput object being passed to this operation.
     - Returns: A future to the UpdateStackOutputForUpdateStack object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: insufficientCapabilities, tokenAlreadyExists.
     */
    public func updateStack(
            input: CloudformationModel.UpdateStackInput) -> EventLoopFuture<CloudformationModel.UpdateStackOutputForUpdateStack> {
        if let updateStackEventLoopFutureAsyncOverride = updateStackEventLoopFutureAsyncOverride {
            return updateStackEventLoopFutureAsyncOverride(input)
        }

        let result = UpdateStackOutputForUpdateStack.__default
        
        let promise = self.eventLoop.makePromise(of: UpdateStackOutputForUpdateStack.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the UpdateStackInstances operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UpdateStackInstancesInput object being passed to this operation.
     - Returns: A future to the UpdateStackInstancesOutputForUpdateStackInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidOperation, operationIdAlreadyExists, operationInProgress, stackInstanceNotFound, stackSetNotFound, staleRequest.
     */
    public func updateStackInstances(
            input: CloudformationModel.UpdateStackInstancesInput) -> EventLoopFuture<CloudformationModel.UpdateStackInstancesOutputForUpdateStackInstances> {
        if let updateStackInstancesEventLoopFutureAsyncOverride = updateStackInstancesEventLoopFutureAsyncOverride {
            return updateStackInstancesEventLoopFutureAsyncOverride(input)
        }

        let result = UpdateStackInstancesOutputForUpdateStackInstances.__default
        
        let promise = self.eventLoop.makePromise(of: UpdateStackInstancesOutputForUpdateStackInstances.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the UpdateStackSet operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UpdateStackSetInput object being passed to this operation.
     - Returns: A future to the UpdateStackSetOutputForUpdateStackSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidOperation, operationIdAlreadyExists, operationInProgress, stackInstanceNotFound, stackSetNotFound, staleRequest.
     */
    public func updateStackSet(
            input: CloudformationModel.UpdateStackSetInput) -> EventLoopFuture<CloudformationModel.UpdateStackSetOutputForUpdateStackSet> {
        if let updateStackSetEventLoopFutureAsyncOverride = updateStackSetEventLoopFutureAsyncOverride {
            return updateStackSetEventLoopFutureAsyncOverride(input)
        }

        let result = UpdateStackSetOutputForUpdateStackSet.__default
        
        let promise = self.eventLoop.makePromise(of: UpdateStackSetOutputForUpdateStackSet.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the UpdateTerminationProtection operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UpdateTerminationProtectionInput object being passed to this operation.
     - Returns: A future to the UpdateTerminationProtectionOutputForUpdateTerminationProtection object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func updateTerminationProtection(
            input: CloudformationModel.UpdateTerminationProtectionInput) -> EventLoopFuture<CloudformationModel.UpdateTerminationProtectionOutputForUpdateTerminationProtection> {
        if let updateTerminationProtectionEventLoopFutureAsyncOverride = updateTerminationProtectionEventLoopFutureAsyncOverride {
            return updateTerminationProtectionEventLoopFutureAsyncOverride(input)
        }

        let result = UpdateTerminationProtectionOutputForUpdateTerminationProtection.__default
        
        let promise = self.eventLoop.makePromise(of: UpdateTerminationProtectionOutputForUpdateTerminationProtection.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the ValidateTemplate operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ValidateTemplateInput object being passed to this operation.
     - Returns: A future to the ValidateTemplateOutputForValidateTemplate object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func validateTemplate(
            input: CloudformationModel.ValidateTemplateInput) -> EventLoopFuture<CloudformationModel.ValidateTemplateOutputForValidateTemplate> {
        if let validateTemplateEventLoopFutureAsyncOverride = validateTemplateEventLoopFutureAsyncOverride {
            return validateTemplateEventLoopFutureAsyncOverride(input)
        }

        let result = ValidateTemplateOutputForValidateTemplate.__default
        
        let promise = self.eventLoop.makePromise(of: ValidateTemplateOutputForValidateTemplate.self)
        promise.succeed(result)
        
        return promise.futureResult
    }
}
