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
// AWSStepFunctionsClient.swift
// StepFunctionsClient
//

import Foundation
import StepFunctionsModel
import SmokeAWSCore
import SmokeHTTPClient
import NIO
import SmokeAWSHttp
import NIO
import NIOHTTP1
import AsyncHTTPClient
import Logging

public enum StepFunctionsClientError: Swift.Error {
    case invalidEndpoint(String)
    case unsupportedPayload
    case unknownError(String?)
}

 extension StepFunctionsError: ConvertableError {
    public static func asUnrecognizedError(error: Swift.Error) -> StepFunctionsError {
        return error.asUnrecognizedStepFunctionsError()
    }

    public func isRetriable() -> Bool? {
        switch self {
        case .activityLimitExceeded, .activityWorkerLimitExceeded, .executionLimitExceeded, .stateMachineLimitExceeded:
            return true
        default:
            return nil
        }
    }
}

private extension SmokeHTTPClient.HTTPClientError {
    func isRetriable() -> Bool {
        if let typedError = self.cause as? StepFunctionsError, let isRetriable = typedError.isRetriable() {
            return isRetriable
        } else {
            return self.isRetriableAccordingToCategory
        }
    }
}

/**
 AWS Client for the StepFunctions service.
 */
public struct AWSStepFunctionsClient<InvocationReportingType: HTTPClientCoreInvocationReporting>: StepFunctionsClientProtocol, AWSClientProtocol {
    let httpClient: HTTPOperationsClient
    let ownsHttpClients: Bool
    public let awsRegion: AWSRegion
    public let service: String
    public let target: String?
    public let retryConfiguration: HTTPClientRetryConfiguration
    public let retryOnErrorProvider: (SmokeHTTPClient.HTTPClientError) -> Bool
    public let credentialsProvider: CredentialsProvider
    
    public let eventLoopGroup: EventLoopGroup
    public let reporting: InvocationReportingType

    let operationsReporting: StepFunctionsOperationsReporting
    let invocationsReporting: StepFunctionsInvocationsReporting<InvocationReportingType>
    
