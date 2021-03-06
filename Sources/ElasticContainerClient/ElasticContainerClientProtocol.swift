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
// ElasticContainerClientProtocol.swift
// ElasticContainerClient
//

import Foundation
import ElasticContainerModel
import SmokeAWSCore
import SmokeHTTPClient
import NIO

/**
 Client Protocol for the ElasticContainer service.
 */
public protocol ElasticContainerClientProtocol {
    typealias CreateCapacityProviderEventLoopFutureAsyncType = (
            _ input: ElasticContainerModel.CreateCapacityProviderRequest) -> EventLoopFuture<ElasticContainerModel.CreateCapacityProviderResponse>
    typealias CreateClusterEventLoopFutureAsyncType = (
            _ input: ElasticContainerModel.CreateClusterRequest) -> EventLoopFuture<ElasticContainerModel.CreateClusterResponse>
    typealias CreateServiceEventLoopFutureAsyncType = (
            _ input: ElasticContainerModel.CreateServiceRequest) -> EventLoopFuture<ElasticContainerModel.CreateServiceResponse>
    typealias CreateTaskSetEventLoopFutureAsyncType = (
            _ input: ElasticContainerModel.CreateTaskSetRequest) -> EventLoopFuture<ElasticContainerModel.CreateTaskSetResponse>
    typealias DeleteAccountSettingEventLoopFutureAsyncType = (
            _ input: ElasticContainerModel.DeleteAccountSettingRequest) -> EventLoopFuture<ElasticContainerModel.DeleteAccountSettingResponse>
    typealias DeleteAttributesEventLoopFutureAsyncType = (
            _ input: ElasticContainerModel.DeleteAttributesRequest) -> EventLoopFuture<ElasticContainerModel.DeleteAttributesResponse>
    typealias DeleteCapacityProviderEventLoopFutureAsyncType = (
            _ input: ElasticContainerModel.DeleteCapacityProviderRequest) -> EventLoopFuture<ElasticContainerModel.DeleteCapacityProviderResponse>
    typealias DeleteClusterEventLoopFutureAsyncType = (
            _ input: ElasticContainerModel.DeleteClusterRequest) -> EventLoopFuture<ElasticContainerModel.DeleteClusterResponse>
    typealias DeleteServiceEventLoopFutureAsyncType = (
            _ input: ElasticContainerModel.DeleteServiceRequest) -> EventLoopFuture<ElasticContainerModel.DeleteServiceResponse>
    typealias DeleteTaskSetEventLoopFutureAsyncType = (
            _ input: ElasticContainerModel.DeleteTaskSetRequest) -> EventLoopFuture<ElasticContainerModel.DeleteTaskSetResponse>
    typealias DeregisterContainerInstanceEventLoopFutureAsyncType = (
            _ input: ElasticContainerModel.DeregisterContainerInstanceRequest) -> EventLoopFuture<ElasticContainerModel.DeregisterContainerInstanceResponse>
    typealias DeregisterTaskDefinitionEventLoopFutureAsyncType = (
            _ input: ElasticContainerModel.DeregisterTaskDefinitionRequest) -> EventLoopFuture<ElasticContainerModel.DeregisterTaskDefinitionResponse>
    typealias DescribeCapacityProvidersEventLoopFutureAsyncType = (
            _ input: ElasticContainerModel.DescribeCapacityProvidersRequest) -> EventLoopFuture<ElasticContainerModel.DescribeCapacityProvidersResponse>
    typealias DescribeClustersEventLoopFutureAsyncType = (
            _ input: ElasticContainerModel.DescribeClustersRequest) -> EventLoopFuture<ElasticContainerModel.DescribeClustersResponse>
    typealias DescribeContainerInstancesEventLoopFutureAsyncType = (
            _ input: ElasticContainerModel.DescribeContainerInstancesRequest) -> EventLoopFuture<ElasticContainerModel.DescribeContainerInstancesResponse>
    typealias DescribeServicesEventLoopFutureAsyncType = (
            _ input: ElasticContainerModel.DescribeServicesRequest) -> EventLoopFuture<ElasticContainerModel.DescribeServicesResponse>
    typealias DescribeTaskDefinitionEventLoopFutureAsyncType = (
            _ input: ElasticContainerModel.DescribeTaskDefinitionRequest) -> EventLoopFuture<ElasticContainerModel.DescribeTaskDefinitionResponse>
    typealias DescribeTaskSetsEventLoopFutureAsyncType = (
            _ input: ElasticContainerModel.DescribeTaskSetsRequest) -> EventLoopFuture<ElasticContainerModel.DescribeTaskSetsResponse>
    typealias DescribeTasksEventLoopFutureAsyncType = (
            _ input: ElasticContainerModel.DescribeTasksRequest) -> EventLoopFuture<ElasticContainerModel.DescribeTasksResponse>
    typealias DiscoverPollEndpointEventLoopFutureAsyncType = (
            _ input: ElasticContainerModel.DiscoverPollEndpointRequest) -> EventLoopFuture<ElasticContainerModel.DiscoverPollEndpointResponse>
    typealias ListAccountSettingsEventLoopFutureAsyncType = (
            _ input: ElasticContainerModel.ListAccountSettingsRequest) -> EventLoopFuture<ElasticContainerModel.ListAccountSettingsResponse>
    typealias ListAttributesEventLoopFutureAsyncType = (
            _ input: ElasticContainerModel.ListAttributesRequest) -> EventLoopFuture<ElasticContainerModel.ListAttributesResponse>
    typealias ListClustersEventLoopFutureAsyncType = (
            _ input: ElasticContainerModel.ListClustersRequest) -> EventLoopFuture<ElasticContainerModel.ListClustersResponse>
    typealias ListContainerInstancesEventLoopFutureAsyncType = (
            _ input: ElasticContainerModel.ListContainerInstancesRequest) -> EventLoopFuture<ElasticContainerModel.ListContainerInstancesResponse>
    typealias ListServicesEventLoopFutureAsyncType = (
            _ input: ElasticContainerModel.ListServicesRequest) -> EventLoopFuture<ElasticContainerModel.ListServicesResponse>
    typealias ListTagsForResourceEventLoopFutureAsyncType = (
            _ input: ElasticContainerModel.ListTagsForResourceRequest) -> EventLoopFuture<ElasticContainerModel.ListTagsForResourceResponse>
    typealias ListTaskDefinitionFamiliesEventLoopFutureAsyncType = (
            _ input: ElasticContainerModel.ListTaskDefinitionFamiliesRequest) -> EventLoopFuture<ElasticContainerModel.ListTaskDefinitionFamiliesResponse>
    typealias ListTaskDefinitionsEventLoopFutureAsyncType = (
            _ input: ElasticContainerModel.ListTaskDefinitionsRequest) -> EventLoopFuture<ElasticContainerModel.ListTaskDefinitionsResponse>
    typealias ListTasksEventLoopFutureAsyncType = (
            _ input: ElasticContainerModel.ListTasksRequest) -> EventLoopFuture<ElasticContainerModel.ListTasksResponse>
    typealias PutAccountSettingEventLoopFutureAsyncType = (
            _ input: ElasticContainerModel.PutAccountSettingRequest) -> EventLoopFuture<ElasticContainerModel.PutAccountSettingResponse>
    typealias PutAccountSettingDefaultEventLoopFutureAsyncType = (
            _ input: ElasticContainerModel.PutAccountSettingDefaultRequest) -> EventLoopFuture<ElasticContainerModel.PutAccountSettingDefaultResponse>
    typealias PutAttributesEventLoopFutureAsyncType = (
            _ input: ElasticContainerModel.PutAttributesRequest) -> EventLoopFuture<ElasticContainerModel.PutAttributesResponse>
    typealias PutClusterCapacityProvidersEventLoopFutureAsyncType = (
            _ input: ElasticContainerModel.PutClusterCapacityProvidersRequest) -> EventLoopFuture<ElasticContainerModel.PutClusterCapacityProvidersResponse>
    typealias RegisterContainerInstanceEventLoopFutureAsyncType = (
            _ input: ElasticContainerModel.RegisterContainerInstanceRequest) -> EventLoopFuture<ElasticContainerModel.RegisterContainerInstanceResponse>
    typealias RegisterTaskDefinitionEventLoopFutureAsyncType = (
            _ input: ElasticContainerModel.RegisterTaskDefinitionRequest) -> EventLoopFuture<ElasticContainerModel.RegisterTaskDefinitionResponse>
    typealias RunTaskEventLoopFutureAsyncType = (
            _ input: ElasticContainerModel.RunTaskRequest) -> EventLoopFuture<ElasticContainerModel.RunTaskResponse>
    typealias StartTaskEventLoopFutureAsyncType = (
            _ input: ElasticContainerModel.StartTaskRequest) -> EventLoopFuture<ElasticContainerModel.StartTaskResponse>
    typealias StopTaskEventLoopFutureAsyncType = (
            _ input: ElasticContainerModel.StopTaskRequest) -> EventLoopFuture<ElasticContainerModel.StopTaskResponse>
    typealias SubmitAttachmentStateChangesEventLoopFutureAsyncType = (
            _ input: ElasticContainerModel.SubmitAttachmentStateChangesRequest) -> EventLoopFuture<ElasticContainerModel.SubmitAttachmentStateChangesResponse>
    typealias SubmitContainerStateChangeEventLoopFutureAsyncType = (
            _ input: ElasticContainerModel.SubmitContainerStateChangeRequest) -> EventLoopFuture<ElasticContainerModel.SubmitContainerStateChangeResponse>
    typealias SubmitTaskStateChangeEventLoopFutureAsyncType = (
            _ input: ElasticContainerModel.SubmitTaskStateChangeRequest) -> EventLoopFuture<ElasticContainerModel.SubmitTaskStateChangeResponse>
    typealias TagResourceEventLoopFutureAsyncType = (
            _ input: ElasticContainerModel.TagResourceRequest) -> EventLoopFuture<ElasticContainerModel.TagResourceResponse>
    typealias UntagResourceEventLoopFutureAsyncType = (
            _ input: ElasticContainerModel.UntagResourceRequest) -> EventLoopFuture<ElasticContainerModel.UntagResourceResponse>
    typealias UpdateCapacityProviderEventLoopFutureAsyncType = (
            _ input: ElasticContainerModel.UpdateCapacityProviderRequest) -> EventLoopFuture<ElasticContainerModel.UpdateCapacityProviderResponse>
    typealias UpdateClusterSettingsEventLoopFutureAsyncType = (
            _ input: ElasticContainerModel.UpdateClusterSettingsRequest) -> EventLoopFuture<ElasticContainerModel.UpdateClusterSettingsResponse>
    typealias UpdateContainerAgentEventLoopFutureAsyncType = (
            _ input: ElasticContainerModel.UpdateContainerAgentRequest) -> EventLoopFuture<ElasticContainerModel.UpdateContainerAgentResponse>
    typealias UpdateContainerInstancesStateEventLoopFutureAsyncType = (
            _ input: ElasticContainerModel.UpdateContainerInstancesStateRequest) -> EventLoopFuture<ElasticContainerModel.UpdateContainerInstancesStateResponse>
    typealias UpdateServiceEventLoopFutureAsyncType = (
            _ input: ElasticContainerModel.UpdateServiceRequest) -> EventLoopFuture<ElasticContainerModel.UpdateServiceResponse>
    typealias UpdateServicePrimaryTaskSetEventLoopFutureAsyncType = (
            _ input: ElasticContainerModel.UpdateServicePrimaryTaskSetRequest) -> EventLoopFuture<ElasticContainerModel.UpdateServicePrimaryTaskSetResponse>
    typealias UpdateTaskSetEventLoopFutureAsyncType = (
            _ input: ElasticContainerModel.UpdateTaskSetRequest) -> EventLoopFuture<ElasticContainerModel.UpdateTaskSetResponse>

