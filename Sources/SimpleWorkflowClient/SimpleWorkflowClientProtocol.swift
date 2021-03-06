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
// SimpleWorkflowClientProtocol.swift
// SimpleWorkflowClient
//

import Foundation
import SimpleWorkflowModel
import SmokeAWSCore
import SmokeHTTPClient
import NIO

/**
 Client Protocol for the SimpleWorkflow service.
 */
public protocol SimpleWorkflowClientProtocol {
    typealias CountClosedWorkflowExecutionsEventLoopFutureAsyncType = (
            _ input: SimpleWorkflowModel.CountClosedWorkflowExecutionsInput) -> EventLoopFuture<SimpleWorkflowModel.WorkflowExecutionCount>
    typealias CountOpenWorkflowExecutionsEventLoopFutureAsyncType = (
            _ input: SimpleWorkflowModel.CountOpenWorkflowExecutionsInput) -> EventLoopFuture<SimpleWorkflowModel.WorkflowExecutionCount>
    typealias CountPendingActivityTasksEventLoopFutureAsyncType = (
            _ input: SimpleWorkflowModel.CountPendingActivityTasksInput) -> EventLoopFuture<SimpleWorkflowModel.PendingTaskCount>
    typealias CountPendingDecisionTasksEventLoopFutureAsyncType = (
            _ input: SimpleWorkflowModel.CountPendingDecisionTasksInput) -> EventLoopFuture<SimpleWorkflowModel.PendingTaskCount>
    typealias DeprecateActivityTypeEventLoopFutureAsyncType = (
            _ input: SimpleWorkflowModel.DeprecateActivityTypeInput) -> EventLoopFuture<Void>
    typealias DeprecateDomainEventLoopFutureAsyncType = (
            _ input: SimpleWorkflowModel.DeprecateDomainInput) -> EventLoopFuture<Void>
    typealias DeprecateWorkflowTypeEventLoopFutureAsyncType = (
            _ input: SimpleWorkflowModel.DeprecateWorkflowTypeInput) -> EventLoopFuture<Void>
    typealias DescribeActivityTypeEventLoopFutureAsyncType = (
            _ input: SimpleWorkflowModel.DescribeActivityTypeInput) -> EventLoopFuture<SimpleWorkflowModel.ActivityTypeDetail>
    typealias DescribeDomainEventLoopFutureAsyncType = (
            _ input: SimpleWorkflowModel.DescribeDomainInput) -> EventLoopFuture<SimpleWorkflowModel.DomainDetail>
    typealias DescribeWorkflowExecutionEventLoopFutureAsyncType = (
            _ input: SimpleWorkflowModel.DescribeWorkflowExecutionInput) -> EventLoopFuture<SimpleWorkflowModel.WorkflowExecutionDetail>
    typealias DescribeWorkflowTypeEventLoopFutureAsyncType = (
            _ input: SimpleWorkflowModel.DescribeWorkflowTypeInput) -> EventLoopFuture<SimpleWorkflowModel.WorkflowTypeDetail>
    typealias GetWorkflowExecutionHistoryEventLoopFutureAsyncType = (
            _ input: SimpleWorkflowModel.GetWorkflowExecutionHistoryInput) -> EventLoopFuture<SimpleWorkflowModel.History>
    typealias ListActivityTypesEventLoopFutureAsyncType = (
            _ input: SimpleWorkflowModel.ListActivityTypesInput) -> EventLoopFuture<SimpleWorkflowModel.ActivityTypeInfos>
    typealias ListClosedWorkflowExecutionsEventLoopFutureAsyncType = (
            _ input: SimpleWorkflowModel.ListClosedWorkflowExecutionsInput) -> EventLoopFuture<SimpleWorkflowModel.WorkflowExecutionInfos>
    typealias ListDomainsEventLoopFutureAsyncType = (
            _ input: SimpleWorkflowModel.ListDomainsInput) -> EventLoopFuture<SimpleWorkflowModel.DomainInfos>
    typealias ListOpenWorkflowExecutionsEventLoopFutureAsyncType = (
            _ input: SimpleWorkflowModel.ListOpenWorkflowExecutionsInput) -> EventLoopFuture<SimpleWorkflowModel.WorkflowExecutionInfos>
    typealias ListTagsForResourceEventLoopFutureAsyncType = (
            _ input: SimpleWorkflowModel.ListTagsForResourceInput) -> EventLoopFuture<SimpleWorkflowModel.ListTagsForResourceOutput>
    typealias ListWorkflowTypesEventLoopFutureAsyncType = (
            _ input: SimpleWorkflowModel.ListWorkflowTypesInput) -> EventLoopFuture<SimpleWorkflowModel.WorkflowTypeInfos>
    typealias PollForActivityTaskEventLoopFutureAsyncType = (
            _ input: SimpleWorkflowModel.PollForActivityTaskInput) -> EventLoopFuture<SimpleWorkflowModel.ActivityTask>
    typealias PollForDecisionTaskEventLoopFutureAsyncType = (
            _ input: SimpleWorkflowModel.PollForDecisionTaskInput) -> EventLoopFuture<SimpleWorkflowModel.DecisionTask>
    typealias RecordActivityTaskHeartbeatEventLoopFutureAsyncType = (
            _ input: SimpleWorkflowModel.RecordActivityTaskHeartbeatInput) -> EventLoopFuture<SimpleWorkflowModel.ActivityTaskStatus>
    typealias RegisterActivityTypeEventLoopFutureAsyncType = (
            _ input: SimpleWorkflowModel.RegisterActivityTypeInput) -> EventLoopFuture<Void>
    typealias RegisterDomainEventLoopFutureAsyncType = (
            _ input: SimpleWorkflowModel.RegisterDomainInput) -> EventLoopFuture<Void>
    typealias RegisterWorkflowTypeEventLoopFutureAsyncType = (
            _ input: SimpleWorkflowModel.RegisterWorkflowTypeInput) -> EventLoopFuture<Void>
    typealias RequestCancelWorkflowExecutionEventLoopFutureAsyncType = (
            _ input: SimpleWorkflowModel.RequestCancelWorkflowExecutionInput) -> EventLoopFuture<Void>
    typealias RespondActivityTaskCanceledEventLoopFutureAsyncType = (
            _ input: SimpleWorkflowModel.RespondActivityTaskCanceledInput) -> EventLoopFuture<Void>
    typealias RespondActivityTaskCompletedEventLoopFutureAsyncType = (
            _ input: SimpleWorkflowModel.RespondActivityTaskCompletedInput) -> EventLoopFuture<Void>
    typealias RespondActivityTaskFailedEventLoopFutureAsyncType = (
            _ input: SimpleWorkflowModel.RespondActivityTaskFailedInput) -> EventLoopFuture<Void>
    typealias RespondDecisionTaskCompletedEventLoopFutureAsyncType = (
            _ input: SimpleWorkflowModel.RespondDecisionTaskCompletedInput) -> EventLoopFuture<Void>
    typealias SignalWorkflowExecutionEventLoopFutureAsyncType = (
            _ input: SimpleWorkflowModel.SignalWorkflowExecutionInput) -> EventLoopFuture<Void>
    typealias StartWorkflowExecutionEventLoopFutureAsyncType = (
            _ input: SimpleWorkflowModel.StartWorkflowExecutionInput) -> EventLoopFuture<SimpleWorkflowModel.Run>
    typealias TagResourceEventLoopFutureAsyncType = (
            _ input: SimpleWorkflowModel.TagResourceInput) -> EventLoopFuture<Void>
    typealias TerminateWorkflowExecutionEventLoopFutureAsyncType = (
            _ input: SimpleWorkflowModel.TerminateWorkflowExecutionInput) -> EventLoopFuture<Void>
    typealias UndeprecateActivityTypeEventLoopFutureAsyncType = (
            _ input: SimpleWorkflowModel.UndeprecateActivityTypeInput) -> EventLoopFuture<Void>
    typealias UndeprecateDomainEventLoopFutureAsyncType = (
            _ input: SimpleWorkflowModel.UndeprecateDomainInput) -> EventLoopFuture<Void>
    typealias UndeprecateWorkflowTypeEventLoopFutureAsyncType = (
            _ input: SimpleWorkflowModel.UndeprecateWorkflowTypeInput) -> EventLoopFuture<Void>
    typealias UntagResourceEventLoopFutureAsyncType = (
            _ input: SimpleWorkflowModel.UntagResourceInput) -> EventLoopFuture<Void>

