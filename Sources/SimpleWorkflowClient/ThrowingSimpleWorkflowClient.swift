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
// ThrowingSimpleWorkflowClient.swift
// SimpleWorkflowClient
//

import Foundation
import SimpleWorkflowModel
import SmokeAWSCore
import SmokeHTTPClient
import NIO

/**
 Mock Client for the SimpleWorkflow service that by default always throws from its methods.
 */
public struct ThrowingSimpleWorkflowClient: SimpleWorkflowClientProtocol {
    let error: SimpleWorkflowError
    let eventLoop: EventLoop
    let typedErrorProvider: (Swift.Error) -> SimpleWorkflowError = { $0.asTypedError() }
    let countClosedWorkflowExecutionsEventLoopFutureAsyncOverride: CountClosedWorkflowExecutionsEventLoopFutureAsyncType?
    let countOpenWorkflowExecutionsEventLoopFutureAsyncOverride: CountOpenWorkflowExecutionsEventLoopFutureAsyncType?
    let countPendingActivityTasksEventLoopFutureAsyncOverride: CountPendingActivityTasksEventLoopFutureAsyncType?
    let countPendingDecisionTasksEventLoopFutureAsyncOverride: CountPendingDecisionTasksEventLoopFutureAsyncType?
    let deprecateActivityTypeEventLoopFutureAsyncOverride: DeprecateActivityTypeEventLoopFutureAsyncType?
    let deprecateDomainEventLoopFutureAsyncOverride: DeprecateDomainEventLoopFutureAsyncType?
    let deprecateWorkflowTypeEventLoopFutureAsyncOverride: DeprecateWorkflowTypeEventLoopFutureAsyncType?
    let describeActivityTypeEventLoopFutureAsyncOverride: DescribeActivityTypeEventLoopFutureAsyncType?
    let describeDomainEventLoopFutureAsyncOverride: DescribeDomainEventLoopFutureAsyncType?
    let describeWorkflowExecutionEventLoopFutureAsyncOverride: DescribeWorkflowExecutionEventLoopFutureAsyncType?
    let describeWorkflowTypeEventLoopFutureAsyncOverride: DescribeWorkflowTypeEventLoopFutureAsyncType?
    let getWorkflowExecutionHistoryEventLoopFutureAsyncOverride: GetWorkflowExecutionHistoryEventLoopFutureAsyncType?
    let listActivityTypesEventLoopFutureAsyncOverride: ListActivityTypesEventLoopFutureAsyncType?
    let listClosedWorkflowExecutionsEventLoopFutureAsyncOverride: ListClosedWorkflowExecutionsEventLoopFutureAsyncType?
    let listDomainsEventLoopFutureAsyncOverride: ListDomainsEventLoopFutureAsyncType?
    let listOpenWorkflowExecutionsEventLoopFutureAsyncOverride: ListOpenWorkflowExecutionsEventLoopFutureAsyncType?
    let listTagsForResourceEventLoopFutureAsyncOverride: ListTagsForResourceEventLoopFutureAsyncType?
    let listWorkflowTypesEventLoopFutureAsyncOverride: ListWorkflowTypesEventLoopFutureAsyncType?
    let pollForActivityTaskEventLoopFutureAsyncOverride: PollForActivityTaskEventLoopFutureAsyncType?
    let pollForDecisionTaskEventLoopFutureAsyncOverride: PollForDecisionTaskEventLoopFutureAsyncType?
    let recordActivityTaskHeartbeatEventLoopFutureAsyncOverride: RecordActivityTaskHeartbeatEventLoopFutureAsyncType?
    let registerActivityTypeEventLoopFutureAsyncOverride: RegisterActivityTypeEventLoopFutureAsyncType?
    let registerDomainEventLoopFutureAsyncOverride: RegisterDomainEventLoopFutureAsyncType?
    let registerWorkflowTypeEventLoopFutureAsyncOverride: RegisterWorkflowTypeEventLoopFutureAsyncType?
    let requestCancelWorkflowExecutionEventLoopFutureAsyncOverride: RequestCancelWorkflowExecutionEventLoopFutureAsyncType?
    let respondActivityTaskCanceledEventLoopFutureAsyncOverride: RespondActivityTaskCanceledEventLoopFutureAsyncType?
    let respondActivityTaskCompletedEventLoopFutureAsyncOverride: RespondActivityTaskCompletedEventLoopFutureAsyncType?
    let respondActivityTaskFailedEventLoopFutureAsyncOverride: RespondActivityTaskFailedEventLoopFutureAsyncType?
    let respondDecisionTaskCompletedEventLoopFutureAsyncOverride: RespondDecisionTaskCompletedEventLoopFutureAsyncType?
    let signalWorkflowExecutionEventLoopFutureAsyncOverride: SignalWorkflowExecutionEventLoopFutureAsyncType?
    let startWorkflowExecutionEventLoopFutureAsyncOverride: StartWorkflowExecutionEventLoopFutureAsyncType?
    let tagResourceEventLoopFutureAsyncOverride: TagResourceEventLoopFutureAsyncType?
    let terminateWorkflowExecutionEventLoopFutureAsyncOverride: TerminateWorkflowExecutionEventLoopFutureAsyncType?
    let undeprecateActivityTypeEventLoopFutureAsyncOverride: UndeprecateActivityTypeEventLoopFutureAsyncType?
    let undeprecateDomainEventLoopFutureAsyncOverride: UndeprecateDomainEventLoopFutureAsyncType?
    let undeprecateWorkflowTypeEventLoopFutureAsyncOverride: UndeprecateWorkflowTypeEventLoopFutureAsyncType?
    let untagResourceEventLoopFutureAsyncOverride: UntagResourceEventLoopFutureAsyncType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(
            error: SimpleWorkflowError,
            eventLoop: EventLoop,
            countClosedWorkflowExecutionsEventLoopFutureAsync: CountClosedWorkflowExecutionsEventLoopFutureAsyncType? = nil,
            countOpenWorkflowExecutionsEventLoopFutureAsync: CountOpenWorkflowExecutionsEventLoopFutureAsyncType? = nil,
            countPendingActivityTasksEventLoopFutureAsync: CountPendingActivityTasksEventLoopFutureAsyncType? = nil,
            countPendingDecisionTasksEventLoopFutureAsync: CountPendingDecisionTasksEventLoopFutureAsyncType? = nil,
            deprecateActivityTypeEventLoopFutureAsync: DeprecateActivityTypeEventLoopFutureAsyncType? = nil,
            deprecateDomainEventLoopFutureAsync: DeprecateDomainEventLoopFutureAsyncType? = nil,
            deprecateWorkflowTypeEventLoopFutureAsync: DeprecateWorkflowTypeEventLoopFutureAsyncType? = nil,
            describeActivityTypeEventLoopFutureAsync: DescribeActivityTypeEventLoopFutureAsyncType? = nil,
            describeDomainEventLoopFutureAsync: DescribeDomainEventLoopFutureAsyncType? = nil,
            describeWorkflowExecutionEventLoopFutureAsync: DescribeWorkflowExecutionEventLoopFutureAsyncType? = nil,
            describeWorkflowTypeEventLoopFutureAsync: DescribeWorkflowTypeEventLoopFutureAsyncType? = nil,
            getWorkflowExecutionHistoryEventLoopFutureAsync: GetWorkflowExecutionHistoryEventLoopFutureAsyncType? = nil,
            listActivityTypesEventLoopFutureAsync: ListActivityTypesEventLoopFutureAsyncType? = nil,
            listClosedWorkflowExecutionsEventLoopFutureAsync: ListClosedWorkflowExecutionsEventLoopFutureAsyncType? = nil,
            listDomainsEventLoopFutureAsync: ListDomainsEventLoopFutureAsyncType? = nil,
            listOpenWorkflowExecutionsEventLoopFutureAsync: ListOpenWorkflowExecutionsEventLoopFutureAsyncType? = nil,
            listTagsForResourceEventLoopFutureAsync: ListTagsForResourceEventLoopFutureAsyncType? = nil,
            listWorkflowTypesEventLoopFutureAsync: ListWorkflowTypesEventLoopFutureAsyncType? = nil,
            pollForActivityTaskEventLoopFutureAsync: PollForActivityTaskEventLoopFutureAsyncType? = nil,
            pollForDecisionTaskEventLoopFutureAsync: PollForDecisionTaskEventLoopFutureAsyncType? = nil,
            recordActivityTaskHeartbeatEventLoopFutureAsync: RecordActivityTaskHeartbeatEventLoopFutureAsyncType? = nil,
            registerActivityTypeEventLoopFutureAsync: RegisterActivityTypeEventLoopFutureAsyncType? = nil,
            registerDomainEventLoopFutureAsync: RegisterDomainEventLoopFutureAsyncType? = nil,
            registerWorkflowTypeEventLoopFutureAsync: RegisterWorkflowTypeEventLoopFutureAsyncType? = nil,
            requestCancelWorkflowExecutionEventLoopFutureAsync: RequestCancelWorkflowExecutionEventLoopFutureAsyncType? = nil,
            respondActivityTaskCanceledEventLoopFutureAsync: RespondActivityTaskCanceledEventLoopFutureAsyncType? = nil,
            respondActivityTaskCompletedEventLoopFutureAsync: RespondActivityTaskCompletedEventLoopFutureAsyncType? = nil,
            respondActivityTaskFailedEventLoopFutureAsync: RespondActivityTaskFailedEventLoopFutureAsyncType? = nil,
            respondDecisionTaskCompletedEventLoopFutureAsync: RespondDecisionTaskCompletedEventLoopFutureAsyncType? = nil,
            signalWorkflowExecutionEventLoopFutureAsync: SignalWorkflowExecutionEventLoopFutureAsyncType? = nil,
            startWorkflowExecutionEventLoopFutureAsync: StartWorkflowExecutionEventLoopFutureAsyncType? = nil,
            tagResourceEventLoopFutureAsync: TagResourceEventLoopFutureAsyncType? = nil,
            terminateWorkflowExecutionEventLoopFutureAsync: TerminateWorkflowExecutionEventLoopFutureAsyncType? = nil,
            undeprecateActivityTypeEventLoopFutureAsync: UndeprecateActivityTypeEventLoopFutureAsyncType? = nil,
            undeprecateDomainEventLoopFutureAsync: UndeprecateDomainEventLoopFutureAsyncType? = nil,
            undeprecateWorkflowTypeEventLoopFutureAsync: UndeprecateWorkflowTypeEventLoopFutureAsyncType? = nil,
            untagResourceEventLoopFutureAsync: UntagResourceEventLoopFutureAsyncType? = nil) {
        self.error = error
        self.eventLoop = eventLoop
        
        self.countClosedWorkflowExecutionsEventLoopFutureAsyncOverride = countClosedWorkflowExecutionsEventLoopFutureAsync
        self.countOpenWorkflowExecutionsEventLoopFutureAsyncOverride = countOpenWorkflowExecutionsEventLoopFutureAsync
        self.countPendingActivityTasksEventLoopFutureAsyncOverride = countPendingActivityTasksEventLoopFutureAsync
        self.countPendingDecisionTasksEventLoopFutureAsyncOverride = countPendingDecisionTasksEventLoopFutureAsync
        self.deprecateActivityTypeEventLoopFutureAsyncOverride = deprecateActivityTypeEventLoopFutureAsync
        self.deprecateDomainEventLoopFutureAsyncOverride = deprecateDomainEventLoopFutureAsync
        self.deprecateWorkflowTypeEventLoopFutureAsyncOverride = deprecateWorkflowTypeEventLoopFutureAsync
        self.describeActivityTypeEventLoopFutureAsyncOverride = describeActivityTypeEventLoopFutureAsync
        self.describeDomainEventLoopFutureAsyncOverride = describeDomainEventLoopFutureAsync
        self.describeWorkflowExecutionEventLoopFutureAsyncOverride = describeWorkflowExecutionEventLoopFutureAsync
        self.describeWorkflowTypeEventLoopFutureAsyncOverride = describeWorkflowTypeEventLoopFutureAsync
        self.getWorkflowExecutionHistoryEventLoopFutureAsyncOverride = getWorkflowExecutionHistoryEventLoopFutureAsync
        self.listActivityTypesEventLoopFutureAsyncOverride = listActivityTypesEventLoopFutureAsync
        self.listClosedWorkflowExecutionsEventLoopFutureAsyncOverride = listClosedWorkflowExecutionsEventLoopFutureAsync
        self.listDomainsEventLoopFutureAsyncOverride = listDomainsEventLoopFutureAsync
        self.listOpenWorkflowExecutionsEventLoopFutureAsyncOverride = listOpenWorkflowExecutionsEventLoopFutureAsync
        self.listTagsForResourceEventLoopFutureAsyncOverride = listTagsForResourceEventLoopFutureAsync
        self.listWorkflowTypesEventLoopFutureAsyncOverride = listWorkflowTypesEventLoopFutureAsync
        self.pollForActivityTaskEventLoopFutureAsyncOverride = pollForActivityTaskEventLoopFutureAsync
        self.pollForDecisionTaskEventLoopFutureAsyncOverride = pollForDecisionTaskEventLoopFutureAsync
        self.recordActivityTaskHeartbeatEventLoopFutureAsyncOverride = recordActivityTaskHeartbeatEventLoopFutureAsync
        self.registerActivityTypeEventLoopFutureAsyncOverride = registerActivityTypeEventLoopFutureAsync
        self.registerDomainEventLoopFutureAsyncOverride = registerDomainEventLoopFutureAsync
        self.registerWorkflowTypeEventLoopFutureAsyncOverride = registerWorkflowTypeEventLoopFutureAsync
        self.requestCancelWorkflowExecutionEventLoopFutureAsyncOverride = requestCancelWorkflowExecutionEventLoopFutureAsync
        self.respondActivityTaskCanceledEventLoopFutureAsyncOverride = respondActivityTaskCanceledEventLoopFutureAsync
        self.respondActivityTaskCompletedEventLoopFutureAsyncOverride = respondActivityTaskCompletedEventLoopFutureAsync
        self.respondActivityTaskFailedEventLoopFutureAsyncOverride = respondActivityTaskFailedEventLoopFutureAsync
        self.respondDecisionTaskCompletedEventLoopFutureAsyncOverride = respondDecisionTaskCompletedEventLoopFutureAsync
        self.signalWorkflowExecutionEventLoopFutureAsyncOverride = signalWorkflowExecutionEventLoopFutureAsync
        self.startWorkflowExecutionEventLoopFutureAsyncOverride = startWorkflowExecutionEventLoopFutureAsync
        self.tagResourceEventLoopFutureAsyncOverride = tagResourceEventLoopFutureAsync
        self.terminateWorkflowExecutionEventLoopFutureAsyncOverride = terminateWorkflowExecutionEventLoopFutureAsync
        self.undeprecateActivityTypeEventLoopFutureAsyncOverride = undeprecateActivityTypeEventLoopFutureAsync
        self.undeprecateDomainEventLoopFutureAsyncOverride = undeprecateDomainEventLoopFutureAsync
        self.undeprecateWorkflowTypeEventLoopFutureAsyncOverride = undeprecateWorkflowTypeEventLoopFutureAsync
        self.untagResourceEventLoopFutureAsyncOverride = untagResourceEventLoopFutureAsync
    }

