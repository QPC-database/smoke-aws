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
// MockStepFunctionsClient.swift
// StepFunctionsClient
//

import Foundation
import StepFunctionsModel
import SmokeAWSCore
import SmokeHTTPClient
import NIO

/**
 Mock Client for the StepFunctions service by default returns the `__default` property of its return type.
 */
public struct MockStepFunctionsClient: StepFunctionsClientProtocol {
    let eventLoop: EventLoop
    let typedErrorProvider: (Swift.Error) -> StepFunctionsError = { $0.asTypedError() }
    let createActivityEventLoopFutureAsyncOverride: CreateActivityEventLoopFutureAsyncType?
    let createStateMachineEventLoopFutureAsyncOverride: CreateStateMachineEventLoopFutureAsyncType?
    let deleteActivityEventLoopFutureAsyncOverride: DeleteActivityEventLoopFutureAsyncType?
    let deleteStateMachineEventLoopFutureAsyncOverride: DeleteStateMachineEventLoopFutureAsyncType?
    let describeActivityEventLoopFutureAsyncOverride: DescribeActivityEventLoopFutureAsyncType?
    let describeExecutionEventLoopFutureAsyncOverride: DescribeExecutionEventLoopFutureAsyncType?
    let describeStateMachineEventLoopFutureAsyncOverride: DescribeStateMachineEventLoopFutureAsyncType?
    let describeStateMachineForExecutionEventLoopFutureAsyncOverride: DescribeStateMachineForExecutionEventLoopFutureAsyncType?
    let getActivityTaskEventLoopFutureAsyncOverride: GetActivityTaskEventLoopFutureAsyncType?
    let getExecutionHistoryEventLoopFutureAsyncOverride: GetExecutionHistoryEventLoopFutureAsyncType?
    let listActivitiesEventLoopFutureAsyncOverride: ListActivitiesEventLoopFutureAsyncType?
    let listExecutionsEventLoopFutureAsyncOverride: ListExecutionsEventLoopFutureAsyncType?
    let listStateMachinesEventLoopFutureAsyncOverride: ListStateMachinesEventLoopFutureAsyncType?
    let listTagsForResourceEventLoopFutureAsyncOverride: ListTagsForResourceEventLoopFutureAsyncType?
    let sendTaskFailureEventLoopFutureAsyncOverride: SendTaskFailureEventLoopFutureAsyncType?
    let sendTaskHeartbeatEventLoopFutureAsyncOverride: SendTaskHeartbeatEventLoopFutureAsyncType?
    let sendTaskSuccessEventLoopFutureAsyncOverride: SendTaskSuccessEventLoopFutureAsyncType?
    let startExecutionEventLoopFutureAsyncOverride: StartExecutionEventLoopFutureAsyncType?
    let startSyncExecutionEventLoopFutureAsyncOverride: StartSyncExecutionEventLoopFutureAsyncType?
    let stopExecutionEventLoopFutureAsyncOverride: StopExecutionEventLoopFutureAsyncType?
    let tagResourceEventLoopFutureAsyncOverride: TagResourceEventLoopFutureAsyncType?
    let untagResourceEventLoopFutureAsyncOverride: UntagResourceEventLoopFutureAsyncType?
    let updateStateMachineEventLoopFutureAsyncOverride: UpdateStateMachineEventLoopFutureAsyncType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(
            eventLoop: EventLoop,
            createActivityEventLoopFutureAsync: CreateActivityEventLoopFutureAsyncType? = nil,
            createStateMachineEventLoopFutureAsync: CreateStateMachineEventLoopFutureAsyncType? = nil,
            deleteActivityEventLoopFutureAsync: DeleteActivityEventLoopFutureAsyncType? = nil,
            deleteStateMachineEventLoopFutureAsync: DeleteStateMachineEventLoopFutureAsyncType? = nil,
            describeActivityEventLoopFutureAsync: DescribeActivityEventLoopFutureAsyncType? = nil,
            describeExecutionEventLoopFutureAsync: DescribeExecutionEventLoopFutureAsyncType? = nil,
            describeStateMachineEventLoopFutureAsync: DescribeStateMachineEventLoopFutureAsyncType? = nil,
            describeStateMachineForExecutionEventLoopFutureAsync: DescribeStateMachineForExecutionEventLoopFutureAsyncType? = nil,
            getActivityTaskEventLoopFutureAsync: GetActivityTaskEventLoopFutureAsyncType? = nil,
            getExecutionHistoryEventLoopFutureAsync: GetExecutionHistoryEventLoopFutureAsyncType? = nil,
            listActivitiesEventLoopFutureAsync: ListActivitiesEventLoopFutureAsyncType? = nil,
            listExecutionsEventLoopFutureAsync: ListExecutionsEventLoopFutureAsyncType? = nil,
            listStateMachinesEventLoopFutureAsync: ListStateMachinesEventLoopFutureAsyncType? = nil,
            listTagsForResourceEventLoopFutureAsync: ListTagsForResourceEventLoopFutureAsyncType? = nil,
            sendTaskFailureEventLoopFutureAsync: SendTaskFailureEventLoopFutureAsyncType? = nil,
            sendTaskHeartbeatEventLoopFutureAsync: SendTaskHeartbeatEventLoopFutureAsyncType? = nil,
            sendTaskSuccessEventLoopFutureAsync: SendTaskSuccessEventLoopFutureAsyncType? = nil,
            startExecutionEventLoopFutureAsync: StartExecutionEventLoopFutureAsyncType? = nil,
            startSyncExecutionEventLoopFutureAsync: StartSyncExecutionEventLoopFutureAsyncType? = nil,
            stopExecutionEventLoopFutureAsync: StopExecutionEventLoopFutureAsyncType? = nil,
            tagResourceEventLoopFutureAsync: TagResourceEventLoopFutureAsyncType? = nil,
            untagResourceEventLoopFutureAsync: UntagResourceEventLoopFutureAsyncType? = nil,
            updateStateMachineEventLoopFutureAsync: UpdateStateMachineEventLoopFutureAsyncType? = nil) {
        self.eventLoop = eventLoop
        
        self.createActivityEventLoopFutureAsyncOverride = createActivityEventLoopFutureAsync
        self.createStateMachineEventLoopFutureAsyncOverride = createStateMachineEventLoopFutureAsync
        self.deleteActivityEventLoopFutureAsyncOverride = deleteActivityEventLoopFutureAsync
        self.deleteStateMachineEventLoopFutureAsyncOverride = deleteStateMachineEventLoopFutureAsync
        self.describeActivityEventLoopFutureAsyncOverride = describeActivityEventLoopFutureAsync
        self.describeExecutionEventLoopFutureAsyncOverride = describeExecutionEventLoopFutureAsync
        self.describeStateMachineEventLoopFutureAsyncOverride = describeStateMachineEventLoopFutureAsync
        self.describeStateMachineForExecutionEventLoopFutureAsyncOverride = describeStateMachineForExecutionEventLoopFutureAsync
        self.getActivityTaskEventLoopFutureAsyncOverride = getActivityTaskEventLoopFutureAsync
        self.getExecutionHistoryEventLoopFutureAsyncOverride = getExecutionHistoryEventLoopFutureAsync
        self.listActivitiesEventLoopFutureAsyncOverride = listActivitiesEventLoopFutureAsync
        self.listExecutionsEventLoopFutureAsyncOverride = listExecutionsEventLoopFutureAsync
        self.listStateMachinesEventLoopFutureAsyncOverride = listStateMachinesEventLoopFutureAsync
        self.listTagsForResourceEventLoopFutureAsyncOverride = listTagsForResourceEventLoopFutureAsync
        self.sendTaskFailureEventLoopFutureAsyncOverride = sendTaskFailureEventLoopFutureAsync
        self.sendTaskHeartbeatEventLoopFutureAsyncOverride = sendTaskHeartbeatEventLoopFutureAsync
        self.sendTaskSuccessEventLoopFutureAsyncOverride = sendTaskSuccessEventLoopFutureAsync
        self.startExecutionEventLoopFutureAsyncOverride = startExecutionEventLoopFutureAsync
        self.startSyncExecutionEventLoopFutureAsyncOverride = startSyncExecutionEventLoopFutureAsync
        self.stopExecutionEventLoopFutureAsyncOverride = stopExecutionEventLoopFutureAsync
        self.tagResourceEventLoopFutureAsyncOverride = tagResourceEventLoopFutureAsync
        self.untagResourceEventLoopFutureAsyncOverride = untagResourceEventLoopFutureAsync
        self.updateStateMachineEventLoopFutureAsyncOverride = updateStateMachineEventLoopFutureAsync
    }