    /**
     Invokes the CreateCapacityProvider operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateCapacityProviderRequest object being passed to this operation.
     - Returns: A future to the CreateCapacityProviderResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, limitExceeded, server, updateInProgress.
     */
    func createCapacityProvider(
            input: ElasticContainerModel.CreateCapacityProviderRequest) -> EventLoopFuture<ElasticContainerModel.CreateCapacityProviderResponse>

    /**
     Invokes the CreateCluster operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateClusterRequest object being passed to this operation.
     - Returns: A future to the CreateClusterResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    func createCluster(
            input: ElasticContainerModel.CreateClusterRequest) -> EventLoopFuture<ElasticContainerModel.CreateClusterResponse>

    /**
     Invokes the CreateService operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateServiceRequest object being passed to this operation.
     - Returns: A future to the CreateServiceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: accessDenied, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, unsupportedFeature.
     */
    func createService(
            input: ElasticContainerModel.CreateServiceRequest) -> EventLoopFuture<ElasticContainerModel.CreateServiceResponse>

    /**
     Invokes the CreateTaskSet operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateTaskSetRequest object being passed to this operation.
     - Returns: A future to the CreateTaskSetResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: accessDenied, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, serviceNotActive, serviceNotFound, unsupportedFeature.
     */
    func createTaskSet(
            input: ElasticContainerModel.CreateTaskSetRequest) -> EventLoopFuture<ElasticContainerModel.CreateTaskSetResponse>

