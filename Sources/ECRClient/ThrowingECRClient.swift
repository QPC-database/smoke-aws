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
// ThrowingECRClient.swift
// ECRClient
//

import Foundation
import ECRModel
import SmokeAWSCore
import SmokeHTTPClient
import NIO

/**
 Mock Client for the ECR service that by default always throws from its methods.
 */
public struct ThrowingECRClient: ECRClientProtocol {
    let error: ECRError
    let eventLoop: EventLoop
    let typedErrorProvider: (Swift.Error) -> ECRError = { $0.asTypedError() }
    let batchCheckLayerAvailabilityEventLoopFutureAsyncOverride: BatchCheckLayerAvailabilityEventLoopFutureAsyncType?
    let batchDeleteImageEventLoopFutureAsyncOverride: BatchDeleteImageEventLoopFutureAsyncType?
    let batchGetImageEventLoopFutureAsyncOverride: BatchGetImageEventLoopFutureAsyncType?
    let completeLayerUploadEventLoopFutureAsyncOverride: CompleteLayerUploadEventLoopFutureAsyncType?
    let createRepositoryEventLoopFutureAsyncOverride: CreateRepositoryEventLoopFutureAsyncType?
    let deleteLifecyclePolicyEventLoopFutureAsyncOverride: DeleteLifecyclePolicyEventLoopFutureAsyncType?
    let deleteRegistryPolicyEventLoopFutureAsyncOverride: DeleteRegistryPolicyEventLoopFutureAsyncType?
    let deleteRepositoryEventLoopFutureAsyncOverride: DeleteRepositoryEventLoopFutureAsyncType?
    let deleteRepositoryPolicyEventLoopFutureAsyncOverride: DeleteRepositoryPolicyEventLoopFutureAsyncType?
    let describeImageScanFindingsEventLoopFutureAsyncOverride: DescribeImageScanFindingsEventLoopFutureAsyncType?
    let describeImagesEventLoopFutureAsyncOverride: DescribeImagesEventLoopFutureAsyncType?
    let describeRegistryEventLoopFutureAsyncOverride: DescribeRegistryEventLoopFutureAsyncType?
    let describeRepositoriesEventLoopFutureAsyncOverride: DescribeRepositoriesEventLoopFutureAsyncType?
    let getAuthorizationTokenEventLoopFutureAsyncOverride: GetAuthorizationTokenEventLoopFutureAsyncType?
    let getDownloadUrlForLayerEventLoopFutureAsyncOverride: GetDownloadUrlForLayerEventLoopFutureAsyncType?
    let getLifecyclePolicyEventLoopFutureAsyncOverride: GetLifecyclePolicyEventLoopFutureAsyncType?
    let getLifecyclePolicyPreviewEventLoopFutureAsyncOverride: GetLifecyclePolicyPreviewEventLoopFutureAsyncType?
    let getRegistryPolicyEventLoopFutureAsyncOverride: GetRegistryPolicyEventLoopFutureAsyncType?
    let getRepositoryPolicyEventLoopFutureAsyncOverride: GetRepositoryPolicyEventLoopFutureAsyncType?
    let initiateLayerUploadEventLoopFutureAsyncOverride: InitiateLayerUploadEventLoopFutureAsyncType?
    let listImagesEventLoopFutureAsyncOverride: ListImagesEventLoopFutureAsyncType?
    let listTagsForResourceEventLoopFutureAsyncOverride: ListTagsForResourceEventLoopFutureAsyncType?
    let putImageEventLoopFutureAsyncOverride: PutImageEventLoopFutureAsyncType?
    let putImageScanningConfigurationEventLoopFutureAsyncOverride: PutImageScanningConfigurationEventLoopFutureAsyncType?
    let putImageTagMutabilityEventLoopFutureAsyncOverride: PutImageTagMutabilityEventLoopFutureAsyncType?
    let putLifecyclePolicyEventLoopFutureAsyncOverride: PutLifecyclePolicyEventLoopFutureAsyncType?
    let putRegistryPolicyEventLoopFutureAsyncOverride: PutRegistryPolicyEventLoopFutureAsyncType?
    let putReplicationConfigurationEventLoopFutureAsyncOverride: PutReplicationConfigurationEventLoopFutureAsyncType?
    let setRepositoryPolicyEventLoopFutureAsyncOverride: SetRepositoryPolicyEventLoopFutureAsyncType?
    let startImageScanEventLoopFutureAsyncOverride: StartImageScanEventLoopFutureAsyncType?
    let startLifecyclePolicyPreviewEventLoopFutureAsyncOverride: StartLifecyclePolicyPreviewEventLoopFutureAsyncType?
    let tagResourceEventLoopFutureAsyncOverride: TagResourceEventLoopFutureAsyncType?
    let untagResourceEventLoopFutureAsyncOverride: UntagResourceEventLoopFutureAsyncType?
    let uploadLayerPartEventLoopFutureAsyncOverride: UploadLayerPartEventLoopFutureAsyncType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(
            error: ECRError,
            eventLoop: EventLoop,
            batchCheckLayerAvailabilityEventLoopFutureAsync: BatchCheckLayerAvailabilityEventLoopFutureAsyncType? = nil,
            batchDeleteImageEventLoopFutureAsync: BatchDeleteImageEventLoopFutureAsyncType? = nil,
            batchGetImageEventLoopFutureAsync: BatchGetImageEventLoopFutureAsyncType? = nil,
            completeLayerUploadEventLoopFutureAsync: CompleteLayerUploadEventLoopFutureAsyncType? = nil,
            createRepositoryEventLoopFutureAsync: CreateRepositoryEventLoopFutureAsyncType? = nil,
            deleteLifecyclePolicyEventLoopFutureAsync: DeleteLifecyclePolicyEventLoopFutureAsyncType? = nil,
            deleteRegistryPolicyEventLoopFutureAsync: DeleteRegistryPolicyEventLoopFutureAsyncType? = nil,
            deleteRepositoryEventLoopFutureAsync: DeleteRepositoryEventLoopFutureAsyncType? = nil,
            deleteRepositoryPolicyEventLoopFutureAsync: DeleteRepositoryPolicyEventLoopFutureAsyncType? = nil,
            describeImageScanFindingsEventLoopFutureAsync: DescribeImageScanFindingsEventLoopFutureAsyncType? = nil,
            describeImagesEventLoopFutureAsync: DescribeImagesEventLoopFutureAsyncType? = nil,
            describeRegistryEventLoopFutureAsync: DescribeRegistryEventLoopFutureAsyncType? = nil,
            describeRepositoriesEventLoopFutureAsync: DescribeRepositoriesEventLoopFutureAsyncType? = nil,
            getAuthorizationTokenEventLoopFutureAsync: GetAuthorizationTokenEventLoopFutureAsyncType? = nil,
            getDownloadUrlForLayerEventLoopFutureAsync: GetDownloadUrlForLayerEventLoopFutureAsyncType? = nil,
            getLifecyclePolicyEventLoopFutureAsync: GetLifecyclePolicyEventLoopFutureAsyncType? = nil,
            getLifecyclePolicyPreviewEventLoopFutureAsync: GetLifecyclePolicyPreviewEventLoopFutureAsyncType? = nil,
            getRegistryPolicyEventLoopFutureAsync: GetRegistryPolicyEventLoopFutureAsyncType? = nil,
            getRepositoryPolicyEventLoopFutureAsync: GetRepositoryPolicyEventLoopFutureAsyncType? = nil,
            initiateLayerUploadEventLoopFutureAsync: InitiateLayerUploadEventLoopFutureAsyncType? = nil,
            listImagesEventLoopFutureAsync: ListImagesEventLoopFutureAsyncType? = nil,
            listTagsForResourceEventLoopFutureAsync: ListTagsForResourceEventLoopFutureAsyncType? = nil,
            putImageEventLoopFutureAsync: PutImageEventLoopFutureAsyncType? = nil,
            putImageScanningConfigurationEventLoopFutureAsync: PutImageScanningConfigurationEventLoopFutureAsyncType? = nil,
            putImageTagMutabilityEventLoopFutureAsync: PutImageTagMutabilityEventLoopFutureAsyncType? = nil,
            putLifecyclePolicyEventLoopFutureAsync: PutLifecyclePolicyEventLoopFutureAsyncType? = nil,
            putRegistryPolicyEventLoopFutureAsync: PutRegistryPolicyEventLoopFutureAsyncType? = nil,
            putReplicationConfigurationEventLoopFutureAsync: PutReplicationConfigurationEventLoopFutureAsyncType? = nil,
            setRepositoryPolicyEventLoopFutureAsync: SetRepositoryPolicyEventLoopFutureAsyncType? = nil,
            startImageScanEventLoopFutureAsync: StartImageScanEventLoopFutureAsyncType? = nil,
            startLifecyclePolicyPreviewEventLoopFutureAsync: StartLifecyclePolicyPreviewEventLoopFutureAsyncType? = nil,
            tagResourceEventLoopFutureAsync: TagResourceEventLoopFutureAsyncType? = nil,
            untagResourceEventLoopFutureAsync: UntagResourceEventLoopFutureAsyncType? = nil,
            uploadLayerPartEventLoopFutureAsync: UploadLayerPartEventLoopFutureAsyncType? = nil) {
        self.error = error
        self.eventLoop = eventLoop
        
        self.batchCheckLayerAvailabilityEventLoopFutureAsyncOverride = batchCheckLayerAvailabilityEventLoopFutureAsync
        self.batchDeleteImageEventLoopFutureAsyncOverride = batchDeleteImageEventLoopFutureAsync
        self.batchGetImageEventLoopFutureAsyncOverride = batchGetImageEventLoopFutureAsync
        self.completeLayerUploadEventLoopFutureAsyncOverride = completeLayerUploadEventLoopFutureAsync
        self.createRepositoryEventLoopFutureAsyncOverride = createRepositoryEventLoopFutureAsync
        self.deleteLifecyclePolicyEventLoopFutureAsyncOverride = deleteLifecyclePolicyEventLoopFutureAsync
        self.deleteRegistryPolicyEventLoopFutureAsyncOverride = deleteRegistryPolicyEventLoopFutureAsync
        self.deleteRepositoryEventLoopFutureAsyncOverride = deleteRepositoryEventLoopFutureAsync
        self.deleteRepositoryPolicyEventLoopFutureAsyncOverride = deleteRepositoryPolicyEventLoopFutureAsync
        self.describeImageScanFindingsEventLoopFutureAsyncOverride = describeImageScanFindingsEventLoopFutureAsync
        self.describeImagesEventLoopFutureAsyncOverride = describeImagesEventLoopFutureAsync
        self.describeRegistryEventLoopFutureAsyncOverride = describeRegistryEventLoopFutureAsync
        self.describeRepositoriesEventLoopFutureAsyncOverride = describeRepositoriesEventLoopFutureAsync
        self.getAuthorizationTokenEventLoopFutureAsyncOverride = getAuthorizationTokenEventLoopFutureAsync
        self.getDownloadUrlForLayerEventLoopFutureAsyncOverride = getDownloadUrlForLayerEventLoopFutureAsync
        self.getLifecyclePolicyEventLoopFutureAsyncOverride = getLifecyclePolicyEventLoopFutureAsync
        self.getLifecyclePolicyPreviewEventLoopFutureAsyncOverride = getLifecyclePolicyPreviewEventLoopFutureAsync
        self.getRegistryPolicyEventLoopFutureAsyncOverride = getRegistryPolicyEventLoopFutureAsync
        self.getRepositoryPolicyEventLoopFutureAsyncOverride = getRepositoryPolicyEventLoopFutureAsync
        self.initiateLayerUploadEventLoopFutureAsyncOverride = initiateLayerUploadEventLoopFutureAsync
        self.listImagesEventLoopFutureAsyncOverride = listImagesEventLoopFutureAsync
        self.listTagsForResourceEventLoopFutureAsyncOverride = listTagsForResourceEventLoopFutureAsync
        self.putImageEventLoopFutureAsyncOverride = putImageEventLoopFutureAsync
        self.putImageScanningConfigurationEventLoopFutureAsyncOverride = putImageScanningConfigurationEventLoopFutureAsync
        self.putImageTagMutabilityEventLoopFutureAsyncOverride = putImageTagMutabilityEventLoopFutureAsync
        self.putLifecyclePolicyEventLoopFutureAsyncOverride = putLifecyclePolicyEventLoopFutureAsync
        self.putRegistryPolicyEventLoopFutureAsyncOverride = putRegistryPolicyEventLoopFutureAsync
        self.putReplicationConfigurationEventLoopFutureAsyncOverride = putReplicationConfigurationEventLoopFutureAsync
        self.setRepositoryPolicyEventLoopFutureAsyncOverride = setRepositoryPolicyEventLoopFutureAsync
        self.startImageScanEventLoopFutureAsyncOverride = startImageScanEventLoopFutureAsync
        self.startLifecyclePolicyPreviewEventLoopFutureAsyncOverride = startLifecyclePolicyPreviewEventLoopFutureAsync
        self.tagResourceEventLoopFutureAsyncOverride = tagResourceEventLoopFutureAsync
        self.untagResourceEventLoopFutureAsyncOverride = untagResourceEventLoopFutureAsync
        self.uploadLayerPartEventLoopFutureAsyncOverride = uploadLayerPartEventLoopFutureAsync
    }