    /**
     Invokes the CountClosedWorkflowExecutions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CountClosedWorkflowExecutionsInput object being passed to this operation.
     - Returns: A future to the WorkflowExecutionCount object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func countClosedWorkflowExecutions(
            input: SimpleWorkflowModel.CountClosedWorkflowExecutionsInput) -> EventLoopFuture<SimpleWorkflowModel.WorkflowExecutionCount> {
        if let countClosedWorkflowExecutionsEventLoopFutureAsyncOverride = countClosedWorkflowExecutionsEventLoopFutureAsyncOverride {
            return countClosedWorkflowExecutionsEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: WorkflowExecutionCount.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the CountOpenWorkflowExecutions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CountOpenWorkflowExecutionsInput object being passed to this operation.
     - Returns: A future to the WorkflowExecutionCount object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func countOpenWorkflowExecutions(
            input: SimpleWorkflowModel.CountOpenWorkflowExecutionsInput) -> EventLoopFuture<SimpleWorkflowModel.WorkflowExecutionCount> {
        if let countOpenWorkflowExecutionsEventLoopFutureAsyncOverride = countOpenWorkflowExecutionsEventLoopFutureAsyncOverride {
            return countOpenWorkflowExecutionsEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: WorkflowExecutionCount.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the CountPendingActivityTasks operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CountPendingActivityTasksInput object being passed to this operation.
     - Returns: A future to the PendingTaskCount object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func countPendingActivityTasks(
            input: SimpleWorkflowModel.CountPendingActivityTasksInput) -> EventLoopFuture<SimpleWorkflowModel.PendingTaskCount> {
        if let countPendingActivityTasksEventLoopFutureAsyncOverride = countPendingActivityTasksEventLoopFutureAsyncOverride {
            return countPendingActivityTasksEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: PendingTaskCount.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the CountPendingDecisionTasks operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CountPendingDecisionTasksInput object being passed to this operation.
     - Returns: A future to the PendingTaskCount object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func countPendingDecisionTasks(
            input: SimpleWorkflowModel.CountPendingDecisionTasksInput) -> EventLoopFuture<SimpleWorkflowModel.PendingTaskCount> {
        if let countPendingDecisionTasksEventLoopFutureAsyncOverride = countPendingDecisionTasksEventLoopFutureAsyncOverride {
            return countPendingDecisionTasksEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: PendingTaskCount.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the DeprecateActivityType operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeprecateActivityTypeInput object being passed to this operation.
           The possible errors are: operationNotPermitted, typeDeprecated, unknownResource.
     */
    public func deprecateActivityType(
            input: SimpleWorkflowModel.DeprecateActivityTypeInput) -> EventLoopFuture<Void> {
        if let deprecateActivityTypeEventLoopFutureAsyncOverride = deprecateActivityTypeEventLoopFutureAsyncOverride {
            return deprecateActivityTypeEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the DeprecateDomain operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeprecateDomainInput object being passed to this operation.
           The possible errors are: domainDeprecated, operationNotPermitted, unknownResource.
     */
    public func deprecateDomain(
            input: SimpleWorkflowModel.DeprecateDomainInput) -> EventLoopFuture<Void> {
        if let deprecateDomainEventLoopFutureAsyncOverride = deprecateDomainEventLoopFutureAsyncOverride {
            return deprecateDomainEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the DeprecateWorkflowType operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeprecateWorkflowTypeInput object being passed to this operation.
           The possible errors are: operationNotPermitted, typeDeprecated, unknownResource.
     */
    public func deprecateWorkflowType(
            input: SimpleWorkflowModel.DeprecateWorkflowTypeInput) -> EventLoopFuture<Void> {
        if let deprecateWorkflowTypeEventLoopFutureAsyncOverride = deprecateWorkflowTypeEventLoopFutureAsyncOverride {
            return deprecateWorkflowTypeEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeActivityType operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeActivityTypeInput object being passed to this operation.
     - Returns: A future to the ActivityTypeDetail object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func describeActivityType(
            input: SimpleWorkflowModel.DescribeActivityTypeInput) -> EventLoopFuture<SimpleWorkflowModel.ActivityTypeDetail> {
        if let describeActivityTypeEventLoopFutureAsyncOverride = describeActivityTypeEventLoopFutureAsyncOverride {
            return describeActivityTypeEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: ActivityTypeDetail.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeDomain operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeDomainInput object being passed to this operation.
     - Returns: A future to the DomainDetail object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func describeDomain(
            input: SimpleWorkflowModel.DescribeDomainInput) -> EventLoopFuture<SimpleWorkflowModel.DomainDetail> {
        if let describeDomainEventLoopFutureAsyncOverride = describeDomainEventLoopFutureAsyncOverride {
            return describeDomainEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: DomainDetail.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeWorkflowExecution operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeWorkflowExecutionInput object being passed to this operation.
     - Returns: A future to the WorkflowExecutionDetail object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func describeWorkflowExecution(
            input: SimpleWorkflowModel.DescribeWorkflowExecutionInput) -> EventLoopFuture<SimpleWorkflowModel.WorkflowExecutionDetail> {
        if let describeWorkflowExecutionEventLoopFutureAsyncOverride = describeWorkflowExecutionEventLoopFutureAsyncOverride {
            return describeWorkflowExecutionEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: WorkflowExecutionDetail.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeWorkflowType operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeWorkflowTypeInput object being passed to this operation.
     - Returns: A future to the WorkflowTypeDetail object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func describeWorkflowType(
            input: SimpleWorkflowModel.DescribeWorkflowTypeInput) -> EventLoopFuture<SimpleWorkflowModel.WorkflowTypeDetail> {
        if let describeWorkflowTypeEventLoopFutureAsyncOverride = describeWorkflowTypeEventLoopFutureAsyncOverride {
            return describeWorkflowTypeEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: WorkflowTypeDetail.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the GetWorkflowExecutionHistory operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetWorkflowExecutionHistoryInput object being passed to this operation.
     - Returns: A future to the History object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func getWorkflowExecutionHistory(
            input: SimpleWorkflowModel.GetWorkflowExecutionHistoryInput) -> EventLoopFuture<SimpleWorkflowModel.History> {
        if let getWorkflowExecutionHistoryEventLoopFutureAsyncOverride = getWorkflowExecutionHistoryEventLoopFutureAsyncOverride {
            return getWorkflowExecutionHistoryEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: History.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the ListActivityTypes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListActivityTypesInput object being passed to this operation.
     - Returns: A future to the ActivityTypeInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func listActivityTypes(
            input: SimpleWorkflowModel.ListActivityTypesInput) -> EventLoopFuture<SimpleWorkflowModel.ActivityTypeInfos> {
        if let listActivityTypesEventLoopFutureAsyncOverride = listActivityTypesEventLoopFutureAsyncOverride {
            return listActivityTypesEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: ActivityTypeInfos.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the ListClosedWorkflowExecutions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListClosedWorkflowExecutionsInput object being passed to this operation.
     - Returns: A future to the WorkflowExecutionInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func listClosedWorkflowExecutions(
            input: SimpleWorkflowModel.ListClosedWorkflowExecutionsInput) -> EventLoopFuture<SimpleWorkflowModel.WorkflowExecutionInfos> {
        if let listClosedWorkflowExecutionsEventLoopFutureAsyncOverride = listClosedWorkflowExecutionsEventLoopFutureAsyncOverride {
            return listClosedWorkflowExecutionsEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: WorkflowExecutionInfos.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the ListDomains operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListDomainsInput object being passed to this operation.
     - Returns: A future to the DomainInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: operationNotPermitted.
     */
    public func listDomains(
            input: SimpleWorkflowModel.ListDomainsInput) -> EventLoopFuture<SimpleWorkflowModel.DomainInfos> {
        if let listDomainsEventLoopFutureAsyncOverride = listDomainsEventLoopFutureAsyncOverride {
            return listDomainsEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: DomainInfos.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the ListOpenWorkflowExecutions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListOpenWorkflowExecutionsInput object being passed to this operation.
     - Returns: A future to the WorkflowExecutionInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func listOpenWorkflowExecutions(
            input: SimpleWorkflowModel.ListOpenWorkflowExecutionsInput) -> EventLoopFuture<SimpleWorkflowModel.WorkflowExecutionInfos> {
        if let listOpenWorkflowExecutionsEventLoopFutureAsyncOverride = listOpenWorkflowExecutionsEventLoopFutureAsyncOverride {
            return listOpenWorkflowExecutionsEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: WorkflowExecutionInfos.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the ListTagsForResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
     - Returns: A future to the ListTagsForResourceOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: limitExceeded, operationNotPermitted, unknownResource.
     */
    public func listTagsForResource(
            input: SimpleWorkflowModel.ListTagsForResourceInput) -> EventLoopFuture<SimpleWorkflowModel.ListTagsForResourceOutput> {
        if let listTagsForResourceEventLoopFutureAsyncOverride = listTagsForResourceEventLoopFutureAsyncOverride {
            return listTagsForResourceEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: ListTagsForResourceOutput.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the ListWorkflowTypes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListWorkflowTypesInput object being passed to this operation.
     - Returns: A future to the WorkflowTypeInfos object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func listWorkflowTypes(
            input: SimpleWorkflowModel.ListWorkflowTypesInput) -> EventLoopFuture<SimpleWorkflowModel.WorkflowTypeInfos> {
        if let listWorkflowTypesEventLoopFutureAsyncOverride = listWorkflowTypesEventLoopFutureAsyncOverride {
            return listWorkflowTypesEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: WorkflowTypeInfos.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the PollForActivityTask operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PollForActivityTaskInput object being passed to this operation.
     - Returns: A future to the ActivityTask object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: limitExceeded, operationNotPermitted, unknownResource.
     */
    public func pollForActivityTask(
            input: SimpleWorkflowModel.PollForActivityTaskInput) -> EventLoopFuture<SimpleWorkflowModel.ActivityTask> {
        if let pollForActivityTaskEventLoopFutureAsyncOverride = pollForActivityTaskEventLoopFutureAsyncOverride {
            return pollForActivityTaskEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: ActivityTask.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the PollForDecisionTask operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PollForDecisionTaskInput object being passed to this operation.
     - Returns: A future to the DecisionTask object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: limitExceeded, operationNotPermitted, unknownResource.
     */
    public func pollForDecisionTask(
            input: SimpleWorkflowModel.PollForDecisionTaskInput) -> EventLoopFuture<SimpleWorkflowModel.DecisionTask> {
        if let pollForDecisionTaskEventLoopFutureAsyncOverride = pollForDecisionTaskEventLoopFutureAsyncOverride {
            return pollForDecisionTaskEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: DecisionTask.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the RecordActivityTaskHeartbeat operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RecordActivityTaskHeartbeatInput object being passed to this operation.
     - Returns: A future to the ActivityTaskStatus object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func recordActivityTaskHeartbeat(
            input: SimpleWorkflowModel.RecordActivityTaskHeartbeatInput) -> EventLoopFuture<SimpleWorkflowModel.ActivityTaskStatus> {
        if let recordActivityTaskHeartbeatEventLoopFutureAsyncOverride = recordActivityTaskHeartbeatEventLoopFutureAsyncOverride {
            return recordActivityTaskHeartbeatEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: ActivityTaskStatus.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the RegisterActivityType operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RegisterActivityTypeInput object being passed to this operation.
           The possible errors are: limitExceeded, operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    public func registerActivityType(
            input: SimpleWorkflowModel.RegisterActivityTypeInput) -> EventLoopFuture<Void> {
        if let registerActivityTypeEventLoopFutureAsyncOverride = registerActivityTypeEventLoopFutureAsyncOverride {
            return registerActivityTypeEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the RegisterDomain operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RegisterDomainInput object being passed to this operation.
           The possible errors are: domainAlreadyExists, limitExceeded, operationNotPermitted, tooManyTags.
     */
    public func registerDomain(
            input: SimpleWorkflowModel.RegisterDomainInput) -> EventLoopFuture<Void> {
        if let registerDomainEventLoopFutureAsyncOverride = registerDomainEventLoopFutureAsyncOverride {
            return registerDomainEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the RegisterWorkflowType operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RegisterWorkflowTypeInput object being passed to this operation.
           The possible errors are: limitExceeded, operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    public func registerWorkflowType(
            input: SimpleWorkflowModel.RegisterWorkflowTypeInput) -> EventLoopFuture<Void> {
        if let registerWorkflowTypeEventLoopFutureAsyncOverride = registerWorkflowTypeEventLoopFutureAsyncOverride {
            return registerWorkflowTypeEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the RequestCancelWorkflowExecution operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RequestCancelWorkflowExecutionInput object being passed to this operation.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func requestCancelWorkflowExecution(
            input: SimpleWorkflowModel.RequestCancelWorkflowExecutionInput) -> EventLoopFuture<Void> {
        if let requestCancelWorkflowExecutionEventLoopFutureAsyncOverride = requestCancelWorkflowExecutionEventLoopFutureAsyncOverride {
            return requestCancelWorkflowExecutionEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the RespondActivityTaskCanceled operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RespondActivityTaskCanceledInput object being passed to this operation.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func respondActivityTaskCanceled(
            input: SimpleWorkflowModel.RespondActivityTaskCanceledInput) -> EventLoopFuture<Void> {
        if let respondActivityTaskCanceledEventLoopFutureAsyncOverride = respondActivityTaskCanceledEventLoopFutureAsyncOverride {
            return respondActivityTaskCanceledEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the RespondActivityTaskCompleted operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RespondActivityTaskCompletedInput object being passed to this operation.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func respondActivityTaskCompleted(
            input: SimpleWorkflowModel.RespondActivityTaskCompletedInput) -> EventLoopFuture<Void> {
        if let respondActivityTaskCompletedEventLoopFutureAsyncOverride = respondActivityTaskCompletedEventLoopFutureAsyncOverride {
            return respondActivityTaskCompletedEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the RespondActivityTaskFailed operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RespondActivityTaskFailedInput object being passed to this operation.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func respondActivityTaskFailed(
            input: SimpleWorkflowModel.RespondActivityTaskFailedInput) -> EventLoopFuture<Void> {
        if let respondActivityTaskFailedEventLoopFutureAsyncOverride = respondActivityTaskFailedEventLoopFutureAsyncOverride {
            return respondActivityTaskFailedEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the RespondDecisionTaskCompleted operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RespondDecisionTaskCompletedInput object being passed to this operation.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func respondDecisionTaskCompleted(
            input: SimpleWorkflowModel.RespondDecisionTaskCompletedInput) -> EventLoopFuture<Void> {
        if let respondDecisionTaskCompletedEventLoopFutureAsyncOverride = respondDecisionTaskCompletedEventLoopFutureAsyncOverride {
            return respondDecisionTaskCompletedEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the SignalWorkflowExecution operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SignalWorkflowExecutionInput object being passed to this operation.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func signalWorkflowExecution(
            input: SimpleWorkflowModel.SignalWorkflowExecutionInput) -> EventLoopFuture<Void> {
        if let signalWorkflowExecutionEventLoopFutureAsyncOverride = signalWorkflowExecutionEventLoopFutureAsyncOverride {
            return signalWorkflowExecutionEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the StartWorkflowExecution operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated StartWorkflowExecutionInput object being passed to this operation.
     - Returns: A future to the Run object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: defaultUndefined, limitExceeded, operationNotPermitted, typeDeprecated, unknownResource, workflowExecutionAlreadyStarted.
     */
    public func startWorkflowExecution(
            input: SimpleWorkflowModel.StartWorkflowExecutionInput) -> EventLoopFuture<SimpleWorkflowModel.Run> {
        if let startWorkflowExecutionEventLoopFutureAsyncOverride = startWorkflowExecutionEventLoopFutureAsyncOverride {
            return startWorkflowExecutionEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Run.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the TagResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
           The possible errors are: limitExceeded, operationNotPermitted, tooManyTags, unknownResource.
     */
    public func tagResource(
            input: SimpleWorkflowModel.TagResourceInput) -> EventLoopFuture<Void> {
        if let tagResourceEventLoopFutureAsyncOverride = tagResourceEventLoopFutureAsyncOverride {
            return tagResourceEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the TerminateWorkflowExecution operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated TerminateWorkflowExecutionInput object being passed to this operation.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func terminateWorkflowExecution(
            input: SimpleWorkflowModel.TerminateWorkflowExecutionInput) -> EventLoopFuture<Void> {
        if let terminateWorkflowExecutionEventLoopFutureAsyncOverride = terminateWorkflowExecutionEventLoopFutureAsyncOverride {
            return terminateWorkflowExecutionEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the UndeprecateActivityType operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UndeprecateActivityTypeInput object being passed to this operation.
           The possible errors are: operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    public func undeprecateActivityType(
            input: SimpleWorkflowModel.UndeprecateActivityTypeInput) -> EventLoopFuture<Void> {
        if let undeprecateActivityTypeEventLoopFutureAsyncOverride = undeprecateActivityTypeEventLoopFutureAsyncOverride {
            return undeprecateActivityTypeEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the UndeprecateDomain operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UndeprecateDomainInput object being passed to this operation.
           The possible errors are: domainAlreadyExists, operationNotPermitted, unknownResource.
     */
    public func undeprecateDomain(
            input: SimpleWorkflowModel.UndeprecateDomainInput) -> EventLoopFuture<Void> {
        if let undeprecateDomainEventLoopFutureAsyncOverride = undeprecateDomainEventLoopFutureAsyncOverride {
            return undeprecateDomainEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the UndeprecateWorkflowType operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UndeprecateWorkflowTypeInput object being passed to this operation.
           The possible errors are: operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    public func undeprecateWorkflowType(
            input: SimpleWorkflowModel.UndeprecateWorkflowTypeInput) -> EventLoopFuture<Void> {
        if let undeprecateWorkflowTypeEventLoopFutureAsyncOverride = undeprecateWorkflowTypeEventLoopFutureAsyncOverride {
            return undeprecateWorkflowTypeEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the UntagResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
           The possible errors are: limitExceeded, operationNotPermitted, unknownResource.
     */
    public func untagResource(
            input: SimpleWorkflowModel.UntagResourceInput) -> EventLoopFuture<Void> {
        if let untagResourceEventLoopFutureAsyncOverride = untagResourceEventLoopFutureAsyncOverride {
            return untagResourceEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.fail(error)
        
        return promise.futureResult
    }
}