    /**
     Invokes the DeleteAccountSetting operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteAccountSettingRequest object being passed to this operation.
     - Returns: A future to the DeleteAccountSettingResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    func deleteAccountSetting(
            input: ElasticContainerModel.DeleteAccountSettingRequest) -> EventLoopFuture<ElasticContainerModel.DeleteAccountSettingResponse>

    /**
     Invokes the DeleteAttributes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteAttributesRequest object being passed to this operation.
     - Returns: A future to the DeleteAttributesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: clusterNotFound, invalidParameter, targetNotFound.
     */
    func deleteAttributes(
            input: ElasticContainerModel.DeleteAttributesRequest) -> EventLoopFuture<ElasticContainerModel.DeleteAttributesResponse>

    /**
     Invokes the DeleteCapacityProvider operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteCapacityProviderRequest object being passed to this operation.
     - Returns: A future to the DeleteCapacityProviderResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    func deleteCapacityProvider(
            input: ElasticContainerModel.DeleteCapacityProviderRequest) -> EventLoopFuture<ElasticContainerModel.DeleteCapacityProviderResponse>

    /**
     Invokes the DeleteCluster operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteClusterRequest object being passed to this operation.
     - Returns: A future to the DeleteClusterResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, clusterContainsContainerInstances, clusterContainsServices, clusterContainsTasks, clusterNotFound, invalidParameter, server, updateInProgress.
     */
    func deleteCluster(
            input: ElasticContainerModel.DeleteClusterRequest) -> EventLoopFuture<ElasticContainerModel.DeleteClusterResponse>

