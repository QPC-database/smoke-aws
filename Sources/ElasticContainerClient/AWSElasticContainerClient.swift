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
// AWSElasticContainerClient.swift
// ElasticContainerClient
//

import Foundation
import ElasticContainerModel
import SmokeAWSCore
import SmokeHTTPClient
import NIO
import SmokeAWSHttp
import NIO
import NIOHTTP1
import AsyncHTTPClient
import Logging

public enum ElasticContainerClientError: Swift.Error {
    case invalidEndpoint(String)
    case unsupportedPayload
    case unknownError(String?)
}

 extension ElasticContainerError: ConvertableError {
    public static func asUnrecognizedError(error: Swift.Error) -> ElasticContainerError {
        return error.asUnrecognizedElasticContainerError()
    }

    public func isRetriable() -> Bool? {
        switch self {
        case .attributeLimitExceeded:
            return true
        default:
            return nil
        }
    }
}

private extension SmokeHTTPClient.HTTPClientError {
    func isRetriable() -> Bool {
        if let typedError = self.cause as? ElasticContainerError, let isRetriable = typedError.isRetriable() {
            return isRetriable
        } else {
            return self.isRetriableAccordingToCategory
        }
    }
}

/**
 AWS Client for the ElasticContainer service.
 */
public struct AWSElasticContainerClient<InvocationReportingType: HTTPClientCoreInvocationReporting>: ElasticContainerClientProtocol, AWSClientProtocol {
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

    let operationsReporting: ElasticContainerOperationsReporting
    let invocationsReporting: ElasticContainerInvocationsReporting<InvocationReportingType>
    
