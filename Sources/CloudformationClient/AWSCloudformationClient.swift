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
// AWSCloudformationClient.swift
// CloudformationClient
//

import Foundation
import CloudformationModel
import SmokeAWSCore
import SmokeHTTPClient
import NIO
import SmokeAWSHttp
import NIO
import NIOHTTP1
import AsyncHTTPClient
import Logging

public enum CloudformationClientError: Swift.Error {
    case invalidEndpoint(String)
    case unsupportedPayload
    case unknownError(String?)
}

 extension CloudformationError: ConvertableError {
    public static func asUnrecognizedError(error: Swift.Error) -> CloudformationError {
        return error.asUnrecognizedCloudformationError()
    }
}

/**
 AWS Client for the Cloudformation service.
 */
public struct AWSCloudformationClient<InvocationReportingType: HTTPClientCoreInvocationReporting>: CloudformationClientProtocol, AWSQueryClientProtocol {
    let httpClient: HTTPOperationsClient
    let ownsHttpClients: Bool
    public let awsRegion: AWSRegion
    public let service: String
    public let apiVersion: String
    public let target: String?
    public let retryConfiguration: HTTPClientRetryConfiguration
    public let retryOnErrorProvider: (SmokeHTTPClient.HTTPClientError) -> Bool
    public let credentialsProvider: CredentialsProvider
    
    public let eventLoopProvider: HTTPClient.EventLoopGroupProvider
    public let reporting: InvocationReportingType

    let operationsReporting: CloudformationOperationsReporting
    let invocationsReporting: CloudformationInvocationsReporting<InvocationReportingType>
    