    /**
     Invokes the DeleteService operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteServiceRequest object being passed to this operation.
     - Returns: A future to the DeleteServiceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server, serviceNotFound.
     */
    func deleteService(
            input: ElasticContainerModel.DeleteServiceRequest) -> EventLoopFuture<ElasticContainerModel.DeleteServiceResponse>

    /**
     Invokes the DeleteTaskSet operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteTaskSetRequest object being passed to this operation.
     - Returns: A future to the DeleteTaskSetResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, taskSetNotFound, unsupportedFeature.
     */
    func deleteTaskSet(
            input: ElasticContainerModel.DeleteTaskSetRequest) -> EventLoopFuture<ElasticContainerModel.DeleteTaskSetResponse>

    /**
     Invokes the DeregisterContainerInstance operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeregisterContainerInstanceRequest object being passed to this operation.
     - Returns: A future to the DeregisterContainerInstanceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    func deregisterContainerInstance(
            input: ElasticContainerModel.DeregisterContainerInstanceRequest) -> EventLoopFuture<ElasticContainerModel.DeregisterContainerInstanceResponse>

    /**
     Invokes the DeregisterTaskDefinition operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeregisterTaskDefinitionRequest object being passed to this operation.
     - Returns: A future to the DeregisterTaskDefinitionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    func deregisterTaskDefinition(
            input: ElasticContainerModel.DeregisterTaskDefinitionRequest) -> EventLoopFuture<ElasticContainerModel.DeregisterTaskDefinitionResponse>

    /**
     Invokes the DescribeCapacityProviders operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeCapacityProvidersRequest object being passed to this operation.
     - Returns: A future to the DescribeCapacityProvidersResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    func describeCapacityProviders(
            input: ElasticContainerModel.DescribeCapacityProvidersRequest) -> EventLoopFuture<ElasticContainerModel.DescribeCapacityProvidersResponse>

    /**
     Invokes the DescribeClusters operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeClustersRequest object being passed to this operation.
     - Returns: A future to the DescribeClustersResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    func describeClusters(
            input: ElasticContainerModel.DescribeClustersRequest) -> EventLoopFuture<ElasticContainerModel.DescribeClustersResponse>

    /**
     Invokes the DescribeContainerInstances operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeContainerInstancesRequest object being passed to this operation.
     - Returns: A future to the DescribeContainerInstancesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    func describeContainerInstances(
            input: ElasticContainerModel.DescribeContainerInstancesRequest) -> EventLoopFuture<ElasticContainerModel.DescribeContainerInstancesResponse>

    /**
     Invokes the DescribeServices operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeServicesRequest object being passed to this operation.
     - Returns: A future to the DescribeServicesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    func describeServices(
            input: ElasticContainerModel.DescribeServicesRequest) -> EventLoopFuture<ElasticContainerModel.DescribeServicesResponse>

    /**
     Invokes the DescribeTaskDefinition operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeTaskDefinitionRequest object being passed to this operation.
     - Returns: A future to the DescribeTaskDefinitionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    func describeTaskDefinition(
            input: ElasticContainerModel.DescribeTaskDefinitionRequest) -> EventLoopFuture<ElasticContainerModel.DescribeTaskDefinitionResponse>

    /**
     Invokes the DescribeTaskSets operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeTaskSetsRequest object being passed to this operation.
     - Returns: A future to the DescribeTaskSetsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, unsupportedFeature.
     */
    func describeTaskSets(
            input: ElasticContainerModel.DescribeTaskSetsRequest) -> EventLoopFuture<ElasticContainerModel.DescribeTaskSetsResponse>