    /**
     Invokes the CountClosedWorkflowExecutions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CountClosedWorkflowExecutionsInput object being passed to this operation.
     - Returns: A future to the WorkflowExecutionCount object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func countClosedWorkflowExecutions(
            input: SimpleWorkflowModel.CountClosedWorkflowExecutionsInput) -> EventLoopFuture<SimpleWorkflowModel.WorkflowExecutionCount>

    /**
     Invokes the CountOpenWorkflowExecutions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CountOpenWorkflowExecutionsInput object being passed to this operation.
     - Returns: A future to the WorkflowExecutionCount object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func countOpenWorkflowExecutions(
            input: SimpleWorkflowModel.CountOpenWorkflowExecutionsInput) -> EventLoopFuture<SimpleWorkflowModel.WorkflowExecutionCount>

    /**
     Invokes the CountPendingActivityTasks operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CountPendingActivityTasksInput object being passed to this operation.
     - Returns: A future to the PendingTaskCount object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func countPendingActivityTasks(
            input: SimpleWorkflowModel.CountPendingActivityTasksInput) -> EventLoopFuture<SimpleWorkflowModel.PendingTaskCount>

    /**
     Invokes the CountPendingDecisionTasks operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CountPendingDecisionTasksInput object being passed to this operation.
     - Returns: A future to the PendingTaskCount object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func countPendingDecisionTasks(
            input: SimpleWorkflowModel.CountPendingDecisionTasksInput) -> EventLoopFuture<SimpleWorkflowModel.PendingTaskCount>

    /**
     Invokes the DeprecateActivityType operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeprecateActivityTypeInput object being passed to this operation.
           The possible errors are: operationNotPermitted, typeDeprecated, unknownResource.
     */
    func deprecateActivityType(
            input: SimpleWorkflowModel.DeprecateActivityTypeInput) -> EventLoopFuture<Void>