    /**
     Invokes the CreateActivity operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateActivityInput object being passed to this operation.
     - Returns: A future to the CreateActivityOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: activityLimitExceeded, invalidName, tooManyTags.
     */
    public func createActivity(
            input: StepFunctionsModel.CreateActivityInput) -> EventLoopFuture<StepFunctionsModel.CreateActivityOutput> {
        if let createActivityEventLoopFutureAsyncOverride = createActivityEventLoopFutureAsyncOverride {
            return createActivityEventLoopFutureAsyncOverride(input)
        }

        let result = CreateActivityOutput.__default
        
        let promise = self.eventLoop.makePromise(of: CreateActivityOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the CreateStateMachine operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateStateMachineInput object being passed to this operation.
     - Returns: A future to the CreateStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidArn, invalidDefinition, invalidLoggingConfiguration, invalidName, invalidTracingConfiguration, stateMachineAlreadyExists, stateMachineDeleting, stateMachineLimitExceeded, stateMachineTypeNotSupported, tooManyTags.
     */
    public func createStateMachine(
            input: StepFunctionsModel.CreateStateMachineInput) -> EventLoopFuture<StepFunctionsModel.CreateStateMachineOutput> {
        if let createStateMachineEventLoopFutureAsyncOverride = createStateMachineEventLoopFutureAsyncOverride {
            return createStateMachineEventLoopFutureAsyncOverride(input)
        }

        let result = CreateStateMachineOutput.__default
        
        let promise = self.eventLoop.makePromise(of: CreateStateMachineOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DeleteActivity operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteActivityInput object being passed to this operation.
     - Returns: A future to the DeleteActivityOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidArn.
     */
    public func deleteActivity(
            input: StepFunctionsModel.DeleteActivityInput) -> EventLoopFuture<StepFunctionsModel.DeleteActivityOutput> {
        if let deleteActivityEventLoopFutureAsyncOverride = deleteActivityEventLoopFutureAsyncOverride {
            return deleteActivityEventLoopFutureAsyncOverride(input)
        }

        let result = DeleteActivityOutput.__default
        
        let promise = self.eventLoop.makePromise(of: DeleteActivityOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DeleteStateMachine operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteStateMachineInput object being passed to this operation.
     - Returns: A future to the DeleteStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidArn.
     */
    public func deleteStateMachine(
            input: StepFunctionsModel.DeleteStateMachineInput) -> EventLoopFuture<StepFunctionsModel.DeleteStateMachineOutput> {
        if let deleteStateMachineEventLoopFutureAsyncOverride = deleteStateMachineEventLoopFutureAsyncOverride {
            return deleteStateMachineEventLoopFutureAsyncOverride(input)
        }

        let result = DeleteStateMachineOutput.__default
        
        let promise = self.eventLoop.makePromise(of: DeleteStateMachineOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeActivity operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeActivityInput object being passed to this operation.
     - Returns: A future to the DescribeActivityOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: activityDoesNotExist, invalidArn.
     */
    public func describeActivity(
            input: StepFunctionsModel.DescribeActivityInput) -> EventLoopFuture<StepFunctionsModel.DescribeActivityOutput> {
        if let describeActivityEventLoopFutureAsyncOverride = describeActivityEventLoopFutureAsyncOverride {
            return describeActivityEventLoopFutureAsyncOverride(input)
        }

        let result = DescribeActivityOutput.__default
        
        let promise = self.eventLoop.makePromise(of: DescribeActivityOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeExecution operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeExecutionInput object being passed to this operation.
     - Returns: A future to the DescribeExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: executionDoesNotExist, invalidArn.
     */
    public func describeExecution(
            input: StepFunctionsModel.DescribeExecutionInput) -> EventLoopFuture<StepFunctionsModel.DescribeExecutionOutput> {
        if let describeExecutionEventLoopFutureAsyncOverride = describeExecutionEventLoopFutureAsyncOverride {
            return describeExecutionEventLoopFutureAsyncOverride(input)
        }

        let result = DescribeExecutionOutput.__default
        
        let promise = self.eventLoop.makePromise(of: DescribeExecutionOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeStateMachine operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeStateMachineInput object being passed to this operation.
     - Returns: A future to the DescribeStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidArn, stateMachineDoesNotExist.
     */
    public func describeStateMachine(
            input: StepFunctionsModel.DescribeStateMachineInput) -> EventLoopFuture<StepFunctionsModel.DescribeStateMachineOutput> {
        if let describeStateMachineEventLoopFutureAsyncOverride = describeStateMachineEventLoopFutureAsyncOverride {
            return describeStateMachineEventLoopFutureAsyncOverride(input)
        }

        let result = DescribeStateMachineOutput.__default
        
        let promise = self.eventLoop.makePromise(of: DescribeStateMachineOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeStateMachineForExecution operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeStateMachineForExecutionInput object being passed to this operation.
     - Returns: A future to the DescribeStateMachineForExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: executionDoesNotExist, invalidArn.
     */
    public func describeStateMachineForExecution(
            input: StepFunctionsModel.DescribeStateMachineForExecutionInput) -> EventLoopFuture<StepFunctionsModel.DescribeStateMachineForExecutionOutput> {
        if let describeStateMachineForExecutionEventLoopFutureAsyncOverride = describeStateMachineForExecutionEventLoopFutureAsyncOverride {
            return describeStateMachineForExecutionEventLoopFutureAsyncOverride(input)
        }

        let result = DescribeStateMachineForExecutionOutput.__default
        
        let promise = self.eventLoop.makePromise(of: DescribeStateMachineForExecutionOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the GetActivityTask operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetActivityTaskInput object being passed to this operation.
     - Returns: A future to the GetActivityTaskOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: activityDoesNotExist, activityWorkerLimitExceeded, invalidArn.
     */
    public func getActivityTask(
            input: StepFunctionsModel.GetActivityTaskInput) -> EventLoopFuture<StepFunctionsModel.GetActivityTaskOutput> {
        if let getActivityTaskEventLoopFutureAsyncOverride = getActivityTaskEventLoopFutureAsyncOverride {
            return getActivityTaskEventLoopFutureAsyncOverride(input)
        }

        let result = GetActivityTaskOutput.__default
        
        let promise = self.eventLoop.makePromise(of: GetActivityTaskOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the GetExecutionHistory operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetExecutionHistoryInput object being passed to this operation.
     - Returns: A future to the GetExecutionHistoryOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: executionDoesNotExist, invalidArn, invalidToken.
     */
    public func getExecutionHistory(
            input: StepFunctionsModel.GetExecutionHistoryInput) -> EventLoopFuture<StepFunctionsModel.GetExecutionHistoryOutput> {
        if let getExecutionHistoryEventLoopFutureAsyncOverride = getExecutionHistoryEventLoopFutureAsyncOverride {
            return getExecutionHistoryEventLoopFutureAsyncOverride(input)
        }

        let result = GetExecutionHistoryOutput.__default
        
        let promise = self.eventLoop.makePromise(of: GetExecutionHistoryOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the ListActivities operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListActivitiesInput object being passed to this operation.
     - Returns: A future to the ListActivitiesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidToken.
     */
    public func listActivities(
            input: StepFunctionsModel.ListActivitiesInput) -> EventLoopFuture<StepFunctionsModel.ListActivitiesOutput> {
        if let listActivitiesEventLoopFutureAsyncOverride = listActivitiesEventLoopFutureAsyncOverride {
            return listActivitiesEventLoopFutureAsyncOverride(input)
        }

        let result = ListActivitiesOutput.__default
        
        let promise = self.eventLoop.makePromise(of: ListActivitiesOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the ListExecutions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListExecutionsInput object being passed to this operation.
     - Returns: A future to the ListExecutionsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidArn, invalidToken, stateMachineDoesNotExist, stateMachineTypeNotSupported.
     */
    public func listExecutions(
            input: StepFunctionsModel.ListExecutionsInput) -> EventLoopFuture<StepFunctionsModel.ListExecutionsOutput> {
        if let listExecutionsEventLoopFutureAsyncOverride = listExecutionsEventLoopFutureAsyncOverride {
            return listExecutionsEventLoopFutureAsyncOverride(input)
        }

        let result = ListExecutionsOutput.__default
        
        let promise = self.eventLoop.makePromise(of: ListExecutionsOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the ListStateMachines operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListStateMachinesInput object being passed to this operation.
     - Returns: A future to the ListStateMachinesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidToken.
     */
    public func listStateMachines(
            input: StepFunctionsModel.ListStateMachinesInput) -> EventLoopFuture<StepFunctionsModel.ListStateMachinesOutput> {
        if let listStateMachinesEventLoopFutureAsyncOverride = listStateMachinesEventLoopFutureAsyncOverride {
            return listStateMachinesEventLoopFutureAsyncOverride(input)
        }

        let result = ListStateMachinesOutput.__default
        
        let promise = self.eventLoop.makePromise(of: ListStateMachinesOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the ListTagsForResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
     - Returns: A future to the ListTagsForResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidArn, resourceNotFound.
     */
    public func listTagsForResource(
            input: StepFunctionsModel.ListTagsForResourceInput) -> EventLoopFuture<StepFunctionsModel.ListTagsForResourceOutput> {
        if let listTagsForResourceEventLoopFutureAsyncOverride = listTagsForResourceEventLoopFutureAsyncOverride {
            return listTagsForResourceEventLoopFutureAsyncOverride(input)
        }

        let result = ListTagsForResourceOutput.__default
        
        let promise = self.eventLoop.makePromise(of: ListTagsForResourceOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the SendTaskFailure operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SendTaskFailureInput object being passed to this operation.
     - Returns: A future to the SendTaskFailureOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidToken, taskDoesNotExist, taskTimedOut.
     */
    public func sendTaskFailure(
            input: StepFunctionsModel.SendTaskFailureInput) -> EventLoopFuture<StepFunctionsModel.SendTaskFailureOutput> {
        if let sendTaskFailureEventLoopFutureAsyncOverride = sendTaskFailureEventLoopFutureAsyncOverride {
            return sendTaskFailureEventLoopFutureAsyncOverride(input)
        }

        let result = SendTaskFailureOutput.__default
        
        let promise = self.eventLoop.makePromise(of: SendTaskFailureOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the SendTaskHeartbeat operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SendTaskHeartbeatInput object being passed to this operation.
     - Returns: A future to the SendTaskHeartbeatOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidToken, taskDoesNotExist, taskTimedOut.
     */
    public func sendTaskHeartbeat(
            input: StepFunctionsModel.SendTaskHeartbeatInput) -> EventLoopFuture<StepFunctionsModel.SendTaskHeartbeatOutput> {
        if let sendTaskHeartbeatEventLoopFutureAsyncOverride = sendTaskHeartbeatEventLoopFutureAsyncOverride {
            return sendTaskHeartbeatEventLoopFutureAsyncOverride(input)
        }

        let result = SendTaskHeartbeatOutput.__default
        
        let promise = self.eventLoop.makePromise(of: SendTaskHeartbeatOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the SendTaskSuccess operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SendTaskSuccessInput object being passed to this operation.
     - Returns: A future to the SendTaskSuccessOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidOutput, invalidToken, taskDoesNotExist, taskTimedOut.
     */
    public func sendTaskSuccess(
            input: StepFunctionsModel.SendTaskSuccessInput) -> EventLoopFuture<StepFunctionsModel.SendTaskSuccessOutput> {
        if let sendTaskSuccessEventLoopFutureAsyncOverride = sendTaskSuccessEventLoopFutureAsyncOverride {
            return sendTaskSuccessEventLoopFutureAsyncOverride(input)
        }

        let result = SendTaskSuccessOutput.__default
        
        let promise = self.eventLoop.makePromise(of: SendTaskSuccessOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the StartExecution operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated StartExecutionInput object being passed to this operation.
     - Returns: A future to the StartExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: executionAlreadyExists, executionLimitExceeded, invalidArn, invalidExecutionInput, invalidName, stateMachineDeleting, stateMachineDoesNotExist.
     */
    public func startExecution(
            input: StepFunctionsModel.StartExecutionInput) -> EventLoopFuture<StepFunctionsModel.StartExecutionOutput> {
        if let startExecutionEventLoopFutureAsyncOverride = startExecutionEventLoopFutureAsyncOverride {
            return startExecutionEventLoopFutureAsyncOverride(input)
        }

        let result = StartExecutionOutput.__default
        
        let promise = self.eventLoop.makePromise(of: StartExecutionOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the StartSyncExecution operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated StartSyncExecutionInput object being passed to this operation.
     - Returns: A future to the StartSyncExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidArn, invalidExecutionInput, invalidName, stateMachineDeleting, stateMachineDoesNotExist, stateMachineTypeNotSupported.
     */
    public func startSyncExecution(
            input: StepFunctionsModel.StartSyncExecutionInput) -> EventLoopFuture<StepFunctionsModel.StartSyncExecutionOutput> {
        if let startSyncExecutionEventLoopFutureAsyncOverride = startSyncExecutionEventLoopFutureAsyncOverride {
            return startSyncExecutionEventLoopFutureAsyncOverride(input)
        }

        let result = StartSyncExecutionOutput.__default
        
        let promise = self.eventLoop.makePromise(of: StartSyncExecutionOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the StopExecution operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated StopExecutionInput object being passed to this operation.
     - Returns: A future to the StopExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: executionDoesNotExist, invalidArn.
     */
    public func stopExecution(
            input: StepFunctionsModel.StopExecutionInput) -> EventLoopFuture<StepFunctionsModel.StopExecutionOutput> {
        if let stopExecutionEventLoopFutureAsyncOverride = stopExecutionEventLoopFutureAsyncOverride {
            return stopExecutionEventLoopFutureAsyncOverride(input)
        }

        let result = StopExecutionOutput.__default
        
        let promise = self.eventLoop.makePromise(of: StopExecutionOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the TagResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
     - Returns: A future to the TagResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidArn, resourceNotFound, tooManyTags.
     */
    public func tagResource(
            input: StepFunctionsModel.TagResourceInput) -> EventLoopFuture<StepFunctionsModel.TagResourceOutput> {
        if let tagResourceEventLoopFutureAsyncOverride = tagResourceEventLoopFutureAsyncOverride {
            return tagResourceEventLoopFutureAsyncOverride(input)
        }

        let result = TagResourceOutput.__default
        
        let promise = self.eventLoop.makePromise(of: TagResourceOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the UntagResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
     - Returns: A future to the UntagResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidArn, resourceNotFound.
     */
    public func untagResource(
            input: StepFunctionsModel.UntagResourceInput) -> EventLoopFuture<StepFunctionsModel.UntagResourceOutput> {
        if let untagResourceEventLoopFutureAsyncOverride = untagResourceEventLoopFutureAsyncOverride {
            return untagResourceEventLoopFutureAsyncOverride(input)
        }

        let result = UntagResourceOutput.__default
        
        let promise = self.eventLoop.makePromise(of: UntagResourceOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the UpdateStateMachine operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UpdateStateMachineInput object being passed to this operation.
     - Returns: A future to the UpdateStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidArn, invalidDefinition, invalidLoggingConfiguration, invalidTracingConfiguration, missingRequiredParameter, stateMachineDeleting, stateMachineDoesNotExist.
     */
    public func updateStateMachine(
            input: StepFunctionsModel.UpdateStateMachineInput) -> EventLoopFuture<StepFunctionsModel.UpdateStateMachineOutput> {
        if let updateStateMachineEventLoopFutureAsyncOverride = updateStateMachineEventLoopFutureAsyncOverride {
            return updateStateMachineEventLoopFutureAsyncOverride(input)
        }

        let result = UpdateStateMachineOutput.__default
        
        let promise = self.eventLoop.makePromise(of: UpdateStateMachineOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }
}