    /**
     Invokes the DescribeTasks operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeTasksRequest object being passed to this operation.
     - Returns: A future to the DescribeTasksResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    func describeTasks(
            input: ElasticContainerModel.DescribeTasksRequest) -> EventLoopFuture<ElasticContainerModel.DescribeTasksResponse>

    /**
     Invokes the DiscoverPollEndpoint operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DiscoverPollEndpointRequest object being passed to this operation.
     - Returns: A future to the DiscoverPollEndpointResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, server.
     */
    func discoverPollEndpoint(
            input: ElasticContainerModel.DiscoverPollEndpointRequest) -> EventLoopFuture<ElasticContainerModel.DiscoverPollEndpointResponse>

    /**
     Invokes the ListAccountSettings operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListAccountSettingsRequest object being passed to this operation.
     - Returns: A future to the ListAccountSettingsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    func listAccountSettings(
            input: ElasticContainerModel.ListAccountSettingsRequest) -> EventLoopFuture<ElasticContainerModel.ListAccountSettingsResponse>

    /**
     Invokes the ListAttributes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListAttributesRequest object being passed to this operation.
     - Returns: A future to the ListAttributesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: clusterNotFound, invalidParameter.
     */
    func listAttributes(
            input: ElasticContainerModel.ListAttributesRequest) -> EventLoopFuture<ElasticContainerModel.ListAttributesResponse>

    /**
     Invokes the ListClusters operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListClustersRequest object being passed to this operation.
     - Returns: A future to the ListClustersResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    func listClusters(
            input: ElasticContainerModel.ListClustersRequest) -> EventLoopFuture<ElasticContainerModel.ListClustersResponse>

    /**
     Invokes the ListContainerInstances operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListContainerInstancesRequest object being passed to this operation.
     - Returns: A future to the ListContainerInstancesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    func listContainerInstances(
            input: ElasticContainerModel.ListContainerInstancesRequest) -> EventLoopFuture<ElasticContainerModel.ListContainerInstancesResponse>

    /**
     Invokes the ListServices operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListServicesRequest object being passed to this operation.
     - Returns: A future to the ListServicesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    func listServices(
            input: ElasticContainerModel.ListServicesRequest) -> EventLoopFuture<ElasticContainerModel.ListServicesResponse>

    /**
     Invokes the ListTagsForResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
     - Returns: A future to the ListTagsForResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    func listTagsForResource(
            input: ElasticContainerModel.ListTagsForResourceRequest) -> EventLoopFuture<ElasticContainerModel.ListTagsForResourceResponse>

    /**
     Invokes the ListTaskDefinitionFamilies operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListTaskDefinitionFamiliesRequest object being passed to this operation.
     - Returns: A future to the ListTaskDefinitionFamiliesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    func listTaskDefinitionFamilies(
            input: ElasticContainerModel.ListTaskDefinitionFamiliesRequest) -> EventLoopFuture<ElasticContainerModel.ListTaskDefinitionFamiliesResponse>

    /**
     Invokes the ListTaskDefinitions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListTaskDefinitionsRequest object being passed to this operation.
     - Returns: A future to the ListTaskDefinitionsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    func listTaskDefinitions(
            input: ElasticContainerModel.ListTaskDefinitionsRequest) -> EventLoopFuture<ElasticContainerModel.ListTaskDefinitionsResponse>

    /**
     Invokes the ListTasks operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListTasksRequest object being passed to this operation.
     - Returns: A future to the ListTasksResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server, serviceNotFound.
     */
    func listTasks(
            input: ElasticContainerModel.ListTasksRequest) -> EventLoopFuture<ElasticContainerModel.ListTasksResponse>