    /**
     Invokes the DeprecateDomain operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeprecateDomainInput object being passed to this operation.
           The possible errors are: domainDeprecated, operationNotPermitted, unknownResource.
     */
    func deprecateDomain(
            input: SimpleWorkflowModel.DeprecateDomainInput) -> EventLoopFuture<Void>

    /**
     Invokes the DeprecateWorkflowType operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeprecateWorkflowTypeInput object being passed to this operation.
           The possible errors are: operationNotPermitted, typeDeprecated, unknownResource.
     */
    func deprecateWorkflowType(
            input: SimpleWorkflowModel.DeprecateWorkflowTypeInput) -> EventLoopFuture<Void>

    /**
     Invokes the DescribeActivityType operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeActivityTypeInput object being passed to this operation.
     - Returns: A future to the ActivityTypeDetail object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func describeActivityType(
            input: SimpleWorkflowModel.DescribeActivityTypeInput) -> EventLoopFuture<SimpleWorkflowModel.ActivityTypeDetail>

    /**
     Invokes the DescribeDomain operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeDomainInput object being passed to this operation.
     - Returns: A future to the DomainDetail object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func describeDomain(
            input: SimpleWorkflowModel.DescribeDomainInput) -> EventLoopFuture<SimpleWorkflowModel.DomainDetail>

    /**
     Invokes the DescribeWorkflowExecution operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeWorkflowExecutionInput object being passed to this operation.
     - Returns: A future to the WorkflowExecutionDetail object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func describeWorkflowExecution(
            input: SimpleWorkflowModel.DescribeWorkflowExecutionInput) -> EventLoopFuture<SimpleWorkflowModel.WorkflowExecutionDetail>

    /**
     Invokes the DescribeWorkflowType operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeWorkflowTypeInput object being passed to this operation.
     - Returns: A future to the WorkflowTypeDetail object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func describeWorkflowType(
            input: SimpleWorkflowModel.DescribeWorkflowTypeInput) -> EventLoopFuture<SimpleWorkflowModel.WorkflowTypeDetail>

    /**
     Invokes the GetWorkflowExecutionHistory operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetWorkflowExecutionHistoryInput object being passed to this operation.
     - Returns: A future to the History object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func getWorkflowExecutionHistory(
            input: SimpleWorkflowModel.GetWorkflowExecutionHistoryInput) -> EventLoopFuture<SimpleWorkflowModel.History>

    /**
     Invokes the ListActivityTypes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListActivityTypesInput object being passed to this operation.
     - Returns: A future to the ActivityTypeInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func listActivityTypes(
            input: SimpleWorkflowModel.ListActivityTypesInput) -> EventLoopFuture<SimpleWorkflowModel.ActivityTypeInfos>

    /**
     Invokes the ListClosedWorkflowExecutions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListClosedWorkflowExecutionsInput object being passed to this operation.
     - Returns: A future to the WorkflowExecutionInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func listClosedWorkflowExecutions(
            input: SimpleWorkflowModel.ListClosedWorkflowExecutionsInput) -> EventLoopFuture<SimpleWorkflowModel.WorkflowExecutionInfos>

    /**
     Invokes the ListDomains operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListDomainsInput object being passed to this operation.
     - Returns: A future to the DomainInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: operationNotPermitted.
     */
    func listDomains(
            input: SimpleWorkflowModel.ListDomainsInput) -> EventLoopFuture<SimpleWorkflowModel.DomainInfos>