    public init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                reporting: InvocationReportingType,
                endpointHostName: String,
                endpointPort: Int = 443,
                requiresTLS: Bool? = nil,
                service: String = "states",
                contentType: String = "application/x-amz-json-1.0",
                target: String? = "AWSStepFunctions",
                connectionTimeoutSeconds: Int64 = 10,
                retryConfiguration: HTTPClientRetryConfiguration = .default,
                eventLoopProvider: HTTPClient.EventLoopGroupProvider = .createNew,
                reportingConfiguration: SmokeAWSClientReportingConfiguration<StepFunctionsModelOperations>
                    = SmokeAWSClientReportingConfiguration<StepFunctionsModelOperations>() ) {
        self.eventLoopGroup = AWSClientHelper.getEventLoop(eventLoopGroupProvider: eventLoopProvider)
        let useTLS = requiresTLS ?? AWSHTTPClientDelegate.requiresTLS(forEndpointPort: endpointPort)
        let clientDelegate = JSONAWSHttpClientDelegate<StepFunctionsError>(requiresTLS: useTLS)

        self.httpClient = HTTPOperationsClient(
            endpointHostName: endpointHostName,
            endpointPort: endpointPort,
            contentType: contentType,
            clientDelegate: clientDelegate,
            connectionTimeoutSeconds: connectionTimeoutSeconds,
            eventLoopProvider: .shared(self.eventLoopGroup))
        self.ownsHttpClients = true
        self.awsRegion = awsRegion
        self.service = service
        self.target = target
        self.credentialsProvider = credentialsProvider
        self.retryConfiguration = retryConfiguration
        self.reporting = reporting
        self.retryOnErrorProvider = { error in error.isRetriable() }
        self.operationsReporting = StepFunctionsOperationsReporting(clientName: "AWSStepFunctionsClient", reportingConfiguration: reportingConfiguration)
        self.invocationsReporting = StepFunctionsInvocationsReporting(reporting: reporting, operationsReporting: self.operationsReporting)
    }
    
    internal init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                reporting: InvocationReportingType,
                httpClient: HTTPOperationsClient,
                service: String,
                target: String?,
                eventLoopGroup: EventLoopGroup,
                retryOnErrorProvider: @escaping (SmokeHTTPClient.HTTPClientError) -> Bool,
                retryConfiguration: HTTPClientRetryConfiguration,
                operationsReporting: StepFunctionsOperationsReporting) {
        self.eventLoopGroup = eventLoopGroup
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
        self.invocationsReporting = StepFunctionsInvocationsReporting(reporting: reporting, operationsReporting: self.operationsReporting)
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
     Invokes the CreateActivity operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateActivityInput object being passed to this operation.
     - Returns: A future to the CreateActivityOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: activityLimitExceeded, invalidName, tooManyTags.
     */
    public func createActivity(
            input: StepFunctionsModel.CreateActivityInput) -> EventLoopFuture<StepFunctionsModel.CreateActivityOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: CreateActivityOperationHTTPRequestInput(encodable: input),
                                 operation: StepFunctionsModelOperations.createActivity.rawValue,
                                 reporting: self.invocationsReporting.createActivity,
                                 errorType: StepFunctionsError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: CreateStateMachineOperationHTTPRequestInput(encodable: input),
                                 operation: StepFunctionsModelOperations.createStateMachine.rawValue,
                                 reporting: self.invocationsReporting.createStateMachine,
                                 errorType: StepFunctionsError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: DeleteActivityOperationHTTPRequestInput(encodable: input),
                                 operation: StepFunctionsModelOperations.deleteActivity.rawValue,
                                 reporting: self.invocationsReporting.deleteActivity,
                                 errorType: StepFunctionsError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: DeleteStateMachineOperationHTTPRequestInput(encodable: input),
                                 operation: StepFunctionsModelOperations.deleteStateMachine.rawValue,
                                 reporting: self.invocationsReporting.deleteStateMachine,
                                 errorType: StepFunctionsError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: DescribeActivityOperationHTTPRequestInput(encodable: input),
                                 operation: StepFunctionsModelOperations.describeActivity.rawValue,
                                 reporting: self.invocationsReporting.describeActivity,
                                 errorType: StepFunctionsError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: DescribeExecutionOperationHTTPRequestInput(encodable: input),
                                 operation: StepFunctionsModelOperations.describeExecution.rawValue,
                                 reporting: self.invocationsReporting.describeExecution,
                                 errorType: StepFunctionsError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: DescribeStateMachineOperationHTTPRequestInput(encodable: input),
                                 operation: StepFunctionsModelOperations.describeStateMachine.rawValue,
                                 reporting: self.invocationsReporting.describeStateMachine,
                                 errorType: StepFunctionsError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: DescribeStateMachineForExecutionOperationHTTPRequestInput(encodable: input),
                                 operation: StepFunctionsModelOperations.describeStateMachineForExecution.rawValue,
                                 reporting: self.invocationsReporting.describeStateMachineForExecution,
                                 errorType: StepFunctionsError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: GetActivityTaskOperationHTTPRequestInput(encodable: input),
                                 operation: StepFunctionsModelOperations.getActivityTask.rawValue,
                                 reporting: self.invocationsReporting.getActivityTask,
                                 errorType: StepFunctionsError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: GetExecutionHistoryOperationHTTPRequestInput(encodable: input),
                                 operation: StepFunctionsModelOperations.getExecutionHistory.rawValue,
                                 reporting: self.invocationsReporting.getExecutionHistory,
                                 errorType: StepFunctionsError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: ListActivitiesOperationHTTPRequestInput(encodable: input),
                                 operation: StepFunctionsModelOperations.listActivities.rawValue,
                                 reporting: self.invocationsReporting.listActivities,
                                 errorType: StepFunctionsError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: ListExecutionsOperationHTTPRequestInput(encodable: input),
                                 operation: StepFunctionsModelOperations.listExecutions.rawValue,
                                 reporting: self.invocationsReporting.listExecutions,
                                 errorType: StepFunctionsError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: ListStateMachinesOperationHTTPRequestInput(encodable: input),
                                 operation: StepFunctionsModelOperations.listStateMachines.rawValue,
                                 reporting: self.invocationsReporting.listStateMachines,
                                 errorType: StepFunctionsError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: ListTagsForResourceOperationHTTPRequestInput(encodable: input),
                                 operation: StepFunctionsModelOperations.listTagsForResource.rawValue,
                                 reporting: self.invocationsReporting.listTagsForResource,
                                 errorType: StepFunctionsError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: SendTaskFailureOperationHTTPRequestInput(encodable: input),
                                 operation: StepFunctionsModelOperations.sendTaskFailure.rawValue,
                                 reporting: self.invocationsReporting.sendTaskFailure,
                                 errorType: StepFunctionsError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: SendTaskHeartbeatOperationHTTPRequestInput(encodable: input),
                                 operation: StepFunctionsModelOperations.sendTaskHeartbeat.rawValue,
                                 reporting: self.invocationsReporting.sendTaskHeartbeat,
                                 errorType: StepFunctionsError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: SendTaskSuccessOperationHTTPRequestInput(encodable: input),
                                 operation: StepFunctionsModelOperations.sendTaskSuccess.rawValue,
                                 reporting: self.invocationsReporting.sendTaskSuccess,
                                 errorType: StepFunctionsError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: StartExecutionOperationHTTPRequestInput(encodable: input),
                                 operation: StepFunctionsModelOperations.startExecution.rawValue,
                                 reporting: self.invocationsReporting.startExecution,
                                 errorType: StepFunctionsError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: StartSyncExecutionOperationHTTPRequestInput(encodable: input),
                                 operation: StepFunctionsModelOperations.startSyncExecution.rawValue,
                                 reporting: self.invocationsReporting.startSyncExecution,
                                 errorType: StepFunctionsError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: StopExecutionOperationHTTPRequestInput(encodable: input),
                                 operation: StepFunctionsModelOperations.stopExecution.rawValue,
                                 reporting: self.invocationsReporting.stopExecution,
                                 errorType: StepFunctionsError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: TagResourceOperationHTTPRequestInput(encodable: input),
                                 operation: StepFunctionsModelOperations.tagResource.rawValue,
                                 reporting: self.invocationsReporting.tagResource,
                                 errorType: StepFunctionsError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: UntagResourceOperationHTTPRequestInput(encodable: input),
                                 operation: StepFunctionsModelOperations.untagResource.rawValue,
                                 reporting: self.invocationsReporting.untagResource,
                                 errorType: StepFunctionsError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: UpdateStateMachineOperationHTTPRequestInput(encodable: input),
                                 operation: StepFunctionsModelOperations.updateStateMachine.rawValue,
                                 reporting: self.invocationsReporting.updateStateMachine,
                                 errorType: StepFunctionsError.self)
    }
}