    /**
     Invokes the PutAccountSetting operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutAccountSettingRequest object being passed to this operation.
     - Returns: A future to the PutAccountSettingResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    func putAccountSetting(
            input: ElasticContainerModel.PutAccountSettingRequest) -> EventLoopFuture<ElasticContainerModel.PutAccountSettingResponse>

    /**
     Invokes the PutAccountSettingDefault operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutAccountSettingDefaultRequest object being passed to this operation.
     - Returns: A future to the PutAccountSettingDefaultResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    func putAccountSettingDefault(
            input: ElasticContainerModel.PutAccountSettingDefaultRequest) -> EventLoopFuture<ElasticContainerModel.PutAccountSettingDefaultResponse>

    /**
     Invokes the PutAttributes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutAttributesRequest object being passed to this operation.
     - Returns: A future to the PutAttributesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: attributeLimitExceeded, clusterNotFound, invalidParameter, targetNotFound.
     */
    func putAttributes(
            input: ElasticContainerModel.PutAttributesRequest) -> EventLoopFuture<ElasticContainerModel.PutAttributesResponse>

    /**
     Invokes the PutClusterCapacityProviders operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutClusterCapacityProvidersRequest object being passed to this operation.
     - Returns: A future to the PutClusterCapacityProvidersResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, resourceInUse, server, updateInProgress.
     */
    func putClusterCapacityProviders(
            input: ElasticContainerModel.PutClusterCapacityProvidersRequest) -> EventLoopFuture<ElasticContainerModel.PutClusterCapacityProvidersResponse>

    /**
     Invokes the RegisterContainerInstance operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RegisterContainerInstanceRequest object being passed to this operation.
     - Returns: A future to the RegisterContainerInstanceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    func registerContainerInstance(
            input: ElasticContainerModel.RegisterContainerInstanceRequest) -> EventLoopFuture<ElasticContainerModel.RegisterContainerInstanceResponse>

    /**
     Invokes the RegisterTaskDefinition operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RegisterTaskDefinitionRequest object being passed to this operation.
     - Returns: A future to the RegisterTaskDefinitionResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    func registerTaskDefinition(
            input: ElasticContainerModel.RegisterTaskDefinitionRequest) -> EventLoopFuture<ElasticContainerModel.RegisterTaskDefinitionResponse>

    /**
     Invokes the RunTask operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RunTaskRequest object being passed to this operation.
     - Returns: A future to the RunTaskResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: accessDenied, blocked, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, unsupportedFeature.
     */
    func runTask(
            input: ElasticContainerModel.RunTaskRequest) -> EventLoopFuture<ElasticContainerModel.RunTaskResponse>

    /**
     Invokes the StartTask operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated StartTaskRequest object being passed to this operation.
     - Returns: A future to the StartTaskResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    func startTask(
            input: ElasticContainerModel.StartTaskRequest) -> EventLoopFuture<ElasticContainerModel.StartTaskResponse>

    /**
     Invokes the StopTask operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated StopTaskRequest object being passed to this operation.
     - Returns: A future to the StopTaskResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    func stopTask(
            input: ElasticContainerModel.StopTaskRequest) -> EventLoopFuture<ElasticContainerModel.StopTaskResponse>

    /**
     Invokes the SubmitAttachmentStateChanges operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SubmitAttachmentStateChangesRequest object being passed to this operation.
     - Returns: A future to the SubmitAttachmentStateChangesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: accessDenied, client, invalidParameter, server.
     */
    func submitAttachmentStateChanges(
            input: ElasticContainerModel.SubmitAttachmentStateChangesRequest) -> EventLoopFuture<ElasticContainerModel.SubmitAttachmentStateChangesResponse>

    /**
     Invokes the SubmitContainerStateChange operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SubmitContainerStateChangeRequest object being passed to this operation.
     - Returns: A future to the SubmitContainerStateChangeResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: accessDenied, client, server.
     */
    func submitContainerStateChange(
            input: ElasticContainerModel.SubmitContainerStateChangeRequest) -> EventLoopFuture<ElasticContainerModel.SubmitContainerStateChangeResponse>