    /**
     Invokes the BatchCheckLayerAvailability operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated BatchCheckLayerAvailabilityRequest object being passed to this operation.
     - Returns: A future to the BatchCheckLayerAvailabilityResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, server.
     */
    public func batchCheckLayerAvailability(
            input: ECRModel.BatchCheckLayerAvailabilityRequest) -> EventLoopFuture<ECRModel.BatchCheckLayerAvailabilityResponse> {
        if let batchCheckLayerAvailabilityEventLoopFutureAsyncOverride = batchCheckLayerAvailabilityEventLoopFutureAsyncOverride {
            return batchCheckLayerAvailabilityEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: BatchCheckLayerAvailabilityResponse.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the BatchDeleteImage operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated BatchDeleteImageRequest object being passed to this operation.
     - Returns: A future to the BatchDeleteImageResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, server.
     */
    public func batchDeleteImage(
            input: ECRModel.BatchDeleteImageRequest) -> EventLoopFuture<ECRModel.BatchDeleteImageResponse> {
        if let batchDeleteImageEventLoopFutureAsyncOverride = batchDeleteImageEventLoopFutureAsyncOverride {
            return batchDeleteImageEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: BatchDeleteImageResponse.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the BatchGetImage operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated BatchGetImageRequest object being passed to this operation.
     - Returns: A future to the BatchGetImageResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, server.
     */
    public func batchGetImage(
            input: ECRModel.BatchGetImageRequest) -> EventLoopFuture<ECRModel.BatchGetImageResponse> {
        if let batchGetImageEventLoopFutureAsyncOverride = batchGetImageEventLoopFutureAsyncOverride {
            return batchGetImageEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: BatchGetImageResponse.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the CompleteLayerUpload operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CompleteLayerUploadRequest object being passed to this operation.
     - Returns: A future to the CompleteLayerUploadResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: emptyUpload, invalidLayer, invalidParameter, kms, layerAlreadyExists, layerPartTooSmall, repositoryNotFound, server, uploadNotFound.
     */
    public func completeLayerUpload(
            input: ECRModel.CompleteLayerUploadRequest) -> EventLoopFuture<ECRModel.CompleteLayerUploadResponse> {
        if let completeLayerUploadEventLoopFutureAsyncOverride = completeLayerUploadEventLoopFutureAsyncOverride {
            return completeLayerUploadEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: CompleteLayerUploadResponse.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the CreateRepository operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateRepositoryRequest object being passed to this operation.
     - Returns: A future to the CreateRepositoryResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, invalidTagParameter, kms, limitExceeded, repositoryAlreadyExists, server, tooManyTags.
     */
    public func createRepository(
            input: ECRModel.CreateRepositoryRequest) -> EventLoopFuture<ECRModel.CreateRepositoryResponse> {
        if let createRepositoryEventLoopFutureAsyncOverride = createRepositoryEventLoopFutureAsyncOverride {
            return createRepositoryEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: CreateRepositoryResponse.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the DeleteLifecyclePolicy operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteLifecyclePolicyRequest object being passed to this operation.
     - Returns: A future to the DeleteLifecyclePolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, lifecyclePolicyNotFound, repositoryNotFound, server.
     */
    public func deleteLifecyclePolicy(
            input: ECRModel.DeleteLifecyclePolicyRequest) -> EventLoopFuture<ECRModel.DeleteLifecyclePolicyResponse> {
        if let deleteLifecyclePolicyEventLoopFutureAsyncOverride = deleteLifecyclePolicyEventLoopFutureAsyncOverride {
            return deleteLifecyclePolicyEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: DeleteLifecyclePolicyResponse.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the DeleteRegistryPolicy operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteRegistryPolicyRequest object being passed to this operation.
     - Returns: A future to the DeleteRegistryPolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, registryPolicyNotFound, server.
     */
    public func deleteRegistryPolicy(
            input: ECRModel.DeleteRegistryPolicyRequest) -> EventLoopFuture<ECRModel.DeleteRegistryPolicyResponse> {
        if let deleteRegistryPolicyEventLoopFutureAsyncOverride = deleteRegistryPolicyEventLoopFutureAsyncOverride {
            return deleteRegistryPolicyEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: DeleteRegistryPolicyResponse.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the DeleteRepository operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteRepositoryRequest object being passed to this operation.
     - Returns: A future to the DeleteRepositoryResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, kms, repositoryNotEmpty, repositoryNotFound, server.
     */
    public func deleteRepository(
            input: ECRModel.DeleteRepositoryRequest) -> EventLoopFuture<ECRModel.DeleteRepositoryResponse> {
        if let deleteRepositoryEventLoopFutureAsyncOverride = deleteRepositoryEventLoopFutureAsyncOverride {
            return deleteRepositoryEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: DeleteRepositoryResponse.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the DeleteRepositoryPolicy operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteRepositoryPolicyRequest object being passed to this operation.
     - Returns: A future to the DeleteRepositoryPolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, repositoryPolicyNotFound, server.
     */
    public func deleteRepositoryPolicy(
            input: ECRModel.DeleteRepositoryPolicyRequest) -> EventLoopFuture<ECRModel.DeleteRepositoryPolicyResponse> {
        if let deleteRepositoryPolicyEventLoopFutureAsyncOverride = deleteRepositoryPolicyEventLoopFutureAsyncOverride {
            return deleteRepositoryPolicyEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: DeleteRepositoryPolicyResponse.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeImageScanFindings operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeImageScanFindingsRequest object being passed to this operation.
     - Returns: A future to the DescribeImageScanFindingsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: imageNotFound, invalidParameter, repositoryNotFound, scanNotFound, server.
     */
    public func describeImageScanFindings(
            input: ECRModel.DescribeImageScanFindingsRequest) -> EventLoopFuture<ECRModel.DescribeImageScanFindingsResponse> {
        if let describeImageScanFindingsEventLoopFutureAsyncOverride = describeImageScanFindingsEventLoopFutureAsyncOverride {
            return describeImageScanFindingsEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: DescribeImageScanFindingsResponse.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeImages operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeImagesRequest object being passed to this operation.
     - Returns: A future to the DescribeImagesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: imageNotFound, invalidParameter, repositoryNotFound, server.
     */
    public func describeImages(
            input: ECRModel.DescribeImagesRequest) -> EventLoopFuture<ECRModel.DescribeImagesResponse> {
        if let describeImagesEventLoopFutureAsyncOverride = describeImagesEventLoopFutureAsyncOverride {
            return describeImagesEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: DescribeImagesResponse.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeRegistry operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeRegistryRequest object being passed to this operation.
     - Returns: A future to the DescribeRegistryResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, server, validation.
     */
    public func describeRegistry(
            input: ECRModel.DescribeRegistryRequest) -> EventLoopFuture<ECRModel.DescribeRegistryResponse> {
        if let describeRegistryEventLoopFutureAsyncOverride = describeRegistryEventLoopFutureAsyncOverride {
            return describeRegistryEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: DescribeRegistryResponse.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeRepositories operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeRepositoriesRequest object being passed to this operation.
     - Returns: A future to the DescribeRepositoriesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, server.
     */
    public func describeRepositories(
            input: ECRModel.DescribeRepositoriesRequest) -> EventLoopFuture<ECRModel.DescribeRepositoriesResponse> {
        if let describeRepositoriesEventLoopFutureAsyncOverride = describeRepositoriesEventLoopFutureAsyncOverride {
            return describeRepositoriesEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: DescribeRepositoriesResponse.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the GetAuthorizationToken operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetAuthorizationTokenRequest object being passed to this operation.
     - Returns: A future to the GetAuthorizationTokenResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, server.
     */
    public func getAuthorizationToken(
            input: ECRModel.GetAuthorizationTokenRequest) -> EventLoopFuture<ECRModel.GetAuthorizationTokenResponse> {
        if let getAuthorizationTokenEventLoopFutureAsyncOverride = getAuthorizationTokenEventLoopFutureAsyncOverride {
            return getAuthorizationTokenEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: GetAuthorizationTokenResponse.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the GetDownloadUrlForLayer operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetDownloadUrlForLayerRequest object being passed to this operation.
     - Returns: A future to the GetDownloadUrlForLayerResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, layerInaccessible, layersNotFound, repositoryNotFound, server.
     */
    public func getDownloadUrlForLayer(
            input: ECRModel.GetDownloadUrlForLayerRequest) -> EventLoopFuture<ECRModel.GetDownloadUrlForLayerResponse> {
        if let getDownloadUrlForLayerEventLoopFutureAsyncOverride = getDownloadUrlForLayerEventLoopFutureAsyncOverride {
            return getDownloadUrlForLayerEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: GetDownloadUrlForLayerResponse.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the GetLifecyclePolicy operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetLifecyclePolicyRequest object being passed to this operation.
     - Returns: A future to the GetLifecyclePolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, lifecyclePolicyNotFound, repositoryNotFound, server.
     */
    public func getLifecyclePolicy(
            input: ECRModel.GetLifecyclePolicyRequest) -> EventLoopFuture<ECRModel.GetLifecyclePolicyResponse> {
        if let getLifecyclePolicyEventLoopFutureAsyncOverride = getLifecyclePolicyEventLoopFutureAsyncOverride {
            return getLifecyclePolicyEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: GetLifecyclePolicyResponse.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the GetLifecyclePolicyPreview operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetLifecyclePolicyPreviewRequest object being passed to this operation.
     - Returns: A future to the GetLifecyclePolicyPreviewResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, lifecyclePolicyPreviewNotFound, repositoryNotFound, server.
     */
    public func getLifecyclePolicyPreview(
            input: ECRModel.GetLifecyclePolicyPreviewRequest) -> EventLoopFuture<ECRModel.GetLifecyclePolicyPreviewResponse> {
        if let getLifecyclePolicyPreviewEventLoopFutureAsyncOverride = getLifecyclePolicyPreviewEventLoopFutureAsyncOverride {
            return getLifecyclePolicyPreviewEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: GetLifecyclePolicyPreviewResponse.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the GetRegistryPolicy operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetRegistryPolicyRequest object being passed to this operation.
     - Returns: A future to the GetRegistryPolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, registryPolicyNotFound, server.
     */
    public func getRegistryPolicy(
            input: ECRModel.GetRegistryPolicyRequest) -> EventLoopFuture<ECRModel.GetRegistryPolicyResponse> {
        if let getRegistryPolicyEventLoopFutureAsyncOverride = getRegistryPolicyEventLoopFutureAsyncOverride {
            return getRegistryPolicyEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: GetRegistryPolicyResponse.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the GetRepositoryPolicy operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetRepositoryPolicyRequest object being passed to this operation.
     - Returns: A future to the GetRepositoryPolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, repositoryPolicyNotFound, server.
     */
    public func getRepositoryPolicy(
            input: ECRModel.GetRepositoryPolicyRequest) -> EventLoopFuture<ECRModel.GetRepositoryPolicyResponse> {
        if let getRepositoryPolicyEventLoopFutureAsyncOverride = getRepositoryPolicyEventLoopFutureAsyncOverride {
            return getRepositoryPolicyEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: GetRepositoryPolicyResponse.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the InitiateLayerUpload operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated InitiateLayerUploadRequest object being passed to this operation.
     - Returns: A future to the InitiateLayerUploadResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, kms, repositoryNotFound, server.
     */
    public func initiateLayerUpload(
            input: ECRModel.InitiateLayerUploadRequest) -> EventLoopFuture<ECRModel.InitiateLayerUploadResponse> {
        if let initiateLayerUploadEventLoopFutureAsyncOverride = initiateLayerUploadEventLoopFutureAsyncOverride {
            return initiateLayerUploadEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: InitiateLayerUploadResponse.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the ListImages operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListImagesRequest object being passed to this operation.
     - Returns: A future to the ListImagesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, server.
     */
    public func listImages(
            input: ECRModel.ListImagesRequest) -> EventLoopFuture<ECRModel.ListImagesResponse> {
        if let listImagesEventLoopFutureAsyncOverride = listImagesEventLoopFutureAsyncOverride {
            return listImagesEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: ListImagesResponse.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the ListTagsForResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
     - Returns: A future to the ListTagsForResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, server.
     */
    public func listTagsForResource(
            input: ECRModel.ListTagsForResourceRequest) -> EventLoopFuture<ECRModel.ListTagsForResourceResponse> {
        if let listTagsForResourceEventLoopFutureAsyncOverride = listTagsForResourceEventLoopFutureAsyncOverride {
            return listTagsForResourceEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: ListTagsForResourceResponse.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the PutImage operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutImageRequest object being passed to this operation.
     - Returns: A future to the PutImageResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: imageAlreadyExists, imageDigestDoesNotMatch, imageTagAlreadyExists, invalidParameter, kms, layersNotFound, limitExceeded, referencedImagesNotFound, repositoryNotFound, server.
     */
    public func putImage(
            input: ECRModel.PutImageRequest) -> EventLoopFuture<ECRModel.PutImageResponse> {
        if let putImageEventLoopFutureAsyncOverride = putImageEventLoopFutureAsyncOverride {
            return putImageEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: PutImageResponse.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the PutImageScanningConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutImageScanningConfigurationRequest object being passed to this operation.
     - Returns: A future to the PutImageScanningConfigurationResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, server.
     */
    public func putImageScanningConfiguration(
            input: ECRModel.PutImageScanningConfigurationRequest) -> EventLoopFuture<ECRModel.PutImageScanningConfigurationResponse> {
        if let putImageScanningConfigurationEventLoopFutureAsyncOverride = putImageScanningConfigurationEventLoopFutureAsyncOverride {
            return putImageScanningConfigurationEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: PutImageScanningConfigurationResponse.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the PutImageTagMutability operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutImageTagMutabilityRequest object being passed to this operation.
     - Returns: A future to the PutImageTagMutabilityResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, server.
     */
    public func putImageTagMutability(
            input: ECRModel.PutImageTagMutabilityRequest) -> EventLoopFuture<ECRModel.PutImageTagMutabilityResponse> {
        if let putImageTagMutabilityEventLoopFutureAsyncOverride = putImageTagMutabilityEventLoopFutureAsyncOverride {
            return putImageTagMutabilityEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: PutImageTagMutabilityResponse.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the PutLifecyclePolicy operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutLifecyclePolicyRequest object being passed to this operation.
     - Returns: A future to the PutLifecyclePolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, server.
     */
    public func putLifecyclePolicy(
            input: ECRModel.PutLifecyclePolicyRequest) -> EventLoopFuture<ECRModel.PutLifecyclePolicyResponse> {
        if let putLifecyclePolicyEventLoopFutureAsyncOverride = putLifecyclePolicyEventLoopFutureAsyncOverride {
            return putLifecyclePolicyEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: PutLifecyclePolicyResponse.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the PutRegistryPolicy operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutRegistryPolicyRequest object being passed to this operation.
     - Returns: A future to the PutRegistryPolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, server.
     */
    public func putRegistryPolicy(
            input: ECRModel.PutRegistryPolicyRequest) -> EventLoopFuture<ECRModel.PutRegistryPolicyResponse> {
        if let putRegistryPolicyEventLoopFutureAsyncOverride = putRegistryPolicyEventLoopFutureAsyncOverride {
            return putRegistryPolicyEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: PutRegistryPolicyResponse.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the PutReplicationConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutReplicationConfigurationRequest object being passed to this operation.
     - Returns: A future to the PutReplicationConfigurationResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, server, validation.
     */
    public func putReplicationConfiguration(
            input: ECRModel.PutReplicationConfigurationRequest) -> EventLoopFuture<ECRModel.PutReplicationConfigurationResponse> {
        if let putReplicationConfigurationEventLoopFutureAsyncOverride = putReplicationConfigurationEventLoopFutureAsyncOverride {
            return putReplicationConfigurationEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: PutReplicationConfigurationResponse.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the SetRepositoryPolicy operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SetRepositoryPolicyRequest object being passed to this operation.
     - Returns: A future to the SetRepositoryPolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, server.
     */
    public func setRepositoryPolicy(
            input: ECRModel.SetRepositoryPolicyRequest) -> EventLoopFuture<ECRModel.SetRepositoryPolicyResponse> {
        if let setRepositoryPolicyEventLoopFutureAsyncOverride = setRepositoryPolicyEventLoopFutureAsyncOverride {
            return setRepositoryPolicyEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: SetRepositoryPolicyResponse.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the StartImageScan operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated StartImageScanRequest object being passed to this operation.
     - Returns: A future to the StartImageScanResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: imageNotFound, invalidParameter, limitExceeded, repositoryNotFound, server, unsupportedImageType.
     */
    public func startImageScan(
            input: ECRModel.StartImageScanRequest) -> EventLoopFuture<ECRModel.StartImageScanResponse> {
        if let startImageScanEventLoopFutureAsyncOverride = startImageScanEventLoopFutureAsyncOverride {
            return startImageScanEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: StartImageScanResponse.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the StartLifecyclePolicyPreview operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated StartLifecyclePolicyPreviewRequest object being passed to this operation.
     - Returns: A future to the StartLifecyclePolicyPreviewResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, lifecyclePolicyNotFound, lifecyclePolicyPreviewInProgress, repositoryNotFound, server.
     */
    public func startLifecyclePolicyPreview(
            input: ECRModel.StartLifecyclePolicyPreviewRequest) -> EventLoopFuture<ECRModel.StartLifecyclePolicyPreviewResponse> {
        if let startLifecyclePolicyPreviewEventLoopFutureAsyncOverride = startLifecyclePolicyPreviewEventLoopFutureAsyncOverride {
            return startLifecyclePolicyPreviewEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: StartLifecyclePolicyPreviewResponse.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the TagResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
     - Returns: A future to the TagResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, invalidTagParameter, repositoryNotFound, server, tooManyTags.
     */
    public func tagResource(
            input: ECRModel.TagResourceRequest) -> EventLoopFuture<ECRModel.TagResourceResponse> {
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
           The possible errors are: invalidParameter, invalidTagParameter, repositoryNotFound, server, tooManyTags.
     */
    public func untagResource(
            input: ECRModel.UntagResourceRequest) -> EventLoopFuture<ECRModel.UntagResourceResponse> {
        if let untagResourceEventLoopFutureAsyncOverride = untagResourceEventLoopFutureAsyncOverride {
            return untagResourceEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: UntagResourceResponse.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the UploadLayerPart operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UploadLayerPartRequest object being passed to this operation.
     - Returns: A future to the UploadLayerPartResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidLayerPart, invalidParameter, kms, limitExceeded, repositoryNotFound, server, uploadNotFound.
     */
    public func uploadLayerPart(
            input: ECRModel.UploadLayerPartRequest) -> EventLoopFuture<ECRModel.UploadLayerPartResponse> {
        if let uploadLayerPartEventLoopFutureAsyncOverride = uploadLayerPartEventLoopFutureAsyncOverride {
            return uploadLayerPartEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: UploadLayerPartResponse.self)
        promise.fail(error)
        
        return promise.futureResult
    }
}