    /**
     Invokes the ListOpenWorkflowExecutions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListOpenWorkflowExecutionsInput object being passed to this operation.
     - Returns: A future to the WorkflowExecutionInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func listOpenWorkflowExecutions(
            input: SimpleWorkflowModel.ListOpenWorkflowExecutionsInput) -> EventLoopFuture<SimpleWorkflowModel.WorkflowExecutionInfos>

    /**
     Invokes the ListTagsForResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
     - Returns: A future to the ListTagsForResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: limitExceeded, operationNotPermitted, unknownResource.
     */
    func listTagsForResource(
            input: SimpleWorkflowModel.ListTagsForResourceInput) -> EventLoopFuture<SimpleWorkflowModel.ListTagsForResourceOutput>

    /**
     Invokes the ListWorkflowTypes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListWorkflowTypesInput object being passed to this operation.
     - Returns: A future to the WorkflowTypeInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func listWorkflowTypes(
            input: SimpleWorkflowModel.ListWorkflowTypesInput) -> EventLoopFuture<SimpleWorkflowModel.WorkflowTypeInfos>

    /**
     Invokes the PollForActivityTask operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PollForActivityTaskInput object being passed to this operation.
     - Returns: A future to the ActivityTask object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: limitExceeded, operationNotPermitted, unknownResource.
     */
    func pollForActivityTask(
            input: SimpleWorkflowModel.PollForActivityTaskInput) -> EventLoopFuture<SimpleWorkflowModel.ActivityTask>

    /**
     Invokes the PollForDecisionTask operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PollForDecisionTaskInput object being passed to this operation.
     - Returns: A future to the DecisionTask object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: limitExceeded, operationNotPermitted, unknownResource.
     */
    func pollForDecisionTask(
            input: SimpleWorkflowModel.PollForDecisionTaskInput) -> EventLoopFuture<SimpleWorkflowModel.DecisionTask>

    /**
     Invokes the RecordActivityTaskHeartbeat operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RecordActivityTaskHeartbeatInput object being passed to this operation.
     - Returns: A future to the ActivityTaskStatus object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func recordActivityTaskHeartbeat(
            input: SimpleWorkflowModel.RecordActivityTaskHeartbeatInput) -> EventLoopFuture<SimpleWorkflowModel.ActivityTaskStatus>

    /**
     Invokes the RegisterActivityType operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RegisterActivityTypeInput object being passed to this operation.
           The possible errors are: limitExceeded, operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    func registerActivityType(
            input: SimpleWorkflowModel.RegisterActivityTypeInput) -> EventLoopFuture<Void>

    /**
     Invokes the RegisterDomain operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RegisterDomainInput object being passed to this operation.
           The possible errors are: domainAlreadyExists, limitExceeded, operationNotPermitted, tooManyTags.
     */
    func registerDomain(
            input: SimpleWorkflowModel.RegisterDomainInput) -> EventLoopFuture<Void>