    /**
     Invokes the SubmitTaskStateChange operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SubmitTaskStateChangeRequest object being passed to this operation.
     - Returns: A future to the SubmitTaskStateChangeResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: accessDenied, client, invalidParameter, server.
     */
    func submitTaskStateChange(
            input: ElasticContainerModel.SubmitTaskStateChangeRequest) -> EventLoopFuture<ElasticContainerModel.SubmitTaskStateChangeResponse>

    /**
     Invokes the TagResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
     - Returns: A future to the TagResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, resourceNotFound, server.
     */
    func tagResource(
            input: ElasticContainerModel.TagResourceRequest) -> EventLoopFuture<ElasticContainerModel.TagResourceResponse>

    /**
     Invokes the UntagResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UntagResourceRequest object being passed to this operation.
     - Returns: A future to the UntagResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, resourceNotFound, server.
     */
    func untagResource(
            input: ElasticContainerModel.UntagResourceRequest) -> EventLoopFuture<ElasticContainerModel.UntagResourceResponse>

    /**
     Invokes the UpdateCapacityProvider operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UpdateCapacityProviderRequest object being passed to this operation.
     - Returns: A future to the UpdateCapacityProviderResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, invalidParameter, server.
     */
    func updateCapacityProvider(
            input: ElasticContainerModel.UpdateCapacityProviderRequest) -> EventLoopFuture<ElasticContainerModel.UpdateCapacityProviderResponse>

    /**
     Invokes the UpdateClusterSettings operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UpdateClusterSettingsRequest object being passed to this operation.
     - Returns: A future to the UpdateClusterSettingsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    func updateClusterSettings(
            input: ElasticContainerModel.UpdateClusterSettingsRequest) -> EventLoopFuture<ElasticContainerModel.UpdateClusterSettingsResponse>

    /**
     Invokes the UpdateContainerAgent operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UpdateContainerAgentRequest object being passed to this operation.
     - Returns: A future to the UpdateContainerAgentResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, missingVersion, noUpdateAvailable, server, updateInProgress.
     */
    func updateContainerAgent(
            input: ElasticContainerModel.UpdateContainerAgentRequest) -> EventLoopFuture<ElasticContainerModel.UpdateContainerAgentResponse>

    /**
     Invokes the UpdateContainerInstancesState operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UpdateContainerInstancesStateRequest object being passed to this operation.
     - Returns: A future to the UpdateContainerInstancesStateResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: client, clusterNotFound, invalidParameter, server.
     */
    func updateContainerInstancesState(
            input: ElasticContainerModel.UpdateContainerInstancesStateRequest) -> EventLoopFuture<ElasticContainerModel.UpdateContainerInstancesStateResponse>

    /**
     Invokes the UpdateService operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UpdateServiceRequest object being passed to this operation.
     - Returns: A future to the UpdateServiceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: accessDenied, client, clusterNotFound, invalidParameter, platformTaskDefinitionIncompatibility, platformUnknown, server, serviceNotActive, serviceNotFound.
     */
    func updateService(
            input: ElasticContainerModel.UpdateServiceRequest) -> EventLoopFuture<ElasticContainerModel.UpdateServiceResponse>

    /**
     Invokes the UpdateServicePrimaryTaskSet operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UpdateServicePrimaryTaskSetRequest object being passed to this operation.
     - Returns: A future to the UpdateServicePrimaryTaskSetResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, taskSetNotFound, unsupportedFeature.
     */
    func updateServicePrimaryTaskSet(
            input: ElasticContainerModel.UpdateServicePrimaryTaskSetRequest) -> EventLoopFuture<ElasticContainerModel.UpdateServicePrimaryTaskSetResponse>

    /**
     Invokes the UpdateTaskSet operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UpdateTaskSetRequest object being passed to this operation.
     - Returns: A future to the UpdateTaskSetResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: accessDenied, client, clusterNotFound, invalidParameter, server, serviceNotActive, serviceNotFound, taskSetNotFound, unsupportedFeature.
     */
    func updateTaskSet(
            input: ElasticContainerModel.UpdateTaskSetRequest) -> EventLoopFuture<ElasticContainerModel.UpdateTaskSetResponse>
}
