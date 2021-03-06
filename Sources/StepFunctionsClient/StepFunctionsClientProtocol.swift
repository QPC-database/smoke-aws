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
// StepFunctionsClientProtocol.swift
// StepFunctionsClient
//

import Foundation
import StepFunctionsModel
import SmokeAWSCore
import SmokeHTTPClient
import NIO

/**
 Client Protocol for the StepFunctions service.
 */
public protocol StepFunctionsClientProtocol {
    typealias CreateActivityEventLoopFutureAsyncType = (
            _ input: StepFunctionsModel.CreateActivityInput) -> EventLoopFuture<StepFunctionsModel.CreateActivityOutput>
    typealias CreateStateMachineEventLoopFutureAsyncType = (
            _ input: StepFunctionsModel.CreateStateMachineInput) -> EventLoopFuture<StepFunctionsModel.CreateStateMachineOutput>
    typealias DeleteActivityEventLoopFutureAsyncType = (
            _ input: StepFunctionsModel.DeleteActivityInput) -> EventLoopFuture<StepFunctionsModel.DeleteActivityOutput>
    typealias DeleteStateMachineEventLoopFutureAsyncType = (
            _ input: StepFunctionsModel.DeleteStateMachineInput) -> EventLoopFuture<StepFunctionsModel.DeleteStateMachineOutput>
    typealias DescribeActivityEventLoopFutureAsyncType = (
            _ input: StepFunctionsModel.DescribeActivityInput) -> EventLoopFuture<StepFunctionsModel.DescribeActivityOutput>
    typealias DescribeExecutionEventLoopFutureAsyncType = (
            _ input: StepFunctionsModel.DescribeExecutionInput) -> EventLoopFuture<StepFunctionsModel.DescribeExecutionOutput>
    typealias DescribeStateMachineEventLoopFutureAsyncType = (
            _ input: StepFunctionsModel.DescribeStateMachineInput) -> EventLoopFuture<StepFunctionsModel.DescribeStateMachineOutput>
    typealias DescribeStateMachineForExecutionEventLoopFutureAsyncType = (
            _ input: StepFunctionsModel.DescribeStateMachineForExecutionInput) -> EventLoopFuture<StepFunctionsModel.DescribeStateMachineForExecutionOutput>
    typealias GetActivityTaskEventLoopFutureAsyncType = (
            _ input: StepFunctionsModel.GetActivityTaskInput) -> EventLoopFuture<StepFunctionsModel.GetActivityTaskOutput>
    typealias GetExecutionHistoryEventLoopFutureAsyncType = (
            _ input: StepFunctionsModel.GetExecutionHistoryInput) -> EventLoopFuture<StepFunctionsModel.GetExecutionHistoryOutput>
    typealias ListActivitiesEventLoopFutureAsyncType = (
            _ input: StepFunctionsModel.ListActivitiesInput) -> EventLoopFuture<StepFunctionsModel.ListActivitiesOutput>
    typealias ListExecutionsEventLoopFutureAsyncType = (
            _ input: StepFunctionsModel.ListExecutionsInput) -> EventLoopFuture<StepFunctionsModel.ListExecutionsOutput>
    typealias ListStateMachinesEventLoopFutureAsyncType = (
            _ input: StepFunctionsModel.ListStateMachinesInput) -> EventLoopFuture<StepFunctionsModel.ListStateMachinesOutput>
    typealias ListTagsForResourceEventLoopFutureAsyncType = (
            _ input: StepFunctionsModel.ListTagsForResourceInput) -> EventLoopFuture<StepFunctionsModel.ListTagsForResourceOutput>
    typealias SendTaskFailureEventLoopFutureAsyncType = (
            _ input: StepFunctionsModel.SendTaskFailureInput) -> EventLoopFuture<StepFunctionsModel.SendTaskFailureOutput>
    typealias SendTaskHeartbeatEventLoopFutureAsyncType = (
            _ input: StepFunctionsModel.SendTaskHeartbeatInput) -> EventLoopFuture<StepFunctionsModel.SendTaskHeartbeatOutput>
    typealias SendTaskSuccessEventLoopFutureAsyncType = (
            _ input: StepFunctionsModel.SendTaskSuccessInput) -> EventLoopFuture<StepFunctionsModel.SendTaskSuccessOutput>
    typealias StartExecutionEventLoopFutureAsyncType = (
            _ input: StepFunctionsModel.StartExecutionInput) -> EventLoopFuture<StepFunctionsModel.StartExecutionOutput>
    typealias StartSyncExecutionEventLoopFutureAsyncType = (
            _ input: StepFunctionsModel.StartSyncExecutionInput) -> EventLoopFuture<StepFunctionsModel.StartSyncExecutionOutput>
    typealias StopExecutionEventLoopFutureAsyncType = (
            _ input: StepFunctionsModel.StopExecutionInput) -> EventLoopFuture<StepFunctionsModel.StopExecutionOutput>
    typealias TagResourceEventLoopFutureAsyncType = (
            _ input: StepFunctionsModel.TagResourceInput) -> EventLoopFuture<StepFunctionsModel.TagResourceOutput>
    typealias UntagResourceEventLoopFutureAsyncType = (
            _ input: StepFunctionsModel.UntagResourceInput) -> EventLoopFuture<StepFunctionsModel.UntagResourceOutput>
    typealias UpdateStateMachineEventLoopFutureAsyncType = (
            _ input: StepFunctionsModel.UpdateStateMachineInput) -> EventLoopFuture<StepFunctionsModel.UpdateStateMachineOutput>