    /**
     Invokes the RegisterWorkflowType operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RegisterWorkflowTypeInput object being passed to this operation.
           The possible errors are: limitExceeded, operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    func registerWorkflowType(
            input: SimpleWorkflowModel.RegisterWorkflowTypeInput) -> EventLoopFuture<Void>

    /**
     Invokes the RequestCancelWorkflowExecution operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RequestCancelWorkflowExecutionInput object being passed to this operation.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func requestCancelWorkflowExecution(
            input: SimpleWorkflowModel.RequestCancelWorkflowExecutionInput) -> EventLoopFuture<Void>

    /**
     Invokes the RespondActivityTaskCanceled operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RespondActivityTaskCanceledInput object being passed to this operation.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func respondActivityTaskCanceled(
            input: SimpleWorkflowModel.RespondActivityTaskCanceledInput) -> EventLoopFuture<Void>

    /**
     Invokes the RespondActivityTaskCompleted operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RespondActivityTaskCompletedInput object being passed to this operation.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func respondActivityTaskCompleted(
            input: SimpleWorkflowModel.RespondActivityTaskCompletedInput) -> EventLoopFuture<Void>

    /**
     Invokes the RespondActivityTaskFailed operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RespondActivityTaskFailedInput object being passed to this operation.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func respondActivityTaskFailed(
            input: SimpleWorkflowModel.RespondActivityTaskFailedInput) -> EventLoopFuture<Void>

    /**
     Invokes the RespondDecisionTaskCompleted operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RespondDecisionTaskCompletedInput object being passed to this operation.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func respondDecisionTaskCompleted(
            input: SimpleWorkflowModel.RespondDecisionTaskCompletedInput) -> EventLoopFuture<Void>

    /**
     Invokes the SignalWorkflowExecution operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SignalWorkflowExecutionInput object being passed to this operation.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func signalWorkflowExecution(
            input: SimpleWorkflowModel.SignalWorkflowExecutionInput) -> EventLoopFuture<Void>

    /**
     Invokes the StartWorkflowExecution operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated StartWorkflowExecutionInput object being passed to this operation.
     - Returns: A future to the Run object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: defaultUndefined, limitExceeded, operationNotPermitted, typeDeprecated, unknownResource, workflowExecutionAlreadyStarted.
     */
    func startWorkflowExecution(
            input: SimpleWorkflowModel.StartWorkflowExecutionInput) -> EventLoopFuture<SimpleWorkflowModel.Run>

    /**
     Invokes the TagResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
           The possible errors are: limitExceeded, operationNotPermitted, tooManyTags, unknownResource.
     */
    func tagResource(
            input: SimpleWorkflowModel.TagResourceInput) -> EventLoopFuture<Void>

    /**
     Invokes the TerminateWorkflowExecution operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated TerminateWorkflowExecutionInput object being passed to this operation.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    func terminateWorkflowExecution(
            input: SimpleWorkflowModel.TerminateWorkflowExecutionInput) -> EventLoopFuture<Void>

    /**
     Invokes the UndeprecateActivityType operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UndeprecateActivityTypeInput object being passed to this operation.
           The possible errors are: operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    func undeprecateActivityType(
            input: SimpleWorkflowModel.UndeprecateActivityTypeInput) -> EventLoopFuture<Void>

    /**
     Invokes the UndeprecateDomain operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UndeprecateDomainInput object being passed to this operation.
           The possible errors are: domainAlreadyExists, operationNotPermitted, unknownResource.
     */
    func undeprecateDomain(
            input: SimpleWorkflowModel.UndeprecateDomainInput) -> EventLoopFuture<Void>

    /**
     Invokes the UndeprecateWorkflowType operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UndeprecateWorkflowTypeInput object being passed to this operation.
           The possible errors are: operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    func undeprecateWorkflowType(
            input: SimpleWorkflowModel.UndeprecateWorkflowTypeInput) -> EventLoopFuture<Void>

    /**
     Invokes the UntagResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
           The possible errors are: limitExceeded, operationNotPermitted, unknownResource.
     */
    func untagResource(
            input: SimpleWorkflowModel.UntagResourceInput) -> EventLoopFuture<Void>
}
