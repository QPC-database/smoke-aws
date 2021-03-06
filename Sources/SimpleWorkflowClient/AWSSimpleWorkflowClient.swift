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
// AWSSimpleWorkflowClient.swift
// SimpleWorkflowClient
//

import Foundation
import SimpleWorkflowModel
import SmokeAWSCore
import SmokeHTTPClient
import NIO
import SmokeAWSHttp
import NIO
import NIOHTTP1
import AsyncHTTPClient
import Logging

public enum SimpleWorkflowClientError: Swift.Error {
    case invalidEndpoint(String)
    case unsupportedPayload
    case unknownError(String?)
}

 extension SimpleWorkflowError: ConvertableError {
    public static func asUnrecognizedError(error: Swift.Error) -> SimpleWorkflowError {
        return error.asUnrecognizedSimpleWorkflowError()
    }

    func isRetriable() -> Bool? {
        switch self {
        case .limitExceeded:
            return true
        default:
            return nil
        }
    }
}

private extension SmokeHTTPClient.HTTPClientError {
    func isRetriable() -> Bool {
        if let typedError = self.cause as? SimpleWorkflowError, let isRetriable = typedError.isRetriable() {
            return isRetriable
        } else {
            return self.isRetriableAccordingToCategory
        }
    }
}

/**
 AWS Client for the SimpleWorkflow service.
 */
public struct AWSSimpleWorkflowClient<InvocationReportingType: HTTPClientCoreInvocationReporting>: SimpleWorkflowClientProtocol, AWSClientProtocol {
    let httpClient: HTTPOperationsClient
    let ownsHttpClients: Bool
    public let awsRegion: AWSRegion
    public let service: String
    public let target: String?
    public let retryConfiguration: HTTPClientRetryConfiguration
    public let retryOnErrorProvider: (SmokeHTTPClient.HTTPClientError) -> Bool
    public let credentialsProvider: CredentialsProvider
    
    public let reporting: InvocationReportingType

    let operationsReporting: SimpleWorkflowOperationsReporting
    let invocationsReporting: SimpleWorkflowInvocationsReporting<InvocationReportingType>
    