    /**
     Invokes the CreateActivity operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateActivityInput object being passed to this operation.
     - Returns: A future to the CreateActivityOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: activityLimitExceeded, invalidName, tooManyTags.
     */
    func createActivity(
            input: StepFunctionsModel.CreateActivityInput) -> EventLoopFuture<StepFunctionsModel.CreateActivityOutput>

    /**
     Invokes the CreateStateMachine operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateStateMachineInput object being passed to this operation.
     - Returns: A future to the CreateStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidArn, invalidDefinition, invalidLoggingConfiguration, invalidName, invalidTracingConfiguration, stateMachineAlreadyExists, stateMachineDeleting, stateMachineLimitExceeded, stateMachineTypeNotSupported, tooManyTags.
     */
    func createStateMachine(
            input: StepFunctionsModel.CreateStateMachineInput) -> EventLoopFuture<StepFunctionsModel.CreateStateMachineOutput>

    /**
     Invokes the DeleteActivity operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteActivityInput object being passed to this operation.
     - Returns: A future to the DeleteActivityOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidArn.
     */
    func deleteActivity(
            input: StepFunctionsModel.DeleteActivityInput) -> EventLoopFuture<StepFunctionsModel.DeleteActivityOutput>

    /**
     Invokes the DeleteStateMachine operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteStateMachineInput object being passed to this operation.
     - Returns: A future to the DeleteStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidArn.
     */
    func deleteStateMachine(
            input: StepFunctionsModel.DeleteStateMachineInput) -> EventLoopFuture<StepFunctionsModel.DeleteStateMachineOutput>

    /**
     Invokes the DescribeActivity operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeActivityInput object being passed to this operation.
     - Returns: A future to the DescribeActivityOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: activityDoesNotExist, invalidArn.
     */
    func describeActivity(
            input: StepFunctionsModel.DescribeActivityInput) -> EventLoopFuture<StepFunctionsModel.DescribeActivityOutput>

    /**
     Invokes the DescribeExecution operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeExecutionInput object being passed to this operation.
     - Returns: A future to the DescribeExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: executionDoesNotExist, invalidArn.
     */
    func describeExecution(
            input: StepFunctionsModel.DescribeExecutionInput) -> EventLoopFuture<StepFunctionsModel.DescribeExecutionOutput>

    /**
     Invokes the DescribeStateMachine operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeStateMachineInput object being passed to this operation.
     - Returns: A future to the DescribeStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidArn, stateMachineDoesNotExist.
     */
    func describeStateMachine(
            input: StepFunctionsModel.DescribeStateMachineInput) -> EventLoopFuture<StepFunctionsModel.DescribeStateMachineOutput>

    /**
     Invokes the DescribeStateMachineForExecution operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeStateMachineForExecutionInput object being passed to this operation.
     - Returns: A future to the DescribeStateMachineForExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: executionDoesNotExist, invalidArn.
     */
    func describeStateMachineForExecution(
            input: StepFunctionsModel.DescribeStateMachineForExecutionInput) -> EventLoopFuture<StepFunctionsModel.DescribeStateMachineForExecutionOutput>

    /**
     Invokes the GetActivityTask operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetActivityTaskInput object being passed to this operation.
     - Returns: A future to the GetActivityTaskOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: activityDoesNotExist, activityWorkerLimitExceeded, invalidArn.
     */
    func getActivityTask(
            input: StepFunctionsModel.GetActivityTaskInput) -> EventLoopFuture<StepFunctionsModel.GetActivityTaskOutput>

    /**
     Invokes the GetExecutionHistory operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetExecutionHistoryInput object being passed to this operation.
     - Returns: A future to the GetExecutionHistoryOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: executionDoesNotExist, invalidArn, invalidToken.
     */
    func getExecutionHistory(
            input: StepFunctionsModel.GetExecutionHistoryInput) -> EventLoopFuture<StepFunctionsModel.GetExecutionHistoryOutput>

    /**
     Invokes the ListActivities operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListActivitiesInput object being passed to this operation.
     - Returns: A future to the ListActivitiesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidToken.
     */
    func listActivities(
            input: StepFunctionsModel.ListActivitiesInput) -> EventLoopFuture<StepFunctionsModel.ListActivitiesOutput>