    public init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                reporting: InvocationReportingType,
                endpointHostName: String,
                endpointPort: Int = 443,
                requiresTLS: Bool? = nil,
                service: String = "cloudformation",
                contentType: String = "application/octet-stream",
                apiVersion: String = "2010-05-15",
                connectionTimeoutSeconds: Int64 = 10,
                retryConfiguration: HTTPClientRetryConfiguration = .default,
                eventLoopProvider: HTTPClient.EventLoopGroupProvider = .createNew,
                reportingConfiguration: SmokeAWSClientReportingConfiguration<CloudformationModelOperations>
                    = SmokeAWSClientReportingConfiguration<CloudformationModelOperations>() ) {
        let useTLS = requiresTLS ?? AWSHTTPClientDelegate.requiresTLS(forEndpointPort: endpointPort)
        let clientDelegate = XMLAWSHttpClientDelegate<CloudformationError>(requiresTLS: useTLS,
            outputListDecodingStrategy: .collapseListUsingItemTag("member"), 
            inputQueryListEncodingStrategy: .expandListWithIndexAndItemTag(itemTag: "member"))

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
        self.target = nil
        self.credentialsProvider = credentialsProvider
        self.eventLoopProvider = eventLoopProvider
        self.retryConfiguration = retryConfiguration
        self.reporting = reporting
        self.retryOnErrorProvider = { error in error.isRetriable() }
        self.apiVersion = apiVersion
        self.operationsReporting = CloudformationOperationsReporting(clientName: "AWSCloudformationClient", reportingConfiguration: reportingConfiguration)
        self.invocationsReporting = CloudformationInvocationsReporting(reporting: reporting, operationsReporting: self.operationsReporting)
    }
    
    internal init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                reporting: InvocationReportingType,
                httpClient: HTTPOperationsClient,
                service: String,
                apiVersion: String,
                eventLoopProvider: HTTPClient.EventLoopGroupProvider,
                retryOnErrorProvider: @escaping (SmokeHTTPClient.HTTPClientError) -> Bool,
                retryConfiguration: HTTPClientRetryConfiguration,
                operationsReporting: CloudformationOperationsReporting) {
        self.httpClient = httpClient
        self.ownsHttpClients = false
        self.awsRegion = awsRegion
        self.service = service
        self.target = nil
        self.credentialsProvider = credentialsProvider
        self.eventLoopProvider = eventLoopProvider
        self.retryConfiguration = retryConfiguration
        self.reporting = reporting
        self.retryOnErrorProvider = retryOnErrorProvider
        self.apiVersion = apiVersion
        self.operationsReporting = operationsReporting
        self.invocationsReporting = CloudformationInvocationsReporting(reporting: reporting, operationsReporting: self.operationsReporting)
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
     Invokes the CancelUpdateStack operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CancelUpdateStackInput object being passed to this operation.
           The possible errors are: tokenAlreadyExists.
     */
    public func cancelUpdateStack(
            input: CloudformationModel.CancelUpdateStackInput) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: CancelUpdateStackOperationHTTPRequestInput(encodable: input),
                                    action: CloudformationModelOperations.cancelUpdateStack.rawValue,
                                    reporting: self.invocationsReporting.cancelUpdateStack)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ContinueUpdateRollbackOperationHTTPRequestInput(encodable: input),
                                 action: CloudformationModelOperations.continueUpdateRollback.rawValue,
                                 reporting: self.invocationsReporting.continueUpdateRollback)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateChangeSetOperationHTTPRequestInput(encodable: input),
                                 action: CloudformationModelOperations.createChangeSet.rawValue,
                                 reporting: self.invocationsReporting.createChangeSet)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateStackOperationHTTPRequestInput(encodable: input),
                                 action: CloudformationModelOperations.createStack.rawValue,
                                 reporting: self.invocationsReporting.createStack)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateStackInstancesOperationHTTPRequestInput(encodable: input),
                                 action: CloudformationModelOperations.createStackInstances.rawValue,
                                 reporting: self.invocationsReporting.createStackInstances)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateStackSetOperationHTTPRequestInput(encodable: input),
                                 action: CloudformationModelOperations.createStackSet.rawValue,
                                 reporting: self.invocationsReporting.createStackSet)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeleteChangeSetOperationHTTPRequestInput(encodable: input),
                                 action: CloudformationModelOperations.deleteChangeSet.rawValue,
                                 reporting: self.invocationsReporting.deleteChangeSet)
    }

    /**
     Invokes the DeleteStack operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteStackInput object being passed to this operation.
           The possible errors are: tokenAlreadyExists.
     */
    public func deleteStack(
            input: CloudformationModel.DeleteStackInput) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: DeleteStackOperationHTTPRequestInput(encodable: input),
                                    action: CloudformationModelOperations.deleteStack.rawValue,
                                    reporting: self.invocationsReporting.deleteStack)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeleteStackInstancesOperationHTTPRequestInput(encodable: input),
                                 action: CloudformationModelOperations.deleteStackInstances.rawValue,
                                 reporting: self.invocationsReporting.deleteStackInstances)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeleteStackSetOperationHTTPRequestInput(encodable: input),
                                 action: CloudformationModelOperations.deleteStackSet.rawValue,
                                 reporting: self.invocationsReporting.deleteStackSet)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeregisterTypeOperationHTTPRequestInput(encodable: input),
                                 action: CloudformationModelOperations.deregisterType.rawValue,
                                 reporting: self.invocationsReporting.deregisterType)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeAccountLimitsOperationHTTPRequestInput(encodable: input),
                                 action: CloudformationModelOperations.describeAccountLimits.rawValue,
                                 reporting: self.invocationsReporting.describeAccountLimits)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeChangeSetOperationHTTPRequestInput(encodable: input),
                                 action: CloudformationModelOperations.describeChangeSet.rawValue,
                                 reporting: self.invocationsReporting.describeChangeSet)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeStackDriftDetectionStatusOperationHTTPRequestInput(encodable: input),
                                 action: CloudformationModelOperations.describeStackDriftDetectionStatus.rawValue,
                                 reporting: self.invocationsReporting.describeStackDriftDetectionStatus)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeStackEventsOperationHTTPRequestInput(encodable: input),
                                 action: CloudformationModelOperations.describeStackEvents.rawValue,
                                 reporting: self.invocationsReporting.describeStackEvents)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeStackInstanceOperationHTTPRequestInput(encodable: input),
                                 action: CloudformationModelOperations.describeStackInstance.rawValue,
                                 reporting: self.invocationsReporting.describeStackInstance)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeStackResourceOperationHTTPRequestInput(encodable: input),
                                 action: CloudformationModelOperations.describeStackResource.rawValue,
                                 reporting: self.invocationsReporting.describeStackResource)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeStackResourceDriftsOperationHTTPRequestInput(encodable: input),
                                 action: CloudformationModelOperations.describeStackResourceDrifts.rawValue,
                                 reporting: self.invocationsReporting.describeStackResourceDrifts)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeStackResourcesOperationHTTPRequestInput(encodable: input),
                                 action: CloudformationModelOperations.describeStackResources.rawValue,
                                 reporting: self.invocationsReporting.describeStackResources)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeStackSetOperationHTTPRequestInput(encodable: input),
                                 action: CloudformationModelOperations.describeStackSet.rawValue,
                                 reporting: self.invocationsReporting.describeStackSet)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeStackSetOperationOperationHTTPRequestInput(encodable: input),
                                 action: CloudformationModelOperations.describeStackSetOperation.rawValue,
                                 reporting: self.invocationsReporting.describeStackSetOperation)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeStacksOperationHTTPRequestInput(encodable: input),
                                 action: CloudformationModelOperations.describeStacks.rawValue,
                                 reporting: self.invocationsReporting.describeStacks)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeTypeOperationHTTPRequestInput(encodable: input),
                                 action: CloudformationModelOperations.describeType.rawValue,
                                 reporting: self.invocationsReporting.describeType)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeTypeRegistrationOperationHTTPRequestInput(encodable: input),
                                 action: CloudformationModelOperations.describeTypeRegistration.rawValue,
                                 reporting: self.invocationsReporting.describeTypeRegistration)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DetectStackDriftOperationHTTPRequestInput(encodable: input),
                                 action: CloudformationModelOperations.detectStackDrift.rawValue,
                                 reporting: self.invocationsReporting.detectStackDrift)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DetectStackResourceDriftOperationHTTPRequestInput(encodable: input),
                                 action: CloudformationModelOperations.detectStackResourceDrift.rawValue,
                                 reporting: self.invocationsReporting.detectStackResourceDrift)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DetectStackSetDriftOperationHTTPRequestInput(encodable: input),
                                 action: CloudformationModelOperations.detectStackSetDrift.rawValue,
                                 reporting: self.invocationsReporting.detectStackSetDrift)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: EstimateTemplateCostOperationHTTPRequestInput(encodable: input),
                                 action: CloudformationModelOperations.estimateTemplateCost.rawValue,
                                 reporting: self.invocationsReporting.estimateTemplateCost)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ExecuteChangeSetOperationHTTPRequestInput(encodable: input),
                                 action: CloudformationModelOperations.executeChangeSet.rawValue,
                                 reporting: self.invocationsReporting.executeChangeSet)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: GetStackPolicyOperationHTTPRequestInput(encodable: input),
                                 action: CloudformationModelOperations.getStackPolicy.rawValue,
                                 reporting: self.invocationsReporting.getStackPolicy)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: GetTemplateOperationHTTPRequestInput(encodable: input),
                                 action: CloudformationModelOperations.getTemplate.rawValue,
                                 reporting: self.invocationsReporting.getTemplate)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: GetTemplateSummaryOperationHTTPRequestInput(encodable: input),
                                 action: CloudformationModelOperations.getTemplateSummary.rawValue,
                                 reporting: self.invocationsReporting.getTemplateSummary)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ListChangeSetsOperationHTTPRequestInput(encodable: input),
                                 action: CloudformationModelOperations.listChangeSets.rawValue,
                                 reporting: self.invocationsReporting.listChangeSets)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ListExportsOperationHTTPRequestInput(encodable: input),
                                 action: CloudformationModelOperations.listExports.rawValue,
                                 reporting: self.invocationsReporting.listExports)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ListImportsOperationHTTPRequestInput(encodable: input),
                                 action: CloudformationModelOperations.listImports.rawValue,
                                 reporting: self.invocationsReporting.listImports)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ListStackInstancesOperationHTTPRequestInput(encodable: input),
                                 action: CloudformationModelOperations.listStackInstances.rawValue,
                                 reporting: self.invocationsReporting.listStackInstances)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ListStackResourcesOperationHTTPRequestInput(encodable: input),
                                 action: CloudformationModelOperations.listStackResources.rawValue,
                                 reporting: self.invocationsReporting.listStackResources)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ListStackSetOperationResultsOperationHTTPRequestInput(encodable: input),
                                 action: CloudformationModelOperations.listStackSetOperationResults.rawValue,
                                 reporting: self.invocationsReporting.listStackSetOperationResults)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ListStackSetOperationsOperationHTTPRequestInput(encodable: input),
                                 action: CloudformationModelOperations.listStackSetOperations.rawValue,
                                 reporting: self.invocationsReporting.listStackSetOperations)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ListStackSetsOperationHTTPRequestInput(encodable: input),
                                 action: CloudformationModelOperations.listStackSets.rawValue,
                                 reporting: self.invocationsReporting.listStackSets)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ListStacksOperationHTTPRequestInput(encodable: input),
                                 action: CloudformationModelOperations.listStacks.rawValue,
                                 reporting: self.invocationsReporting.listStacks)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ListTypeRegistrationsOperationHTTPRequestInput(encodable: input),
                                 action: CloudformationModelOperations.listTypeRegistrations.rawValue,
                                 reporting: self.invocationsReporting.listTypeRegistrations)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ListTypeVersionsOperationHTTPRequestInput(encodable: input),
                                 action: CloudformationModelOperations.listTypeVersions.rawValue,
                                 reporting: self.invocationsReporting.listTypeVersions)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ListTypesOperationHTTPRequestInput(encodable: input),
                                 action: CloudformationModelOperations.listTypes.rawValue,
                                 reporting: self.invocationsReporting.listTypes)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: RecordHandlerProgressOperationHTTPRequestInput(encodable: input),
                                 action: CloudformationModelOperations.recordHandlerProgress.rawValue,
                                 reporting: self.invocationsReporting.recordHandlerProgress)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: RegisterTypeOperationHTTPRequestInput(encodable: input),
                                 action: CloudformationModelOperations.registerType.rawValue,
                                 reporting: self.invocationsReporting.registerType)
    }

    /**
     Invokes the SetStackPolicy operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SetStackPolicyInput object being passed to this operation.
     */
    public func setStackPolicy(
            input: CloudformationModel.SetStackPolicyInput) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: SetStackPolicyOperationHTTPRequestInput(encodable: input),
                                    action: CloudformationModelOperations.setStackPolicy.rawValue,
                                    reporting: self.invocationsReporting.setStackPolicy)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: SetTypeDefaultVersionOperationHTTPRequestInput(encodable: input),
                                 action: CloudformationModelOperations.setTypeDefaultVersion.rawValue,
                                 reporting: self.invocationsReporting.setTypeDefaultVersion)
    }

    /**
     Invokes the SignalResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SignalResourceInput object being passed to this operation.
     */
    public func signalResource(
            input: CloudformationModel.SignalResourceInput) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: SignalResourceOperationHTTPRequestInput(encodable: input),
                                    action: CloudformationModelOperations.signalResource.rawValue,
                                    reporting: self.invocationsReporting.signalResource)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: StopStackSetOperationOperationHTTPRequestInput(encodable: input),
                                 action: CloudformationModelOperations.stopStackSetOperation.rawValue,
                                 reporting: self.invocationsReporting.stopStackSetOperation)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: UpdateStackOperationHTTPRequestInput(encodable: input),
                                 action: CloudformationModelOperations.updateStack.rawValue,
                                 reporting: self.invocationsReporting.updateStack)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: UpdateStackInstancesOperationHTTPRequestInput(encodable: input),
                                 action: CloudformationModelOperations.updateStackInstances.rawValue,
                                 reporting: self.invocationsReporting.updateStackInstances)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: UpdateStackSetOperationHTTPRequestInput(encodable: input),
                                 action: CloudformationModelOperations.updateStackSet.rawValue,
                                 reporting: self.invocationsReporting.updateStackSet)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: UpdateTerminationProtectionOperationHTTPRequestInput(encodable: input),
                                 action: CloudformationModelOperations.updateTerminationProtection.rawValue,
                                 reporting: self.invocationsReporting.updateTerminationProtection)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ValidateTemplateOperationHTTPRequestInput(encodable: input),
                                 action: CloudformationModelOperations.validateTemplate.rawValue,
                                 reporting: self.invocationsReporting.validateTemplate)
    }
}
