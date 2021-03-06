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
// ThrowingElasticContainerClient.swift
// ElasticContainerClient
//

import Foundation
import ElasticContainerModel
import SmokeAWSCore
import SmokeHTTPClient
import NIO

/**
 Mock Client for the ElasticContainer service that by default always throws from its methods.
 */
public struct ThrowingElasticContainerClient: ElasticContainerClientProtocol {
    let error: ElasticContainerError
    let eventLoop: EventLoop
    let typedErrorProvider: (Swift.Error) -> ElasticContainerError = { $0.asTypedError() }
    let createCapacityProviderEventLoopFutureAsyncOverride: CreateCapacityProviderEventLoopFutureAsyncType?
    let createClusterEventLoopFutureAsyncOverride: CreateClusterEventLoopFutureAsyncType?
    let createServiceEventLoopFutureAsyncOverride: CreateServiceEventLoopFutureAsyncType?
    let createTaskSetEventLoopFutureAsyncOverride: CreateTaskSetEventLoopFutureAsyncType?
    let deleteAccountSettingEventLoopFutureAsyncOverride: DeleteAccountSettingEventLoopFutureAsyncType?
    let deleteAttributesEventLoopFutureAsyncOverride: DeleteAttributesEventLoopFutureAsyncType?
    let deleteCapacityProviderEventLoopFutureAsyncOverride: DeleteCapacityProviderEventLoopFutureAsyncType?
    let deleteClusterEventLoopFutureAsyncOverride: DeleteClusterEventLoopFutureAsyncType?
    let deleteServiceEventLoopFutureAsyncOverride: DeleteServiceEventLoopFutureAsyncType?
    let deleteTaskSetEventLoopFutureAsyncOverride: DeleteTaskSetEventLoopFutureAsyncType?
    let deregisterContainerInstanceEventLoopFutureAsyncOverride: DeregisterContainerInstanceEventLoopFutureAsyncType?
    let deregisterTaskDefinitionEventLoopFutureAsyncOverride: DeregisterTaskDefinitionEventLoopFutureAsyncType?
    let describeCapacityProvidersEventLoopFutureAsyncOverride: DescribeCapacityProvidersEventLoopFutureAsyncType?
    let describeClustersEventLoopFutureAsyncOverride: DescribeClustersEventLoopFutureAsyncType?
    let describeContainerInstancesEventLoopFutureAsyncOverride: DescribeContainerInstancesEventLoopFutureAsyncType?
    let describeServicesEventLoopFutureAsyncOverride: DescribeServicesEventLoopFutureAsyncType?
    let describeTaskDefinitionEventLoopFutureAsyncOverride: DescribeTaskDefinitionEventLoopFutureAsyncType?
    let describeTaskSetsEventLoopFutureAsyncOverride: DescribeTaskSetsEventLoopFutureAsyncType?
    let describeTasksEventLoopFutureAsyncOverride: DescribeTasksEventLoopFutureAsyncType?
    let discoverPollEndpointEventLoopFutureAsyncOverride: DiscoverPollEndpointEventLoopFutureAsyncType?
    let listAccountSettingsEventLoopFutureAsyncOverride: ListAccountSettingsEventLoopFutureAsyncType?
    let listAttributesEventLoopFutureAsyncOverride: ListAttributesEventLoopFutureAsyncType?
    let listClustersEventLoopFutureAsyncOverride: ListClustersEventLoopFutureAsyncType?
    let listContainerInstancesEventLoopFutureAsyncOverride: ListContainerInstancesEventLoopFutureAsyncType?
    let listServicesEventLoopFutureAsyncOverride: ListServicesEventLoopFutureAsyncType?
    let listTagsForResourceEventLoopFutureAsyncOverride: ListTagsForResourceEventLoopFutureAsyncType?
    let listTaskDefinitionFamiliesEventLoopFutureAsyncOverride: ListTaskDefinitionFamiliesEventLoopFutureAsyncType?
    let listTaskDefinitionsEventLoopFutureAsyncOverride: ListTaskDefinitionsEventLoopFutureAsyncType?
    let listTasksEventLoopFutureAsyncOverride: ListTasksEventLoopFutureAsyncType?
    let putAccountSettingEventLoopFutureAsyncOverride: PutAccountSettingEventLoopFutureAsyncType?
    let putAccountSettingDefaultEventLoopFutureAsyncOverride: PutAccountSettingDefaultEventLoopFutureAsyncType?
    let putAttributesEventLoopFutureAsyncOverride: PutAttributesEventLoopFutureAsyncType?
    let putClusterCapacityProvidersEventLoopFutureAsyncOverride: PutClusterCapacityProvidersEventLoopFutureAsyncType?
    let registerContainerInstanceEventLoopFutureAsyncOverride: RegisterContainerInstanceEventLoopFutureAsyncType?
    let registerTaskDefinitionEventLoopFutureAsyncOverride: RegisterTaskDefinitionEventLoopFutureAsyncType?
    let runTaskEventLoopFutureAsyncOverride: RunTaskEventLoopFutureAsyncType?
    let startTaskEventLoopFutureAsyncOverride: StartTaskEventLoopFutureAsyncType?
    let stopTaskEventLoopFutureAsyncOverride: StopTaskEventLoopFutureAsyncType?
    let submitAttachmentStateChangesEventLoopFutureAsyncOverride: SubmitAttachmentStateChangesEventLoopFutureAsyncType?
    let submitContainerStateChangeEventLoopFutureAsyncOverride: SubmitContainerStateChangeEventLoopFutureAsyncType?
    let submitTaskStateChangeEventLoopFutureAsyncOverride: SubmitTaskStateChangeEventLoopFutureAsyncType?
    let tagResourceEventLoopFutureAsyncOverride: TagResourceEventLoopFutureAsyncType?
    let untagResourceEventLoopFutureAsyncOverride: UntagResourceEventLoopFutureAsyncType?
    let updateCapacityProviderEventLoopFutureAsyncOverride: UpdateCapacityProviderEventLoopFutureAsyncType?
    let updateClusterSettingsEventLoopFutureAsyncOverride: UpdateClusterSettingsEventLoopFutureAsyncType?
    let updateContainerAgentEventLoopFutureAsyncOverride: UpdateContainerAgentEventLoopFutureAsyncType?
    let updateContainerInstancesStateEventLoopFutureAsyncOverride: UpdateContainerInstancesStateEventLoopFutureAsyncType?
    let updateServiceEventLoopFutureAsyncOverride: UpdateServiceEventLoopFutureAsyncType?
    let updateServicePrimaryTaskSetEventLoopFutureAsyncOverride: UpdateServicePrimaryTaskSetEventLoopFutureAsyncType?
    let updateTaskSetEventLoopFutureAsyncOverride: UpdateTaskSetEventLoopFutureAsyncType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(
            error: ElasticContainerError,
            eventLoop: EventLoop,
            createCapacityProviderEventLoopFutureAsync: CreateCapacityProviderEventLoopFutureAsyncType? = nil,
            createClusterEventLoopFutureAsync: CreateClusterEventLoopFutureAsyncType? = nil,
            createServiceEventLoopFutureAsync: CreateServiceEventLoopFutureAsyncType? = nil,
            createTaskSetEventLoopFutureAsync: CreateTaskSetEventLoopFutureAsyncType? = nil,
            deleteAccountSettingEventLoopFutureAsync: DeleteAccountSettingEventLoopFutureAsyncType? = nil,
            deleteAttributesEventLoopFutureAsync: DeleteAttributesEventLoopFutureAsyncType? = nil,
            deleteCapacityProviderEventLoopFutureAsync: DeleteCapacityProviderEventLoopFutureAsyncType? = nil,
            deleteClusterEventLoopFutureAsync: DeleteClusterEventLoopFutureAsyncType? = nil,
            deleteServiceEventLoopFutureAsync: DeleteServiceEventLoopFutureAsyncType? = nil,
            deleteTaskSetEventLoopFutureAsync: DeleteTaskSetEventLoopFutureAsyncType? = nil,
            deregisterContainerInstanceEventLoopFutureAsync: DeregisterContainerInstanceEventLoopFutureAsyncType? = nil,
            deregisterTaskDefinitionEventLoopFutureAsync: DeregisterTaskDefinitionEventLoopFutureAsyncType? = nil,
            describeCapacityProvidersEventLoopFutureAsync: DescribeCapacityProvidersEventLoopFutureAsyncType? = nil,
            describeClustersEventLoopFutureAsync: DescribeClustersEventLoopFutureAsyncType? = nil,
            describeContainerInstancesEventLoopFutureAsync: DescribeContainerInstancesEventLoopFutureAsyncType? = nil,
            describeServicesEventLoopFutureAsync: DescribeServicesEventLoopFutureAsyncType? = nil,
            describeTaskDefinitionEventLoopFutureAsync: DescribeTaskDefinitionEventLoopFutureAsyncType? = nil,
            describeTaskSetsEventLoopFutureAsync: DescribeTaskSetsEventLoopFutureAsyncType? = nil,
            describeTasksEventLoopFutureAsync: DescribeTasksEventLoopFutureAsyncType? = nil,
            discoverPollEndpointEventLoopFutureAsync: DiscoverPollEndpointEventLoopFutureAsyncType? = nil,
            listAccountSettingsEventLoopFutureAsync: ListAccountSettingsEventLoopFutureAsyncType? = nil,
            listAttributesEventLoopFutureAsync: ListAttributesEventLoopFutureAsyncType? = nil,
            listClustersEventLoopFutureAsync: ListClustersEventLoopFutureAsyncType? = nil,
            listContainerInstancesEventLoopFutureAsync: ListContainerInstancesEventLoopFutureAsyncType? = nil,
            listServicesEventLoopFutureAsync: ListServicesEventLoopFutureAsyncType? = nil,
            listTagsForResourceEventLoopFutureAsync: ListTagsForResourceEventLoopFutureAsyncType? = nil,
            listTaskDefinitionFamiliesEventLoopFutureAsync: ListTaskDefinitionFamiliesEventLoopFutureAsyncType? = nil,
            listTaskDefinitionsEventLoopFutureAsync: ListTaskDefinitionsEventLoopFutureAsyncType? = nil,
            listTasksEventLoopFutureAsync: ListTasksEventLoopFutureAsyncType? = nil,
            putAccountSettingEventLoopFutureAsync: PutAccountSettingEventLoopFutureAsyncType? = nil,
            putAccountSettingDefaultEventLoopFutureAsync: PutAccountSettingDefaultEventLoopFutureAsyncType? = nil,
            putAttributesEventLoopFutureAsync: PutAttributesEventLoopFutureAsyncType? = nil,
            putClusterCapacityProvidersEventLoopFutureAsync: PutClusterCapacityProvidersEventLoopFutureAsyncType? = nil,
            registerContainerInstanceEventLoopFutureAsync: RegisterContainerInstanceEventLoopFutureAsyncType? = nil,
            registerTaskDefinitionEventLoopFutureAsync: RegisterTaskDefinitionEventLoopFutureAsyncType? = nil,
            runTaskEventLoopFutureAsync: RunTaskEventLoopFutureAsyncType? = nil,
            startTaskEventLoopFutureAsync: StartTaskEventLoopFutureAsyncType? = nil,
            stopTaskEventLoopFutureAsync: StopTaskEventLoopFutureAsyncType? = nil,
            submitAttachmentStateChangesEventLoopFutureAsync: SubmitAttachmentStateChangesEventLoopFutureAsyncType? = nil,
            submitContainerStateChangeEventLoopFutureAsync: SubmitContainerStateChangeEventLoopFutureAsyncType? = nil,
            submitTaskStateChangeEventLoopFutureAsync: SubmitTaskStateChangeEventLoopFutureAsyncType? = nil,
            tagResourceEventLoopFutureAsync: TagResourceEventLoopFutureAsyncType? = nil,
            untagResourceEventLoopFutureAsync: UntagResourceEventLoopFutureAsyncType? = nil,
            updateCapacityProviderEventLoopFutureAsync: UpdateCapacityProviderEventLoopFutureAsyncType? = nil,
            updateClusterSettingsEventLoopFutureAsync: UpdateClusterSettingsEventLoopFutureAsyncType? = nil,
            updateContainerAgentEventLoopFutureAsync: UpdateContainerAgentEventLoopFutureAsyncType? = nil,
            updateContainerInstancesStateEventLoopFutureAsync: UpdateContainerInstancesStateEventLoopFutureAsyncType? = nil,
            updateServiceEventLoopFutureAsync: UpdateServiceEventLoopFutureAsyncType? = nil,
            updateServicePrimaryTaskSetEventLoopFutureAsync: UpdateServicePrimaryTaskSetEventLoopFutureAsyncType? = nil,
            updateTaskSetEventLoopFutureAsync: UpdateTaskSetEventLoopFutureAsyncType? = nil) {
        self.error = error
        self.eventLoop = eventLoop
        
        self.createCapacityProviderEventLoopFutureAsyncOverride = createCapacityProviderEventLoopFutureAsync
        self.createClusterEventLoopFutureAsyncOverride = createClusterEventLoopFutureAsync
        self.createServiceEventLoopFutureAsyncOverride = createServiceEventLoopFutureAsync
        self.createTaskSetEventLoopFutureAsyncOverride = createTaskSetEventLoopFutureAsync
        self.deleteAccountSettingEventLoopFutureAsyncOverride = deleteAccountSettingEventLoopFutureAsync
        self.deleteAttributesEventLoopFutureAsyncOverride = deleteAttributesEventLoopFutureAsync
        self.deleteCapacityProviderEventLoopFutureAsyncOverride = deleteCapacityProviderEventLoopFutureAsync
        self.deleteClusterEventLoopFutureAsyncOverride = deleteClusterEventLoopFutureAsync
        self.deleteServiceEventLoopFutureAsyncOverride = deleteServiceEventLoopFutureAsync
        self.deleteTaskSetEventLoopFutureAsyncOverride = deleteTaskSetEventLoopFutureAsync
        self.deregisterContainerInstanceEventLoopFutureAsyncOverride = deregisterContainerInstanceEventLoopFutureAsync
        self.deregisterTaskDefinitionEventLoopFutureAsyncOverride = deregisterTaskDefinitionEventLoopFutureAsync
        self.describeCapacityProvidersEventLoopFutureAsyncOverride = describeCapacityProvidersEventLoopFutureAsync
        self.describeClustersEventLoopFutureAsyncOverride = describeClustersEventLoopFutureAsync
        self.describeContainerInstancesEventLoopFutureAsyncOverride = describeContainerInstancesEventLoopFutureAsync
        self.describeServicesEventLoopFutureAsyncOverride = describeServicesEventLoopFutureAsync
        self.describeTaskDefinitionEventLoopFutureAsyncOverride = describeTaskDefinitionEventLoopFutureAsync
        self.describeTaskSetsEventLoopFutureAsyncOverride = describeTaskSetsEventLoopFutureAsync
        self.describeTasksEventLoopFutureAsyncOverride = describeTasksEventLoopFutureAsync
        self.discoverPollEndpointEventLoopFutureAsyncOverride = discoverPollEndpointEventLoopFutureAsync
        self.listAccountSettingsEventLoopFutureAsyncOverride = listAccountSettingsEventLoopFutureAsync
        self.listAttributesEventLoopFutureAsyncOverride = listAttributesEventLoopFutureAsync
        self.listClustersEventLoopFutureAsyncOverride = listClustersEventLoopFutureAsync
        self.listContainerInstancesEventLoopFutureAsyncOverride = listContainerInstancesEventLoopFutureAsync
        self.listServicesEventLoopFutureAsyncOverride = listServicesEventLoopFutureAsync
        self.listTagsForResourceEventLoopFutureAsyncOverride = listTagsForResourceEventLoopFutureAsync
        self.listTaskDefinitionFamiliesEventLoopFutureAsyncOverride = listTaskDefinitionFamiliesEventLoopFutureAsync
        self.listTaskDefinitionsEventLoopFutureAsyncOverride = listTaskDefinitionsEventLoopFutureAsync
        self.listTasksEventLoopFutureAsyncOverride = listTasksEventLoopFutureAsync
        self.putAccountSettingEventLoopFutureAsyncOverride = putAccountSettingEventLoopFutureAsync
        self.putAccountSettingDefaultEventLoopFutureAsyncOverride = putAccountSettingDefaultEventLoopFutureAsync
        self.putAttributesEventLoopFutureAsyncOverride = putAttributesEventLoopFutureAsync
        self.putClusterCapacityProvidersEventLoopFutureAsyncOverride = putClusterCapacityProvidersEventLoopFutureAsync
        self.registerContainerInstanceEventLoopFutureAsyncOverride = registerContainerInstanceEventLoopFutureAsync
        self.registerTaskDefinitionEventLoopFutureAsyncOverride = registerTaskDefinitionEventLoopFutureAsync
        self.runTaskEventLoopFutureAsyncOverride = runTaskEventLoopFutureAsync
        self.startTaskEventLoopFutureAsyncOverride = startTaskEventLoopFutureAsync
        self.stopTaskEventLoopFutureAsyncOverride = stopTaskEventLoopFutureAsync
        self.submitAttachmentStateChangesEventLoopFutureAsyncOverride = submitAttachmentStateChangesEventLoopFutureAsync
        self.submitContainerStateChangeEventLoopFutureAsyncOverride = submitContainerStateChangeEventLoopFutureAsync
        self.submitTaskStateChangeEventLoopFutureAsyncOverride = submitTaskStateChangeEventLoopFutureAsync
        self.tagResourceEventLoopFutureAsyncOverride = tagResourceEventLoopFutureAsync
        self.untagResourceEventLoopFutureAsyncOverride = untagResourceEventLoopFutureAsync
        self.updateCapacityProviderEventLoopFutureAsyncOverride = updateCapacityProviderEventLoopFutureAsync
        self.updateClusterSettingsEventLoopFutureAsyncOverride = updateClusterSettingsEventLoopFutureAsync
        self.updateContainerAgentEventLoopFutureAsyncOverride = updateContainerAgentEventLoopFutureAsync
        self.updateContainerInstancesStateEventLoopFutureAsyncOverride = updateContainerInstancesStateEventLoopFutureAsync
        self.updateServiceEventLoopFutureAsyncOverride = updateServiceEventLoopFutureAsync
        self.updateServicePrimaryTaskSetEventLoopFutureAsyncOverride = updateServicePrimaryTaskSetEventLoopFutureAsync
        self.updateTaskSetEventLoopFutureAsyncOverride = updateTaskSetEventLoopFutureAsync
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
        if let createCapacityProviderEventLoopFutureAsyncOverride = createCapacityProviderEventLoopFutureAsyncOverride {
            return createCapacityProviderEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: CreateCapacityProviderResponse.self)
        promise.fail(error)
        
        return promise.futureResult
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
        if let createClusterEventLoopFutureAsyncOverride = createClusterEventLoopFutureAsyncOverride {
            return createClusterEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: CreateClusterResponse.self)
        promise.fail(error)
        
        return promise.futureResult
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
        if let createServiceEventLoopFutureAsyncOverride = createServiceEventLoopFutureAsyncOverride {
            return createServiceEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: CreateServiceResponse.self)
        promise.fail(error)
        
        return promise.futureResult
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
        if let createTaskSetEventLoopFutureAsyncOverride = createTaskSetEventLoopFutureAsyncOverride {
            return createTaskSetEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: CreateTaskSetResponse.self)
        promise.fail(error)
        
        return promise.futureResult
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
        if let deleteAccountSettingEventLoopFutureAsyncOverride = deleteAccountSettingEventLoopFutureAsyncOverride {
            return deleteAccountSettingEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: DeleteAccountSettingResponse.self)
        promise.fail(error)
        
        return promise.futureResult
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
        if let deleteAttributesEventLoopFutureAsyncOverride = deleteAttributesEventLoopFutureAsyncOverride {
            return deleteAttributesEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: DeleteAttributesResponse.self)
        promise.fail(error)
        
        return promise.futureResult
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
        if let deleteCapacityProviderEventLoopFutureAsyncOverride = deleteCapacityProviderEventLoopFutureAsyncOverride {
            return deleteCapacityProviderEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: DeleteCapacityProviderResponse.self)
        promise.fail(error)
        
        return promise.futureResult
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
        if let deleteClusterEventLoopFutureAsyncOverride = deleteClusterEventLoopFutureAsyncOverride {
            return deleteClusterEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: DeleteClusterResponse.self)
        promise.fail(error)
        
        return promise.futureResult
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
        if let deleteServiceEventLoopFutureAsyncOverride = deleteServiceEventLoopFutureAsyncOverride {
            return deleteServiceEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: DeleteServiceResponse.self)
        promise.fail(error)
        
        return promise.futureResult
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
        if let deleteTaskSetEventLoopFutureAsyncOverride = deleteTaskSetEventLoopFutureAsyncOverride {
            return deleteTaskSetEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: DeleteTaskSetResponse.self)
        promise.fail(error)
        
        return promise.futureResult
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
        if let deregisterContainerInstanceEventLoopFutureAsyncOverride = deregisterContainerInstanceEventLoopFutureAsyncOverride {
            return deregisterContainerInstanceEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: DeregisterContainerInstanceResponse.self)
        promise.fail(error)
        
        return promise.futureResult
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
        if let deregisterTaskDefinitionEventLoopFutureAsyncOverride = deregisterTaskDefinitionEventLoopFutureAsyncOverride {
            return deregisterTaskDefinitionEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: DeregisterTaskDefinitionResponse.self)
        promise.fail(error)
        
        return promise.futureResult
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
        if let describeCapacityProvidersEventLoopFutureAsyncOverride = describeCapacityProvidersEventLoopFutureAsyncOverride {
            return describeCapacityProvidersEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: DescribeCapacityProvidersResponse.self)
        promise.fail(error)
        
        return promise.futureResult
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
        if let describeClustersEventLoopFutureAsyncOverride = describeClustersEventLoopFutureAsyncOverride {
            return describeClustersEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: DescribeClustersResponse.self)
        promise.fail(error)
        
        return promise.futureResult
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
        if let describeContainerInstancesEventLoopFutureAsyncOverride = describeContainerInstancesEventLoopFutureAsyncOverride {
            return describeContainerInstancesEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: DescribeContainerInstancesResponse.self)
        promise.fail(error)
        
        return promise.futureResult
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
        if let describeServicesEventLoopFutureAsyncOverride = describeServicesEventLoopFutureAsyncOverride {
            return describeServicesEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: DescribeServicesResponse.self)
        promise.fail(error)
        
        return promise.futureResult
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
        if let describeTaskDefinitionEventLoopFutureAsyncOverride = describeTaskDefinitionEventLoopFutureAsyncOverride {
            return describeTaskDefinitionEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: DescribeTaskDefinitionResponse.self)
        promise.fail(error)
        
        return promise.futureResult
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
        if let describeTaskSetsEventLoopFutureAsyncOverride = describeTaskSetsEventLoopFutureAsyncOverride {
            return describeTaskSetsEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: DescribeTaskSetsResponse.self)
        promise.fail(error)
        
        return promise.futureResult
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
        if let describeTasksEventLoopFutureAsyncOverride = describeTasksEventLoopFutureAsyncOverride {
            return describeTasksEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: DescribeTasksResponse.self)
        promise.fail(error)
        
        return promise.futureResult
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
        if let discoverPollEndpointEventLoopFutureAsyncOverride = discoverPollEndpointEventLoopFutureAsyncOverride {
            return discoverPollEndpointEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: DiscoverPollEndpointResponse.self)
        promise.fail(error)
        
        return promise.futureResult
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
        if let listAccountSettingsEventLoopFutureAsyncOverride = listAccountSettingsEventLoopFutureAsyncOverride {
            return listAccountSettingsEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: ListAccountSettingsResponse.self)
        promise.fail(error)
        
        return promise.futureResult
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
        if let listAttributesEventLoopFutureAsyncOverride = listAttributesEventLoopFutureAsyncOverride {
            return listAttributesEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: ListAttributesResponse.self)
        promise.fail(error)
        
        return promise.futureResult
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
        if let listClustersEventLoopFutureAsyncOverride = listClustersEventLoopFutureAsyncOverride {
            return listClustersEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: ListClustersResponse.self)
        promise.fail(error)
        
        return promise.futureResult
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
        if let listContainerInstancesEventLoopFutureAsyncOverride = listContainerInstancesEventLoopFutureAsyncOverride {
            return listContainerInstancesEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: ListContainerInstancesResponse.self)
        promise.fail(error)
        
        return promise.futureResult
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
        if let listServicesEventLoopFutureAsyncOverride = listServicesEventLoopFutureAsyncOverride {
            return listServicesEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: ListServicesResponse.self)
        promise.fail(error)
        
        return promise.futureResult
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
        if let listTagsForResourceEventLoopFutureAsyncOverride = listTagsForResourceEventLoopFutureAsyncOverride {
            return listTagsForResourceEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: ListTagsForResourceResponse.self)
        promise.fail(error)
        
        return promise.futureResult
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
        if let listTaskDefinitionFamiliesEventLoopFutureAsyncOverride = listTaskDefinitionFamiliesEventLoopFutureAsyncOverride {
            return listTaskDefinitionFamiliesEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: ListTaskDefinitionFamiliesResponse.self)
        promise.fail(error)
        
        return promise.futureResult
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
        if let listTaskDefinitionsEventLoopFutureAsyncOverride = listTaskDefinitionsEventLoopFutureAsyncOverride {
            return listTaskDefinitionsEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: ListTaskDefinitionsResponse.self)
        promise.fail(error)
        
        return promise.futureResult
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
        if let listTasksEventLoopFutureAsyncOverride = listTasksEventLoopFutureAsyncOverride {
            return listTasksEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: ListTasksResponse.self)
        promise.fail(error)
        
        return promise.futureResult
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
        if let putAccountSettingEventLoopFutureAsyncOverride = putAccountSettingEventLoopFutureAsyncOverride {
            return putAccountSettingEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: PutAccountSettingResponse.self)
        promise.fail(error)
        
        return promise.futureResult
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
        if let putAccountSettingDefaultEventLoopFutureAsyncOverride = putAccountSettingDefaultEventLoopFutureAsyncOverride {
            return putAccountSettingDefaultEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: PutAccountSettingDefaultResponse.self)
        promise.fail(error)
        
        return promise.futureResult
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
        if let putAttributesEventLoopFutureAsyncOverride = putAttributesEventLoopFutureAsyncOverride {
            return putAttributesEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: PutAttributesResponse.self)
        promise.fail(error)
        
        return promise.futureResult
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
        if let putClusterCapacityProvidersEventLoopFutureAsyncOverride = putClusterCapacityProvidersEventLoopFutureAsyncOverride {
            return putClusterCapacityProvidersEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: PutClusterCapacityProvidersResponse.self)
        promise.fail(error)
        
        return promise.futureResult
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
        if let registerContainerInstanceEventLoopFutureAsyncOverride = registerContainerInstanceEventLoopFutureAsyncOverride {
            return registerContainerInstanceEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: RegisterContainerInstanceResponse.self)
        promise.fail(error)
        
        return promise.futureResult
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
        if let registerTaskDefinitionEventLoopFutureAsyncOverride = registerTaskDefinitionEventLoopFutureAsyncOverride {
            return registerTaskDefinitionEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: RegisterTaskDefinitionResponse.self)
        promise.fail(error)
        
        return promise.futureResult
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
        if let runTaskEventLoopFutureAsyncOverride = runTaskEventLoopFutureAsyncOverride {
            return runTaskEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: RunTaskResponse.self)
        promise.fail(error)
        
        return promise.futureResult
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
        if let startTaskEventLoopFutureAsyncOverride = startTaskEventLoopFutureAsyncOverride {
            return startTaskEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: StartTaskResponse.self)
        promise.fail(error)
        
        return promise.futureResult
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
        if let stopTaskEventLoopFutureAsyncOverride = stopTaskEventLoopFutureAsyncOverride {
            return stopTaskEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: StopTaskResponse.self)
        promise.fail(error)
        
        return promise.futureResult
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
        if let submitAttachmentStateChangesEventLoopFutureAsyncOverride = submitAttachmentStateChangesEventLoopFutureAsyncOverride {
            return submitAttachmentStateChangesEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: SubmitAttachmentStateChangesResponse.self)
        promise.fail(error)
        
        return promise.futureResult
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
        if let submitContainerStateChangeEventLoopFutureAsyncOverride = submitContainerStateChangeEventLoopFutureAsyncOverride {
            return submitContainerStateChangeEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: SubmitContainerStateChangeResponse.self)
        promise.fail(error)
        
        return promise.futureResult
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
        if let submitTaskStateChangeEventLoopFutureAsyncOverride = submitTaskStateChangeEventLoopFutureAsyncOverride {
            return submitTaskStateChangeEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: SubmitTaskStateChangeResponse.self)
        promise.fail(error)
        
        return promise.futureResult
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
        if let tagResourceEventLoopFutureAsyncOverride = tagResourceEventLoopFutureAsyncOverride {
            return tagResourceEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: TagResourceResponse.self)
        promise.fail(error)
        
        return promise.futureResult
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
        if let untagResourceEventLoopFutureAsyncOverride = untagResourceEventLoopFutureAsyncOverride {
            return untagResourceEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: UntagResourceResponse.self)
        promise.fail(error)
        
        return promise.futureResult
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
        if let updateCapacityProviderEventLoopFutureAsyncOverride = updateCapacityProviderEventLoopFutureAsyncOverride {
            return updateCapacityProviderEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: UpdateCapacityProviderResponse.self)
        promise.fail(error)
        
        return promise.futureResult
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
        if let updateClusterSettingsEventLoopFutureAsyncOverride = updateClusterSettingsEventLoopFutureAsyncOverride {
            return updateClusterSettingsEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: UpdateClusterSettingsResponse.self)
        promise.fail(error)
        
        return promise.futureResult
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
        if let updateContainerAgentEventLoopFutureAsyncOverride = updateContainerAgentEventLoopFutureAsyncOverride {
            return updateContainerAgentEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: UpdateContainerAgentResponse.self)
        promise.fail(error)
        
        return promise.futureResult
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
        if let updateContainerInstancesStateEventLoopFutureAsyncOverride = updateContainerInstancesStateEventLoopFutureAsyncOverride {
            return updateContainerInstancesStateEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: UpdateContainerInstancesStateResponse.self)
        promise.fail(error)
        
        return promise.futureResult
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
        if let updateServiceEventLoopFutureAsyncOverride = updateServiceEventLoopFutureAsyncOverride {
            return updateServiceEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: UpdateServiceResponse.self)
        promise.fail(error)
        
        return promise.futureResult
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
        if let updateServicePrimaryTaskSetEventLoopFutureAsyncOverride = updateServicePrimaryTaskSetEventLoopFutureAsyncOverride {
            return updateServicePrimaryTaskSetEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: UpdateServicePrimaryTaskSetResponse.self)
        promise.fail(error)
        
        return promise.futureResult
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
        if let updateTaskSetEventLoopFutureAsyncOverride = updateTaskSetEventLoopFutureAsyncOverride {
            return updateTaskSetEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: UpdateTaskSetResponse.self)
        promise.fail(error)
        
        return promise.futureResult
    }
}