    public init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                reporting: InvocationReportingType,
                endpointHostName: String,
                endpointPort: Int = 443,
                requiresTLS: Bool? = nil,
                service: String = "ecs",
                contentType: String = "application/x-amz-json-1.1",
                target: String? = "AmazonEC2ContainerServiceV20141113",
                connectionTimeoutSeconds: Int64 = 10,
                retryConfiguration: HTTPClientRetryConfiguration = .default,
                eventLoopProvider: HTTPClient.EventLoopGroupProvider = .createNew,
                reportingConfiguration: SmokeAWSClientReportingConfiguration<ElasticContainerModelOperations>
                    = SmokeAWSClientReportingConfiguration<ElasticContainerModelOperations>() ) {
        self.eventLoopGroup = AWSClientHelper.getEventLoop(eventLoopGroupProvider: eventLoopProvider)
        let useTLS = requiresTLS ?? AWSHTTPClientDelegate.requiresTLS(forEndpointPort: endpointPort)
        let clientDelegate = JSONAWSHttpClientDelegate<ElasticContainerError>(requiresTLS: useTLS)

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
        self.operationsReporting = ElasticContainerOperationsReporting(clientName: "AWSElasticContainerClient", reportingConfiguration: reportingConfiguration)
        self.invocationsReporting = ElasticContainerInvocationsReporting(reporting: reporting, operationsReporting: self.operationsReporting)
    }
    
    internal init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                reporting: InvocationReportingType,
                httpClient: HTTPOperationsClient,
                service: String,
                target: String?,
                eventLoopGroup: EventLoopGroup,
                retryOnErrorProvider: @escaping (SmokeHTTPClient.HTTPClientError) -> Bool,
                retryConfiguration: HTTPClientRetryConfiguration,
                operationsReporting: ElasticContainerOperationsReporting) {
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
        self.invocationsReporting = ElasticContainerInvocationsReporting(reporting: reporting, operationsReporting: self.operationsReporting)
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
     Invokes the CreateCapacityProvider operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateCapacityProviderRequest object being passed to this operation.
     - Returns: A future to the CreateCapacityProviderResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, limitExceeded, server, updateInProgress.
     */
    public func createCapacityProvider(
            input: ElasticContainerModel.CreateCapacityProviderRequest) -> EventLoopFuture<ElasticContainerModel.CreateCapacityProviderResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: CreateCapacityProviderOperationHTTPRequestInput(encodable: input),
                                 operation: ElasticContainerModelOperations.createCapacityProvider.rawValue,
                                 reporting: self.invocationsReporting.createCapacityProvider,
                                 errorType: ElasticContainerError.self)
    }

    /**
     Invokes the CreateCluster operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateClusterRequest object being passed to this operation.
     - Returns: A future to the CreateClusterResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    public func createCluster(
            input: ElasticContainerModel.CreateClusterRequest) -> EventLoopFuture<ElasticContainerModel.CreateClusterResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: CreateClusterOperationHTTPRequestInput(encodable: input),
                                 operation: ElasticContainerModelOperations.createCluster.rawValue,
                                 reporting: self.invocationsReporting.createCluster,
                                 errorType: ElasticContainerError.self)
    }

    /**
     Invokes the CreateService operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateServiceRequest object being passed to this operation.
     - Returns: A future to the CreateServiceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: accessDenied, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, unsupportedFeature.
     */
    public func createService(
            input: ElasticContainerModel.CreateServiceRequest) -> EventLoopFuture<ElasticContainerModel.CreateServiceResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: CreateServiceOperationHTTPRequestInput(encodable: input),
                                 operation: ElasticContainerModelOperations.createService.rawValue,
                                 reporting: self.invocationsReporting.createService,
                                 errorType: ElasticContainerError.self)
    }

    /**
     Invokes the CreateTaskSet operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateTaskSetRequest object being passed to this operation.
     - Returns: A future to the CreateTaskSetResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: accessDenied, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, serviceNotActive, serviceNotFound, unsupportedFeature.
     */
    public func createTaskSet(
            input: ElasticContainerModel.CreateTaskSetRequest) -> EventLoopFuture<ElasticContainerModel.CreateTaskSetResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: CreateTaskSetOperationHTTPRequestInput(encodable: input),
                                 operation: ElasticContainerModelOperations.createTaskSet.rawValue,
                                 reporting: self.invocationsReporting.createTaskSet,
                                 errorType: ElasticContainerError.self)
    }

    /**
     Invokes the DeleteAccountSetting operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteAccountSettingRequest object being passed to this operation.
     - Returns: A future to the DeleteAccountSettingResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    public func deleteAccountSetting(
            input: ElasticContainerModel.DeleteAccountSettingRequest) -> EventLoopFuture<ElasticContainerModel.DeleteAccountSettingResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: DeleteAccountSettingOperationHTTPRequestInput(encodable: input),
                                 operation: ElasticContainerModelOperations.deleteAccountSetting.rawValue,
                                 reporting: self.invocationsReporting.deleteAccountSetting,
                                 errorType: ElasticContainerError.self)
    }

    /**
     Invokes the DeleteAttributes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteAttributesRequest object being passed to this operation.
     - Returns: A future to the DeleteAttributesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: clusterNotFound, invalidParameter, targetNotFound.
     */
    public func deleteAttributes(
            input: ElasticContainerModel.DeleteAttributesRequest) -> EventLoopFuture<ElasticContainerModel.DeleteAttributesResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: DeleteAttributesOperationHTTPRequestInput(encodable: input),
                                 operation: ElasticContainerModelOperations.deleteAttributes.rawValue,
                                 reporting: self.invocationsReporting.deleteAttributes,
                                 errorType: ElasticContainerError.self)
    }

    /**
     Invokes the DeleteCapacityProvider operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteCapacityProviderRequest object being passed to this operation.
     - Returns: A future to the DeleteCapacityProviderResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    public func deleteCapacityProvider(
            input: ElasticContainerModel.DeleteCapacityProviderRequest) -> EventLoopFuture<ElasticContainerModel.DeleteCapacityProviderResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: DeleteCapacityProviderOperationHTTPRequestInput(encodable: input),
                                 operation: ElasticContainerModelOperations.deleteCapacityProvider.rawValue,
                                 reporting: self.invocationsReporting.deleteCapacityProvider,
                                 errorType: ElasticContainerError.self)
    }

    /**
     Invokes the DeleteCluster operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteClusterRequest object being passed to this operation.
     - Returns: A future to the DeleteClusterResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, clusterContainsContainerInstances, clusterContainsServices, clusterContainsTasks, clusterNotFound, invalidParameter, server, updateInProgress.
     */
    public func deleteCluster(
            input: ElasticContainerModel.DeleteClusterRequest) -> EventLoopFuture<ElasticContainerModel.DeleteClusterResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: DeleteClusterOperationHTTPRequestInput(encodable: input),
                                 operation: ElasticContainerModelOperations.deleteCluster.rawValue,
                                 reporting: self.invocationsReporting.deleteCluster,
                                 errorType: ElasticContainerError.self)
    }

    /**
     Invokes the DeleteService operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteServiceRequest object being passed to this operation.
     - Returns: A future to the DeleteServiceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server, serviceNotFound.
     */
    public func deleteService(
            input: ElasticContainerModel.DeleteServiceRequest) -> EventLoopFuture<ElasticContainerModel.DeleteServiceResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: DeleteServiceOperationHTTPRequestInput(encodable: input),
                                 operation: ElasticContainerModelOperations.deleteService.rawValue,
                                 reporting: self.invocationsReporting.deleteService,
                                 errorType: ElasticContainerError.self)
    }

    /**
     Invokes the DeleteTaskSet operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteTaskSetRequest object being passed to this operation.
     - Returns: A future to the DeleteTaskSetResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, taskSetNotFound, unsupportedFeature.
     */
    public func deleteTaskSet(
            input: ElasticContainerModel.DeleteTaskSetRequest) -> EventLoopFuture<ElasticContainerModel.DeleteTaskSetResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: DeleteTaskSetOperationHTTPRequestInput(encodable: input),
                                 operation: ElasticContainerModelOperations.deleteTaskSet.rawValue,
                                 reporting: self.invocationsReporting.deleteTaskSet,
                                 errorType: ElasticContainerError.self)
    }

    /**
     Invokes the DeregisterContainerInstance operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeregisterContainerInstanceRequest object being passed to this operation.
     - Returns: A future to the DeregisterContainerInstanceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    public func deregisterContainerInstance(
            input: ElasticContainerModel.DeregisterContainerInstanceRequest) -> EventLoopFuture<ElasticContainerModel.DeregisterContainerInstanceResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: DeregisterContainerInstanceOperationHTTPRequestInput(encodable: input),
                                 operation: ElasticContainerModelOperations.deregisterContainerInstance.rawValue,
                                 reporting: self.invocationsReporting.deregisterContainerInstance,
                                 errorType: ElasticContainerError.self)
    }

    /**
     Invokes the DeregisterTaskDefinition operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeregisterTaskDefinitionRequest object being passed to this operation.
     - Returns: A future to the DeregisterTaskDefinitionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    public func deregisterTaskDefinition(
            input: ElasticContainerModel.DeregisterTaskDefinitionRequest) -> EventLoopFuture<ElasticContainerModel.DeregisterTaskDefinitionResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: DeregisterTaskDefinitionOperationHTTPRequestInput(encodable: input),
                                 operation: ElasticContainerModelOperations.deregisterTaskDefinition.rawValue,
                                 reporting: self.invocationsReporting.deregisterTaskDefinition,
                                 errorType: ElasticContainerError.self)
    }

    /**
     Invokes the DescribeCapacityProviders operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeCapacityProvidersRequest object being passed to this operation.
     - Returns: A future to the DescribeCapacityProvidersResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    public func describeCapacityProviders(
            input: ElasticContainerModel.DescribeCapacityProvidersRequest) -> EventLoopFuture<ElasticContainerModel.DescribeCapacityProvidersResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: DescribeCapacityProvidersOperationHTTPRequestInput(encodable: input),
                                 operation: ElasticContainerModelOperations.describeCapacityProviders.rawValue,
                                 reporting: self.invocationsReporting.describeCapacityProviders,
                                 errorType: ElasticContainerError.self)
    }

    /**
     Invokes the DescribeClusters operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeClustersRequest object being passed to this operation.
     - Returns: A future to the DescribeClustersResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    public func describeClusters(
            input: ElasticContainerModel.DescribeClustersRequest) -> EventLoopFuture<ElasticContainerModel.DescribeClustersResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: DescribeClustersOperationHTTPRequestInput(encodable: input),
                                 operation: ElasticContainerModelOperations.describeClusters.rawValue,
                                 reporting: self.invocationsReporting.describeClusters,
                                 errorType: ElasticContainerError.self)
    }

    /**
     Invokes the DescribeContainerInstances operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeContainerInstancesRequest object being passed to this operation.
     - Returns: A future to the DescribeContainerInstancesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    public func describeContainerInstances(
            input: ElasticContainerModel.DescribeContainerInstancesRequest) -> EventLoopFuture<ElasticContainerModel.DescribeContainerInstancesResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: DescribeContainerInstancesOperationHTTPRequestInput(encodable: input),
                                 operation: ElasticContainerModelOperations.describeContainerInstances.rawValue,
                                 reporting: self.invocationsReporting.describeContainerInstances,
                                 errorType: ElasticContainerError.self)
    }

    /**
     Invokes the DescribeServices operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeServicesRequest object being passed to this operation.
     - Returns: A future to the DescribeServicesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    public func describeServices(
            input: ElasticContainerModel.DescribeServicesRequest) -> EventLoopFuture<ElasticContainerModel.DescribeServicesResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: DescribeServicesOperationHTTPRequestInput(encodable: input),
                                 operation: ElasticContainerModelOperations.describeServices.rawValue,
                                 reporting: self.invocationsReporting.describeServices,
                                 errorType: ElasticContainerError.self)
    }

    /**
     Invokes the DescribeTaskDefinition operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeTaskDefinitionRequest object being passed to this operation.
     - Returns: A future to the DescribeTaskDefinitionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    public func describeTaskDefinition(
            input: ElasticContainerModel.DescribeTaskDefinitionRequest) -> EventLoopFuture<ElasticContainerModel.DescribeTaskDefinitionResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: DescribeTaskDefinitionOperationHTTPRequestInput(encodable: input),
                                 operation: ElasticContainerModelOperations.describeTaskDefinition.rawValue,
                                 reporting: self.invocationsReporting.describeTaskDefinition,
                                 errorType: ElasticContainerError.self)
    }

    /**
     Invokes the DescribeTaskSets operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeTaskSetsRequest object being passed to this operation.
     - Returns: A future to the DescribeTaskSetsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, unsupportedFeature.
     */
    public func describeTaskSets(
            input: ElasticContainerModel.DescribeTaskSetsRequest) -> EventLoopFuture<ElasticContainerModel.DescribeTaskSetsResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: DescribeTaskSetsOperationHTTPRequestInput(encodable: input),
                                 operation: ElasticContainerModelOperations.describeTaskSets.rawValue,
                                 reporting: self.invocationsReporting.describeTaskSets,
                                 errorType: ElasticContainerError.self)
    }

    /**
     Invokes the DescribeTasks operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeTasksRequest object being passed to this operation.
     - Returns: A future to the DescribeTasksResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    public func describeTasks(
            input: ElasticContainerModel.DescribeTasksRequest) -> EventLoopFuture<ElasticContainerModel.DescribeTasksResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: DescribeTasksOperationHTTPRequestInput(encodable: input),
                                 operation: ElasticContainerModelOperations.describeTasks.rawValue,
                                 reporting: self.invocationsReporting.describeTasks,
                                 errorType: ElasticContainerError.self)
    }

    /**
     Invokes the DiscoverPollEndpoint operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DiscoverPollEndpointRequest object being passed to this operation.
     - Returns: A future to the DiscoverPollEndpointResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, server.
     */
    public func discoverPollEndpoint(
            input: ElasticContainerModel.DiscoverPollEndpointRequest) -> EventLoopFuture<ElasticContainerModel.DiscoverPollEndpointResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: DiscoverPollEndpointOperationHTTPRequestInput(encodable: input),
                                 operation: ElasticContainerModelOperations.discoverPollEndpoint.rawValue,
                                 reporting: self.invocationsReporting.discoverPollEndpoint,
                                 errorType: ElasticContainerError.self)
    }

    /**
     Invokes the ListAccountSettings operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListAccountSettingsRequest object being passed to this operation.
     - Returns: A future to the ListAccountSettingsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    public func listAccountSettings(
            input: ElasticContainerModel.ListAccountSettingsRequest) -> EventLoopFuture<ElasticContainerModel.ListAccountSettingsResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: ListAccountSettingsOperationHTTPRequestInput(encodable: input),
                                 operation: ElasticContainerModelOperations.listAccountSettings.rawValue,
                                 reporting: self.invocationsReporting.listAccountSettings,
                                 errorType: ElasticContainerError.self)
    }

    /**
     Invokes the ListAttributes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListAttributesRequest object being passed to this operation.
     - Returns: A future to the ListAttributesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: clusterNotFound, invalidParameter.
     */
    public func listAttributes(
            input: ElasticContainerModel.ListAttributesRequest) -> EventLoopFuture<ElasticContainerModel.ListAttributesResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: ListAttributesOperationHTTPRequestInput(encodable: input),
                                 operation: ElasticContainerModelOperations.listAttributes.rawValue,
                                 reporting: self.invocationsReporting.listAttributes,
                                 errorType: ElasticContainerError.self)
    }

    /**
     Invokes the ListClusters operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListClustersRequest object being passed to this operation.
     - Returns: A future to the ListClustersResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    public func listClusters(
            input: ElasticContainerModel.ListClustersRequest) -> EventLoopFuture<ElasticContainerModel.ListClustersResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: ListClustersOperationHTTPRequestInput(encodable: input),
                                 operation: ElasticContainerModelOperations.listClusters.rawValue,
                                 reporting: self.invocationsReporting.listClusters,
                                 errorType: ElasticContainerError.self)
    }

    /**
     Invokes the ListContainerInstances operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListContainerInstancesRequest object being passed to this operation.
     - Returns: A future to the ListContainerInstancesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    public func listContainerInstances(
            input: ElasticContainerModel.ListContainerInstancesRequest) -> EventLoopFuture<ElasticContainerModel.ListContainerInstancesResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: ListContainerInstancesOperationHTTPRequestInput(encodable: input),
                                 operation: ElasticContainerModelOperations.listContainerInstances.rawValue,
                                 reporting: self.invocationsReporting.listContainerInstances,
                                 errorType: ElasticContainerError.self)
    }

    /**
     Invokes the ListServices operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListServicesRequest object being passed to this operation.
     - Returns: A future to the ListServicesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    public func listServices(
            input: ElasticContainerModel.ListServicesRequest) -> EventLoopFuture<ElasticContainerModel.ListServicesResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: ListServicesOperationHTTPRequestInput(encodable: input),
                                 operation: ElasticContainerModelOperations.listServices.rawValue,
                                 reporting: self.invocationsReporting.listServices,
                                 errorType: ElasticContainerError.self)
    }

    /**
     Invokes the ListTagsForResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
     - Returns: A future to the ListTagsForResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    public func listTagsForResource(
            input: ElasticContainerModel.ListTagsForResourceRequest) -> EventLoopFuture<ElasticContainerModel.ListTagsForResourceResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: ListTagsForResourceOperationHTTPRequestInput(encodable: input),
                                 operation: ElasticContainerModelOperations.listTagsForResource.rawValue,
                                 reporting: self.invocationsReporting.listTagsForResource,
                                 errorType: ElasticContainerError.self)
    }

    /**
     Invokes the ListTaskDefinitionFamilies operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListTaskDefinitionFamiliesRequest object being passed to this operation.
     - Returns: A future to the ListTaskDefinitionFamiliesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    public func listTaskDefinitionFamilies(
            input: ElasticContainerModel.ListTaskDefinitionFamiliesRequest) -> EventLoopFuture<ElasticContainerModel.ListTaskDefinitionFamiliesResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: ListTaskDefinitionFamiliesOperationHTTPRequestInput(encodable: input),
                                 operation: ElasticContainerModelOperations.listTaskDefinitionFamilies.rawValue,
                                 reporting: self.invocationsReporting.listTaskDefinitionFamilies,
                                 errorType: ElasticContainerError.self)
    }

    /**
     Invokes the ListTaskDefinitions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListTaskDefinitionsRequest object being passed to this operation.
     - Returns: A future to the ListTaskDefinitionsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    public func listTaskDefinitions(
            input: ElasticContainerModel.ListTaskDefinitionsRequest) -> EventLoopFuture<ElasticContainerModel.ListTaskDefinitionsResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: ListTaskDefinitionsOperationHTTPRequestInput(encodable: input),
                                 operation: ElasticContainerModelOperations.listTaskDefinitions.rawValue,
                                 reporting: self.invocationsReporting.listTaskDefinitions,
                                 errorType: ElasticContainerError.self)
    }

    /**
     Invokes the ListTasks operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListTasksRequest object being passed to this operation.
     - Returns: A future to the ListTasksResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server, serviceNotFound.
     */
    public func listTasks(
            input: ElasticContainerModel.ListTasksRequest) -> EventLoopFuture<ElasticContainerModel.ListTasksResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: ListTasksOperationHTTPRequestInput(encodable: input),
                                 operation: ElasticContainerModelOperations.listTasks.rawValue,
                                 reporting: self.invocationsReporting.listTasks,
                                 errorType: ElasticContainerError.self)
    }

    /**
     Invokes the PutAccountSetting operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutAccountSettingRequest object being passed to this operation.
     - Returns: A future to the PutAccountSettingResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    public func putAccountSetting(
            input: ElasticContainerModel.PutAccountSettingRequest) -> EventLoopFuture<ElasticContainerModel.PutAccountSettingResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: PutAccountSettingOperationHTTPRequestInput(encodable: input),
                                 operation: ElasticContainerModelOperations.putAccountSetting.rawValue,
                                 reporting: self.invocationsReporting.putAccountSetting,
                                 errorType: ElasticContainerError.self)
    }

    /**
     Invokes the PutAccountSettingDefault operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutAccountSettingDefaultRequest object being passed to this operation.
     - Returns: A future to the PutAccountSettingDefaultResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    public func putAccountSettingDefault(
            input: ElasticContainerModel.PutAccountSettingDefaultRequest) -> EventLoopFuture<ElasticContainerModel.PutAccountSettingDefaultResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: PutAccountSettingDefaultOperationHTTPRequestInput(encodable: input),
                                 operation: ElasticContainerModelOperations.putAccountSettingDefault.rawValue,
                                 reporting: self.invocationsReporting.putAccountSettingDefault,
                                 errorType: ElasticContainerError.self)
    }

    /**
     Invokes the PutAttributes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutAttributesRequest object being passed to this operation.
     - Returns: A future to the PutAttributesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: attributeLimitExceeded, clusterNotFound, invalidParameter, targetNotFound.
     */
    public func putAttributes(
            input: ElasticContainerModel.PutAttributesRequest) -> EventLoopFuture<ElasticContainerModel.PutAttributesResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: PutAttributesOperationHTTPRequestInput(encodable: input),
                                 operation: ElasticContainerModelOperations.putAttributes.rawValue,
                                 reporting: self.invocationsReporting.putAttributes,
                                 errorType: ElasticContainerError.self)
    }

    /**
     Invokes the PutClusterCapacityProviders operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutClusterCapacityProvidersRequest object being passed to this operation.
     - Returns: A future to the PutClusterCapacityProvidersResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, resourceInUse, server, updateInProgress.
     */
    public func putClusterCapacityProviders(
            input: ElasticContainerModel.PutClusterCapacityProvidersRequest) -> EventLoopFuture<ElasticContainerModel.PutClusterCapacityProvidersResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: PutClusterCapacityProvidersOperationHTTPRequestInput(encodable: input),
                                 operation: ElasticContainerModelOperations.putClusterCapacityProviders.rawValue,
                                 reporting: self.invocationsReporting.putClusterCapacityProviders,
                                 errorType: ElasticContainerError.self)
    }

    /**
     Invokes the RegisterContainerInstance operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RegisterContainerInstanceRequest object being passed to this operation.
     - Returns: A future to the RegisterContainerInstanceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    public func registerContainerInstance(
            input: ElasticContainerModel.RegisterContainerInstanceRequest) -> EventLoopFuture<ElasticContainerModel.RegisterContainerInstanceResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: RegisterContainerInstanceOperationHTTPRequestInput(encodable: input),
                                 operation: ElasticContainerModelOperations.registerContainerInstance.rawValue,
                                 reporting: self.invocationsReporting.registerContainerInstance,
                                 errorType: ElasticContainerError.self)
    }

    /**
     Invokes the RegisterTaskDefinition operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RegisterTaskDefinitionRequest object being passed to this operation.
     - Returns: A future to the RegisterTaskDefinitionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    public func registerTaskDefinition(
            input: ElasticContainerModel.RegisterTaskDefinitionRequest) -> EventLoopFuture<ElasticContainerModel.RegisterTaskDefinitionResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: RegisterTaskDefinitionOperationHTTPRequestInput(encodable: input),
                                 operation: ElasticContainerModelOperations.registerTaskDefinition.rawValue,
                                 reporting: self.invocationsReporting.registerTaskDefinition,
                                 errorType: ElasticContainerError.self)
    }

    /**
     Invokes the RunTask operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RunTaskRequest object being passed to this operation.
     - Returns: A future to the RunTaskResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: accessDenied, blocked, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, unsupportedFeature.
     */
    public func runTask(
            input: ElasticContainerModel.RunTaskRequest) -> EventLoopFuture<ElasticContainerModel.RunTaskResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: RunTaskOperationHTTPRequestInput(encodable: input),
                                 operation: ElasticContainerModelOperations.runTask.rawValue,
                                 reporting: self.invocationsReporting.runTask,
                                 errorType: ElasticContainerError.self)
    }

    /**
     Invokes the StartTask operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated StartTaskRequest object being passed to this operation.
     - Returns: A future to the StartTaskResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    public func startTask(
            input: ElasticContainerModel.StartTaskRequest) -> EventLoopFuture<ElasticContainerModel.StartTaskResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: StartTaskOperationHTTPRequestInput(encodable: input),
                                 operation: ElasticContainerModelOperations.startTask.rawValue,
                                 reporting: self.invocationsReporting.startTask,
                                 errorType: ElasticContainerError.self)
    }

    /**
     Invokes the StopTask operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated StopTaskRequest object being passed to this operation.
     - Returns: A future to the StopTaskResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    public func stopTask(
            input: ElasticContainerModel.StopTaskRequest) -> EventLoopFuture<ElasticContainerModel.StopTaskResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: StopTaskOperationHTTPRequestInput(encodable: input),
                                 operation: ElasticContainerModelOperations.stopTask.rawValue,
                                 reporting: self.invocationsReporting.stopTask,
                                 errorType: ElasticContainerError.self)
    }

    /**
     Invokes the SubmitAttachmentStateChanges operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SubmitAttachmentStateChangesRequest object being passed to this operation.
     - Returns: A future to the SubmitAttachmentStateChangesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: accessDenied, client, invalidParameter, server.
     */
    public func submitAttachmentStateChanges(
            input: ElasticContainerModel.SubmitAttachmentStateChangesRequest) -> EventLoopFuture<ElasticContainerModel.SubmitAttachmentStateChangesResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: SubmitAttachmentStateChangesOperationHTTPRequestInput(encodable: input),
                                 operation: ElasticContainerModelOperations.submitAttachmentStateChanges.rawValue,
                                 reporting: self.invocationsReporting.submitAttachmentStateChanges,
                                 errorType: ElasticContainerError.self)
    }

    /**
     Invokes the SubmitContainerStateChange operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SubmitContainerStateChangeRequest object being passed to this operation.
     - Returns: A future to the SubmitContainerStateChangeResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: accessDenied, client, server.
     */
    public func submitContainerStateChange(
            input: ElasticContainerModel.SubmitContainerStateChangeRequest) -> EventLoopFuture<ElasticContainerModel.SubmitContainerStateChangeResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: SubmitContainerStateChangeOperationHTTPRequestInput(encodable: input),
                                 operation: ElasticContainerModelOperations.submitContainerStateChange.rawValue,
                                 reporting: self.invocationsReporting.submitContainerStateChange,
                                 errorType: ElasticContainerError.self)
    }

    /**
     Invokes the SubmitTaskStateChange operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SubmitTaskStateChangeRequest object being passed to this operation.
     - Returns: A future to the SubmitTaskStateChangeResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: accessDenied, client, invalidParameter, server.
     */
    public func submitTaskStateChange(
            input: ElasticContainerModel.SubmitTaskStateChangeRequest) -> EventLoopFuture<ElasticContainerModel.SubmitTaskStateChangeResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: SubmitTaskStateChangeOperationHTTPRequestInput(encodable: input),
                                 operation: ElasticContainerModelOperations.submitTaskStateChange.rawValue,
                                 reporting: self.invocationsReporting.submitTaskStateChange,
                                 errorType: ElasticContainerError.self)
    }

    /**
     Invokes the TagResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
     - Returns: A future to the TagResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, resourceNotFound, server.
     */
    public func tagResource(
            input: ElasticContainerModel.TagResourceRequest) -> EventLoopFuture<ElasticContainerModel.TagResourceResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: TagResourceOperationHTTPRequestInput(encodable: input),
                                 operation: ElasticContainerModelOperations.tagResource.rawValue,
                                 reporting: self.invocationsReporting.tagResource,
                                 errorType: ElasticContainerError.self)
    }

    /**
     Invokes the UntagResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UntagResourceRequest object being passed to this operation.
     - Returns: A future to the UntagResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, resourceNotFound, server.
     */
    public func untagResource(
            input: ElasticContainerModel.UntagResourceRequest) -> EventLoopFuture<ElasticContainerModel.UntagResourceResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: UntagResourceOperationHTTPRequestInput(encodable: input),
                                 operation: ElasticContainerModelOperations.untagResource.rawValue,
                                 reporting: self.invocationsReporting.untagResource,
                                 errorType: ElasticContainerError.self)
    }

    /**
     Invokes the UpdateCapacityProvider operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UpdateCapacityProviderRequest object being passed to this operation.
     - Returns: A future to the UpdateCapacityProviderResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    public func updateCapacityProvider(
            input: ElasticContainerModel.UpdateCapacityProviderRequest) -> EventLoopFuture<ElasticContainerModel.UpdateCapacityProviderResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: UpdateCapacityProviderOperationHTTPRequestInput(encodable: input),
                                 operation: ElasticContainerModelOperations.updateCapacityProvider.rawValue,
                                 reporting: self.invocationsReporting.updateCapacityProvider,
                                 errorType: ElasticContainerError.self)
    }

    /**
     Invokes the UpdateClusterSettings operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UpdateClusterSettingsRequest object being passed to this operation.
     - Returns: A future to the UpdateClusterSettingsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    public func updateClusterSettings(
            input: ElasticContainerModel.UpdateClusterSettingsRequest) -> EventLoopFuture<ElasticContainerModel.UpdateClusterSettingsResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: UpdateClusterSettingsOperationHTTPRequestInput(encodable: input),
                                 operation: ElasticContainerModelOperations.updateClusterSettings.rawValue,
                                 reporting: self.invocationsReporting.updateClusterSettings,
                                 errorType: ElasticContainerError.self)
    }

    /**
     Invokes the UpdateContainerAgent operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UpdateContainerAgentRequest object being passed to this operation.
     - Returns: A future to the UpdateContainerAgentResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, missingVersion, noUpdateAvailable, server, updateInProgress.
     */
    public func updateContainerAgent(
            input: ElasticContainerModel.UpdateContainerAgentRequest) -> EventLoopFuture<ElasticContainerModel.UpdateContainerAgentResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: UpdateContainerAgentOperationHTTPRequestInput(encodable: input),
                                 operation: ElasticContainerModelOperations.updateContainerAgent.rawValue,
                                 reporting: self.invocationsReporting.updateContainerAgent,
                                 errorType: ElasticContainerError.self)
    }

    /**
     Invokes the UpdateContainerInstancesState operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UpdateContainerInstancesStateRequest object being passed to this operation.
     - Returns: A future to the UpdateContainerInstancesStateResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    public func updateContainerInstancesState(
            input: ElasticContainerModel.UpdateContainerInstancesStateRequest) -> EventLoopFuture<ElasticContainerModel.UpdateContainerInstancesStateResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: UpdateContainerInstancesStateOperationHTTPRequestInput(encodable: input),
                                 operation: ElasticContainerModelOperations.updateContainerInstancesState.rawValue,
                                 reporting: self.invocationsReporting.updateContainerInstancesState,
                                 errorType: ElasticContainerError.self)
    }

    /**
     Invokes the UpdateService operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UpdateServiceRequest object being passed to this operation.
     - Returns: A future to the UpdateServiceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: accessDenied, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, serviceNotActive, serviceNotFound.
     */
    public func updateService(
            input: ElasticContainerModel.UpdateServiceRequest) -> EventLoopFuture<ElasticContainerModel.UpdateServiceResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: UpdateServiceOperationHTTPRequestInput(encodable: input),
                                 operation: ElasticContainerModelOperations.updateService.rawValue,
                                 reporting: self.invocationsReporting.updateService,
                                 errorType: ElasticContainerError.self)
    }

    /**
     Invokes the UpdateServicePrimaryTaskSet operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UpdateServicePrimaryTaskSetRequest object being passed to this operation.
     - Returns: A future to the UpdateServicePrimaryTaskSetResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, taskSetNotFound, unsupportedFeature.
     */
    public func updateServicePrimaryTaskSet(
            input: ElasticContainerModel.UpdateServicePrimaryTaskSetRequest) -> EventLoopFuture<ElasticContainerModel.UpdateServicePrimaryTaskSetResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: UpdateServicePrimaryTaskSetOperationHTTPRequestInput(encodable: input),
                                 operation: ElasticContainerModelOperations.updateServicePrimaryTaskSet.rawValue,
                                 reporting: self.invocationsReporting.updateServicePrimaryTaskSet,
                                 errorType: ElasticContainerError.self)
    }

    /**
     Invokes the UpdateTaskSet operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UpdateTaskSetRequest object being passed to this operation.
     - Returns: A future to the UpdateTaskSetResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, taskSetNotFound, unsupportedFeature.
     */
    public func updateTaskSet(
            input: ElasticContainerModel.UpdateTaskSetRequest) -> EventLoopFuture<ElasticContainerModel.UpdateTaskSetResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: UpdateTaskSetOperationHTTPRequestInput(encodable: input),
                                 operation: ElasticContainerModelOperations.updateTaskSet.rawValue,
                                 reporting: self.invocationsReporting.updateTaskSet,
                                 errorType: ElasticContainerError.self)
    }
}