    /**
     Invokes the ListExecutions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListExecutionsInput object being passed to this operation.
     - Returns: A future to the ListExecutionsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidArn, invalidToken, stateMachineDoesNotExist, stateMachineTypeNotSupported.
     */
    func listExecutions(
            input: StepFunctionsModel.ListExecutionsInput) -> EventLoopFuture<StepFunctionsModel.ListExecutionsOutput>

    /**
     Invokes the ListStateMachines operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListStateMachinesInput object being passed to this operation.
     - Returns: A future to the ListStateMachinesOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidToken.
     */
    func listStateMachines(
            input: StepFunctionsModel.ListStateMachinesInput) -> EventLoopFuture<StepFunctionsModel.ListStateMachinesOutput>

    /**
     Invokes the ListTagsForResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
     - Returns: A future to the ListTagsForResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidArn, resourceNotFound.
     */
    func listTagsForResource(
            input: StepFunctionsModel.ListTagsForResourceInput) -> EventLoopFuture<StepFunctionsModel.ListTagsForResourceOutput>

    /**
     Invokes the SendTaskFailure operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SendTaskFailureInput object being passed to this operation.
     - Returns: A future to the SendTaskFailureOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidToken, taskDoesNotExist, taskTimedOut.
     */
    func sendTaskFailure(
            input: StepFunctionsModel.SendTaskFailureInput) -> EventLoopFuture<StepFunctionsModel.SendTaskFailureOutput>

    /**
     Invokes the SendTaskHeartbeat operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SendTaskHeartbeatInput object being passed to this operation.
     - Returns: A future to the SendTaskHeartbeatOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidToken, taskDoesNotExist, taskTimedOut.
     */
    func sendTaskHeartbeat(
            input: StepFunctionsModel.SendTaskHeartbeatInput) -> EventLoopFuture<StepFunctionsModel.SendTaskHeartbeatOutput>

    /**
     Invokes the SendTaskSuccess operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SendTaskSuccessInput object being passed to this operation.
     - Returns: A future to the SendTaskSuccessOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidOutput, invalidToken, taskDoesNotExist, taskTimedOut.
     */
    func sendTaskSuccess(
            input: StepFunctionsModel.SendTaskSuccessInput) -> EventLoopFuture<StepFunctionsModel.SendTaskSuccessOutput>

    /**
     Invokes the StartExecution operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated StartExecutionInput object being passed to this operation.
     - Returns: A future to the StartExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: executionAlreadyExists, executionLimitExceeded, invalidArn, invalidExecutionInput, invalidName, stateMachineDeleting, stateMachineDoesNotExist.
     */
    func startExecution(
            input: StepFunctionsModel.StartExecutionInput) -> EventLoopFuture<StepFunctionsModel.StartExecutionOutput>

    /**
     Invokes the StartSyncExecution operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated StartSyncExecutionInput object being passed to this operation.
     - Returns: A future to the StartSyncExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidArn, invalidExecutionInput, invalidName, stateMachineDeleting, stateMachineDoesNotExist, stateMachineTypeNotSupported.
     */
    func startSyncExecution(
            input: StepFunctionsModel.StartSyncExecutionInput) -> EventLoopFuture<StepFunctionsModel.StartSyncExecutionOutput>

    /**
     Invokes the StopExecution operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated StopExecutionInput object being passed to this operation.
     - Returns: A future to the StopExecutionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: executionDoesNotExist, invalidArn.
     */
    func stopExecution(
            input: StepFunctionsModel.StopExecutionInput) -> EventLoopFuture<StepFunctionsModel.StopExecutionOutput>

    /**
     Invokes the TagResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
     - Returns: A future to the TagResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidArn, resourceNotFound, tooManyTags.
     */
    func tagResource(
            input: StepFunctionsModel.TagResourceInput) -> EventLoopFuture<StepFunctionsModel.TagResourceOutput>

    /**
     Invokes the UntagResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
     - Returns: A future to the UntagResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidArn, resourceNotFound.
     */
    func untagResource(
            input: StepFunctionsModel.UntagResourceInput) -> EventLoopFuture<StepFunctionsModel.UntagResourceOutput>

    /**
     Invokes the UpdateStateMachine operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UpdateStateMachineInput object being passed to this operation.
     - Returns: A future to the UpdateStateMachineOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidArn, invalidDefinition, invalidLoggingConfiguration, invalidTracingConfiguration, missingRequiredParameter, stateMachineDeleting, stateMachineDoesNotExist.
     */
    func updateStateMachine(
            input: StepFunctionsModel.UpdateStateMachineInput) -> EventLoopFuture<StepFunctionsModel.UpdateStateMachineOutput>
}