    public init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                reporting: InvocationReportingType,
                endpointHostName: String,
                endpointPort: Int = 443,
                requiresTLS: Bool? = nil,
                service: String = "swf",
                contentType: String = "application/x-amz-json-1.0",
                target: String? = "SimpleWorkflowService",
                connectionTimeoutSeconds: Int64 = 10,
                retryConfiguration: HTTPClientRetryConfiguration = .default,
                eventLoopProvider: HTTPClient.EventLoopGroupProvider = .createNew,
                reportingConfiguration: SmokeAWSClientReportingConfiguration<SimpleWorkflowModelOperations>
                    = SmokeAWSClientReportingConfiguration<SimpleWorkflowModelOperations>() ) {
        let useTLS = requiresTLS ?? AWSHTTPClientDelegate.requiresTLS(forEndpointPort: endpointPort)
        let clientDelegate = JSONAWSHttpClientDelegate<SimpleWorkflowError>(requiresTLS: useTLS)

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
        self.retryConfiguration = retryConfiguration
        self.reporting = reporting
        self.retryOnErrorProvider = { error in error.isRetriable() }
        self.operationsReporting = SimpleWorkflowOperationsReporting(clientName: "AWSSimpleWorkflowClient", reportingConfiguration: reportingConfiguration)
        self.invocationsReporting = SimpleWorkflowInvocationsReporting(reporting: reporting, operationsReporting: self.operationsReporting)
    }
    
    internal init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                reporting: InvocationReportingType,
                httpClient: HTTPOperationsClient,
                service: String,
                target: String?,
                retryOnErrorProvider: @escaping (SmokeHTTPClient.HTTPClientError) -> Bool,
                retryConfiguration: HTTPClientRetryConfiguration,
                operationsReporting: SimpleWorkflowOperationsReporting) {
        self.httpClient = httpClient
        self.ownsHttpClients = false
        self.awsRegion = awsRegion
        self.service = service
        self.target = target
        self.credentialsProvider = credentialsProvider
        self.retryConfiguration = retryConfiguration
        self.reporting = reporting
        self.retryOnErrorProvider = retryOnErrorProvider
        self.operationsReporting = operationsReporting
        self.invocationsReporting = SimpleWorkflowInvocationsReporting(reporting: reporting, operationsReporting: self.operationsReporting)
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
     Invokes the CountClosedWorkflowExecutions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CountClosedWorkflowExecutionsInput object being passed to this operation.
     - Returns: A future to the WorkflowExecutionCount object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func countClosedWorkflowExecutions(
            input: SimpleWorkflowModel.CountClosedWorkflowExecutionsInput) -> EventLoopFuture<SimpleWorkflowModel.WorkflowExecutionCount> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: CountClosedWorkflowExecutionsOperationHTTPRequestInput(encodable: input),
                                 operation: SimpleWorkflowModelOperations.countClosedWorkflowExecutions.rawValue,
                                 reporting: self.invocationsReporting.countClosedWorkflowExecutions)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: CountOpenWorkflowExecutionsOperationHTTPRequestInput(encodable: input),
                                 operation: SimpleWorkflowModelOperations.countOpenWorkflowExecutions.rawValue,
                                 reporting: self.invocationsReporting.countOpenWorkflowExecutions)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: CountPendingActivityTasksOperationHTTPRequestInput(encodable: input),
                                 operation: SimpleWorkflowModelOperations.countPendingActivityTasks.rawValue,
                                 reporting: self.invocationsReporting.countPendingActivityTasks)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: CountPendingDecisionTasksOperationHTTPRequestInput(encodable: input),
                                 operation: SimpleWorkflowModelOperations.countPendingDecisionTasks.rawValue,
                                 reporting: self.invocationsReporting.countPendingDecisionTasks)
    }

    /**
     Invokes the DeprecateActivityType operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeprecateActivityTypeInput object being passed to this operation.
           The possible errors are: operationNotPermitted, typeDeprecated, unknownResource.
     */
    public func deprecateActivityType(
            input: SimpleWorkflowModel.DeprecateActivityTypeInput) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: DeprecateActivityTypeOperationHTTPRequestInput(encodable: input),
                                    operation: SimpleWorkflowModelOperations.deprecateActivityType.rawValue,
                                    reporting: self.invocationsReporting.deprecateActivityType)
    }

    /**
     Invokes the DeprecateDomain operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeprecateDomainInput object being passed to this operation.
           The possible errors are: domainDeprecated, operationNotPermitted, unknownResource.
     */
    public func deprecateDomain(
            input: SimpleWorkflowModel.DeprecateDomainInput) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: DeprecateDomainOperationHTTPRequestInput(encodable: input),
                                    operation: SimpleWorkflowModelOperations.deprecateDomain.rawValue,
                                    reporting: self.invocationsReporting.deprecateDomain)
    }

    /**
     Invokes the DeprecateWorkflowType operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeprecateWorkflowTypeInput object being passed to this operation.
           The possible errors are: operationNotPermitted, typeDeprecated, unknownResource.
     */
    public func deprecateWorkflowType(
            input: SimpleWorkflowModel.DeprecateWorkflowTypeInput) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: DeprecateWorkflowTypeOperationHTTPRequestInput(encodable: input),
                                    operation: SimpleWorkflowModelOperations.deprecateWorkflowType.rawValue,
                                    reporting: self.invocationsReporting.deprecateWorkflowType)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: DescribeActivityTypeOperationHTTPRequestInput(encodable: input),
                                 operation: SimpleWorkflowModelOperations.describeActivityType.rawValue,
                                 reporting: self.invocationsReporting.describeActivityType)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: DescribeDomainOperationHTTPRequestInput(encodable: input),
                                 operation: SimpleWorkflowModelOperations.describeDomain.rawValue,
                                 reporting: self.invocationsReporting.describeDomain)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: DescribeWorkflowExecutionOperationHTTPRequestInput(encodable: input),
                                 operation: SimpleWorkflowModelOperations.describeWorkflowExecution.rawValue,
                                 reporting: self.invocationsReporting.describeWorkflowExecution)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: DescribeWorkflowTypeOperationHTTPRequestInput(encodable: input),
                                 operation: SimpleWorkflowModelOperations.describeWorkflowType.rawValue,
                                 reporting: self.invocationsReporting.describeWorkflowType)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: GetWorkflowExecutionHistoryOperationHTTPRequestInput(encodable: input),
                                 operation: SimpleWorkflowModelOperations.getWorkflowExecutionHistory.rawValue,
                                 reporting: self.invocationsReporting.getWorkflowExecutionHistory)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: ListActivityTypesOperationHTTPRequestInput(encodable: input),
                                 operation: SimpleWorkflowModelOperations.listActivityTypes.rawValue,
                                 reporting: self.invocationsReporting.listActivityTypes)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: ListClosedWorkflowExecutionsOperationHTTPRequestInput(encodable: input),
                                 operation: SimpleWorkflowModelOperations.listClosedWorkflowExecutions.rawValue,
                                 reporting: self.invocationsReporting.listClosedWorkflowExecutions)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: ListDomainsOperationHTTPRequestInput(encodable: input),
                                 operation: SimpleWorkflowModelOperations.listDomains.rawValue,
                                 reporting: self.invocationsReporting.listDomains)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: ListOpenWorkflowExecutionsOperationHTTPRequestInput(encodable: input),
                                 operation: SimpleWorkflowModelOperations.listOpenWorkflowExecutions.rawValue,
                                 reporting: self.invocationsReporting.listOpenWorkflowExecutions)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: ListTagsForResourceOperationHTTPRequestInput(encodable: input),
                                 operation: SimpleWorkflowModelOperations.listTagsForResource.rawValue,
                                 reporting: self.invocationsReporting.listTagsForResource)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: ListWorkflowTypesOperationHTTPRequestInput(encodable: input),
                                 operation: SimpleWorkflowModelOperations.listWorkflowTypes.rawValue,
                                 reporting: self.invocationsReporting.listWorkflowTypes)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: PollForActivityTaskOperationHTTPRequestInput(encodable: input),
                                 operation: SimpleWorkflowModelOperations.pollForActivityTask.rawValue,
                                 reporting: self.invocationsReporting.pollForActivityTask)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: PollForDecisionTaskOperationHTTPRequestInput(encodable: input),
                                 operation: SimpleWorkflowModelOperations.pollForDecisionTask.rawValue,
                                 reporting: self.invocationsReporting.pollForDecisionTask)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: RecordActivityTaskHeartbeatOperationHTTPRequestInput(encodable: input),
                                 operation: SimpleWorkflowModelOperations.recordActivityTaskHeartbeat.rawValue,
                                 reporting: self.invocationsReporting.recordActivityTaskHeartbeat)
    }

    /**
     Invokes the RegisterActivityType operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RegisterActivityTypeInput object being passed to this operation.
           The possible errors are: limitExceeded, operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    public func registerActivityType(
            input: SimpleWorkflowModel.RegisterActivityTypeInput) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: RegisterActivityTypeOperationHTTPRequestInput(encodable: input),
                                    operation: SimpleWorkflowModelOperations.registerActivityType.rawValue,
                                    reporting: self.invocationsReporting.registerActivityType)
    }

    /**
     Invokes the RegisterDomain operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RegisterDomainInput object being passed to this operation.
           The possible errors are: domainAlreadyExists, limitExceeded, operationNotPermitted, tooManyTags.
     */
    public func registerDomain(
            input: SimpleWorkflowModel.RegisterDomainInput) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: RegisterDomainOperationHTTPRequestInput(encodable: input),
                                    operation: SimpleWorkflowModelOperations.registerDomain.rawValue,
                                    reporting: self.invocationsReporting.registerDomain)
    }

    /**
     Invokes the RegisterWorkflowType operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RegisterWorkflowTypeInput object being passed to this operation.
           The possible errors are: limitExceeded, operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    public func registerWorkflowType(
            input: SimpleWorkflowModel.RegisterWorkflowTypeInput) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: RegisterWorkflowTypeOperationHTTPRequestInput(encodable: input),
                                    operation: SimpleWorkflowModelOperations.registerWorkflowType.rawValue,
                                    reporting: self.invocationsReporting.registerWorkflowType)
    }

    /**
     Invokes the RequestCancelWorkflowExecution operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RequestCancelWorkflowExecutionInput object being passed to this operation.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func requestCancelWorkflowExecution(
            input: SimpleWorkflowModel.RequestCancelWorkflowExecutionInput) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: RequestCancelWorkflowExecutionOperationHTTPRequestInput(encodable: input),
                                    operation: SimpleWorkflowModelOperations.requestCancelWorkflowExecution.rawValue,
                                    reporting: self.invocationsReporting.requestCancelWorkflowExecution)
    }

    /**
     Invokes the RespondActivityTaskCanceled operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RespondActivityTaskCanceledInput object being passed to this operation.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func respondActivityTaskCanceled(
            input: SimpleWorkflowModel.RespondActivityTaskCanceledInput) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: RespondActivityTaskCanceledOperationHTTPRequestInput(encodable: input),
                                    operation: SimpleWorkflowModelOperations.respondActivityTaskCanceled.rawValue,
                                    reporting: self.invocationsReporting.respondActivityTaskCanceled)
    }

    /**
     Invokes the RespondActivityTaskCompleted operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RespondActivityTaskCompletedInput object being passed to this operation.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func respondActivityTaskCompleted(
            input: SimpleWorkflowModel.RespondActivityTaskCompletedInput) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: RespondActivityTaskCompletedOperationHTTPRequestInput(encodable: input),
                                    operation: SimpleWorkflowModelOperations.respondActivityTaskCompleted.rawValue,
                                    reporting: self.invocationsReporting.respondActivityTaskCompleted)
    }

    /**
     Invokes the RespondActivityTaskFailed operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RespondActivityTaskFailedInput object being passed to this operation.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func respondActivityTaskFailed(
            input: SimpleWorkflowModel.RespondActivityTaskFailedInput) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: RespondActivityTaskFailedOperationHTTPRequestInput(encodable: input),
                                    operation: SimpleWorkflowModelOperations.respondActivityTaskFailed.rawValue,
                                    reporting: self.invocationsReporting.respondActivityTaskFailed)
    }

    /**
     Invokes the RespondDecisionTaskCompleted operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RespondDecisionTaskCompletedInput object being passed to this operation.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func respondDecisionTaskCompleted(
            input: SimpleWorkflowModel.RespondDecisionTaskCompletedInput) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: RespondDecisionTaskCompletedOperationHTTPRequestInput(encodable: input),
                                    operation: SimpleWorkflowModelOperations.respondDecisionTaskCompleted.rawValue,
                                    reporting: self.invocationsReporting.respondDecisionTaskCompleted)
    }

    /**
     Invokes the SignalWorkflowExecution operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SignalWorkflowExecutionInput object being passed to this operation.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func signalWorkflowExecution(
            input: SimpleWorkflowModel.SignalWorkflowExecutionInput) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: SignalWorkflowExecutionOperationHTTPRequestInput(encodable: input),
                                    operation: SimpleWorkflowModelOperations.signalWorkflowExecution.rawValue,
                                    reporting: self.invocationsReporting.signalWorkflowExecution)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: StartWorkflowExecutionOperationHTTPRequestInput(encodable: input),
                                 operation: SimpleWorkflowModelOperations.startWorkflowExecution.rawValue,
                                 reporting: self.invocationsReporting.startWorkflowExecution)
    }

    /**
     Invokes the TagResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
           The possible errors are: limitExceeded, operationNotPermitted, tooManyTags, unknownResource.
     */
    public func tagResource(
            input: SimpleWorkflowModel.TagResourceInput) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: TagResourceOperationHTTPRequestInput(encodable: input),
                                    operation: SimpleWorkflowModelOperations.tagResource.rawValue,
                                    reporting: self.invocationsReporting.tagResource)
    }

    /**
     Invokes the TerminateWorkflowExecution operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated TerminateWorkflowExecutionInput object being passed to this operation.
           The possible errors are: operationNotPermitted, unknownResource.
     */
    public func terminateWorkflowExecution(
            input: SimpleWorkflowModel.TerminateWorkflowExecutionInput) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: TerminateWorkflowExecutionOperationHTTPRequestInput(encodable: input),
                                    operation: SimpleWorkflowModelOperations.terminateWorkflowExecution.rawValue,
                                    reporting: self.invocationsReporting.terminateWorkflowExecution)
    }

    /**
     Invokes the UndeprecateActivityType operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UndeprecateActivityTypeInput object being passed to this operation.
           The possible errors are: operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    public func undeprecateActivityType(
            input: SimpleWorkflowModel.UndeprecateActivityTypeInput) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: UndeprecateActivityTypeOperationHTTPRequestInput(encodable: input),
                                    operation: SimpleWorkflowModelOperations.undeprecateActivityType.rawValue,
                                    reporting: self.invocationsReporting.undeprecateActivityType)
    }

    /**
     Invokes the UndeprecateDomain operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UndeprecateDomainInput object being passed to this operation.
           The possible errors are: domainAlreadyExists, operationNotPermitted, unknownResource.
     */
    public func undeprecateDomain(
            input: SimpleWorkflowModel.UndeprecateDomainInput) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: UndeprecateDomainOperationHTTPRequestInput(encodable: input),
                                    operation: SimpleWorkflowModelOperations.undeprecateDomain.rawValue,
                                    reporting: self.invocationsReporting.undeprecateDomain)
    }

    /**
     Invokes the UndeprecateWorkflowType operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UndeprecateWorkflowTypeInput object being passed to this operation.
           The possible errors are: operationNotPermitted, typeAlreadyExists, unknownResource.
     */
    public func undeprecateWorkflowType(
            input: SimpleWorkflowModel.UndeprecateWorkflowTypeInput) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: UndeprecateWorkflowTypeOperationHTTPRequestInput(encodable: input),
                                    operation: SimpleWorkflowModelOperations.undeprecateWorkflowType.rawValue,
                                    reporting: self.invocationsReporting.undeprecateWorkflowType)
    }

    /**
     Invokes the UntagResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
           The possible errors are: limitExceeded, operationNotPermitted, unknownResource.
     */
    public func untagResource(
            input: SimpleWorkflowModel.UntagResourceInput) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: UntagResourceOperationHTTPRequestInput(encodable: input),
                                    operation: SimpleWorkflowModelOperations.untagResource.rawValue,
                                    reporting: self.invocationsReporting.untagResource)
    }
}
