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
// ECRClientProtocol.swift
// ECRClient
//

import Foundation
import ECRModel
import SmokeAWSCore
import SmokeHTTPClient
import NIO

/**
 Client Protocol for the ECR service.
 */
public protocol ECRClientProtocol {
    typealias BatchCheckLayerAvailabilityEventLoopFutureAsyncType = (
            _ input: ECRModel.BatchCheckLayerAvailabilityRequest) -> EventLoopFuture<ECRModel.BatchCheckLayerAvailabilityResponse>
    typealias BatchDeleteImageEventLoopFutureAsyncType = (
            _ input: ECRModel.BatchDeleteImageRequest) -> EventLoopFuture<ECRModel.BatchDeleteImageResponse>
    typealias BatchGetImageEventLoopFutureAsyncType = (
            _ input: ECRModel.BatchGetImageRequest) -> EventLoopFuture<ECRModel.BatchGetImageResponse>
    typealias CompleteLayerUploadEventLoopFutureAsyncType = (
            _ input: ECRModel.CompleteLayerUploadRequest) -> EventLoopFuture<ECRModel.CompleteLayerUploadResponse>
    typealias CreateRepositoryEventLoopFutureAsyncType = (
            _ input: ECRModel.CreateRepositoryRequest) -> EventLoopFuture<ECRModel.CreateRepositoryResponse>
    typealias DeleteLifecyclePolicyEventLoopFutureAsyncType = (
            _ input: ECRModel.DeleteLifecyclePolicyRequest) -> EventLoopFuture<ECRModel.DeleteLifecyclePolicyResponse>
    typealias DeleteRegistryPolicyEventLoopFutureAsyncType = (
            _ input: ECRModel.DeleteRegistryPolicyRequest) -> EventLoopFuture<ECRModel.DeleteRegistryPolicyResponse>
    typealias DeleteRepositoryEventLoopFutureAsyncType = (
            _ input: ECRModel.DeleteRepositoryRequest) -> EventLoopFuture<ECRModel.DeleteRepositoryResponse>
    typealias DeleteRepositoryPolicyEventLoopFutureAsyncType = (
            _ input: ECRModel.DeleteRepositoryPolicyRequest) -> EventLoopFuture<ECRModel.DeleteRepositoryPolicyResponse>
    typealias DescribeImageScanFindingsEventLoopFutureAsyncType = (
            _ input: ECRModel.DescribeImageScanFindingsRequest) -> EventLoopFuture<ECRModel.DescribeImageScanFindingsResponse>
    typealias DescribeImagesEventLoopFutureAsyncType = (
            _ input: ECRModel.DescribeImagesRequest) -> EventLoopFuture<ECRModel.DescribeImagesResponse>
    typealias DescribeRegistryEventLoopFutureAsyncType = (
            _ input: ECRModel.DescribeRegistryRequest) -> EventLoopFuture<ECRModel.DescribeRegistryResponse>
    typealias DescribeRepositoriesEventLoopFutureAsyncType = (
            _ input: ECRModel.DescribeRepositoriesRequest) -> EventLoopFuture<ECRModel.DescribeRepositoriesResponse>
    typealias GetAuthorizationTokenEventLoopFutureAsyncType = (
            _ input: ECRModel.GetAuthorizationTokenRequest) -> EventLoopFuture<ECRModel.GetAuthorizationTokenResponse>
    typealias GetDownloadUrlForLayerEventLoopFutureAsyncType = (
            _ input: ECRModel.GetDownloadUrlForLayerRequest) -> EventLoopFuture<ECRModel.GetDownloadUrlForLayerResponse>
    typealias GetLifecyclePolicyEventLoopFutureAsyncType = (
            _ input: ECRModel.GetLifecyclePolicyRequest) -> EventLoopFuture<ECRModel.GetLifecyclePolicyResponse>
    typealias GetLifecyclePolicyPreviewEventLoopFutureAsyncType = (
            _ input: ECRModel.GetLifecyclePolicyPreviewRequest) -> EventLoopFuture<ECRModel.GetLifecyclePolicyPreviewResponse>
    typealias GetRegistryPolicyEventLoopFutureAsyncType = (
            _ input: ECRModel.GetRegistryPolicyRequest) -> EventLoopFuture<ECRModel.GetRegistryPolicyResponse>
    typealias GetRepositoryPolicyEventLoopFutureAsyncType = (
            _ input: ECRModel.GetRepositoryPolicyRequest) -> EventLoopFuture<ECRModel.GetRepositoryPolicyResponse>
    typealias InitiateLayerUploadEventLoopFutureAsyncType = (
            _ input: ECRModel.InitiateLayerUploadRequest) -> EventLoopFuture<ECRModel.InitiateLayerUploadResponse>
    typealias ListImagesEventLoopFutureAsyncType = (
            _ input: ECRModel.ListImagesRequest) -> EventLoopFuture<ECRModel.ListImagesResponse>
    typealias ListTagsForResourceEventLoopFutureAsyncType = (
            _ input: ECRModel.ListTagsForResourceRequest) -> EventLoopFuture<ECRModel.ListTagsForResourceResponse>
    typealias PutImageEventLoopFutureAsyncType = (
            _ input: ECRModel.PutImageRequest) -> EventLoopFuture<ECRModel.PutImageResponse>
    typealias PutImageScanningConfigurationEventLoopFutureAsyncType = (
            _ input: ECRModel.PutImageScanningConfigurationRequest) -> EventLoopFuture<ECRModel.PutImageScanningConfigurationResponse>
    typealias PutImageTagMutabilityEventLoopFutureAsyncType = (
            _ input: ECRModel.PutImageTagMutabilityRequest) -> EventLoopFuture<ECRModel.PutImageTagMutabilityResponse>
    typealias PutLifecyclePolicyEventLoopFutureAsyncType = (
            _ input: ECRModel.PutLifecyclePolicyRequest) -> EventLoopFuture<ECRModel.PutLifecyclePolicyResponse>
    typealias PutRegistryPolicyEventLoopFutureAsyncType = (
            _ input: ECRModel.PutRegistryPolicyRequest) -> EventLoopFuture<ECRModel.PutRegistryPolicyResponse>
    typealias PutReplicationConfigurationEventLoopFutureAsyncType = (
            _ input: ECRModel.PutReplicationConfigurationRequest) -> EventLoopFuture<ECRModel.PutReplicationConfigurationResponse>
    typealias SetRepositoryPolicyEventLoopFutureAsyncType = (
            _ input: ECRModel.SetRepositoryPolicyRequest) -> EventLoopFuture<ECRModel.SetRepositoryPolicyResponse>
    typealias StartImageScanEventLoopFutureAsyncType = (
            _ input: ECRModel.StartImageScanRequest) -> EventLoopFuture<ECRModel.StartImageScanResponse>
    typealias StartLifecyclePolicyPreviewEventLoopFutureAsyncType = (
            _ input: ECRModel.StartLifecyclePolicyPreviewRequest) -> EventLoopFuture<ECRModel.StartLifecyclePolicyPreviewResponse>
    typealias TagResourceEventLoopFutureAsyncType = (
            _ input: ECRModel.TagResourceRequest) -> EventLoopFuture<ECRModel.TagResourceResponse>
    typealias UntagResourceEventLoopFutureAsyncType = (
            _ input: ECRModel.UntagResourceRequest) -> EventLoopFuture<ECRModel.UntagResourceResponse>
    typealias UploadLayerPartEventLoopFutureAsyncType = (
            _ input: ECRModel.UploadLayerPartRequest) -> EventLoopFuture<ECRModel.UploadLayerPartResponse>

    /**
     Invokes the BatchCheckLayerAvailability operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated BatchCheckLayerAvailabilityRequest object being passed to this operation.
     - Returns: A future to the BatchCheckLayerAvailabilityResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, server.
     */
    func batchCheckLayerAvailability(
            input: ECRModel.BatchCheckLayerAvailabilityRequest) -> EventLoopFuture<ECRModel.BatchCheckLayerAvailabilityResponse>

    /**
     Invokes the BatchDeleteImage operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated BatchDeleteImageRequest object being passed to this operation.
     - Returns: A future to the BatchDeleteImageResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, server.
     */
    func batchDeleteImage(
            input: ECRModel.BatchDeleteImageRequest) -> EventLoopFuture<ECRModel.BatchDeleteImageResponse>

    /**
     Invokes the BatchGetImage operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated BatchGetImageRequest object being passed to this operation.
     - Returns: A future to the BatchGetImageResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, server.
     */
    func batchGetImage(
            input: ECRModel.BatchGetImageRequest) -> EventLoopFuture<ECRModel.BatchGetImageResponse>

    /**
     Invokes the CompleteLayerUpload operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CompleteLayerUploadRequest object being passed to this operation.
     - Returns: A future to the CompleteLayerUploadResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: emptyUpload, invalidLayer, invalidParameter, kms, layerAlreadyExists, layerPartTooSmall, repositoryNotFound, server, uploadNotFound.
     */
    func completeLayerUpload(
            input: ECRModel.CompleteLayerUploadRequest) -> EventLoopFuture<ECRModel.CompleteLayerUploadResponse>

    /**
     Invokes the CreateRepository operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateRepositoryRequest object being passed to this operation.
     - Returns: A future to the CreateRepositoryResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, invalidTagParameter, kms, limitExceeded, repositoryAlreadyExists, server, tooManyTags.
     */
    func createRepository(
            input: ECRModel.CreateRepositoryRequest) -> EventLoopFuture<ECRModel.CreateRepositoryResponse>

    /**
     Invokes the DeleteLifecyclePolicy operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteLifecyclePolicyRequest object being passed to this operation.
     - Returns: A future to the DeleteLifecyclePolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, lifecyclePolicyNotFound, repositoryNotFound, server.
     */
    func deleteLifecyclePolicy(
            input: ECRModel.DeleteLifecyclePolicyRequest) -> EventLoopFuture<ECRModel.DeleteLifecyclePolicyResponse>

    /**
     Invokes the DeleteRegistryPolicy operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteRegistryPolicyRequest object being passed to this operation.
     - Returns: A future to the DeleteRegistryPolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, registryPolicyNotFound, server.
     */
    func deleteRegistryPolicy(
            input: ECRModel.DeleteRegistryPolicyRequest) -> EventLoopFuture<ECRModel.DeleteRegistryPolicyResponse>

    /**
     Invokes the DeleteRepository operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteRepositoryRequest object being passed to this operation.
     - Returns: A future to the DeleteRepositoryResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, kms, repositoryNotEmpty, repositoryNotFound, server.
     */
    func deleteRepository(
            input: ECRModel.DeleteRepositoryRequest) -> EventLoopFuture<ECRModel.DeleteRepositoryResponse>

    /**
     Invokes the DeleteRepositoryPolicy operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteRepositoryPolicyRequest object being passed to this operation.
     - Returns: A future to the DeleteRepositoryPolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, repositoryPolicyNotFound, server.
     */
    func deleteRepositoryPolicy(
            input: ECRModel.DeleteRepositoryPolicyRequest) -> EventLoopFuture<ECRModel.DeleteRepositoryPolicyResponse>

    /**
     Invokes the DescribeImageScanFindings operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeImageScanFindingsRequest object being passed to this operation.
     - Returns: A future to the DescribeImageScanFindingsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: imageNotFound, invalidParameter, repositoryNotFound, scanNotFound, server.
     */
    func describeImageScanFindings(
            input: ECRModel.DescribeImageScanFindingsRequest) -> EventLoopFuture<ECRModel.DescribeImageScanFindingsResponse>

    /**
     Invokes the DescribeImages operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeImagesRequest object being passed to this operation.
     - Returns: A future to the DescribeImagesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: imageNotFound, invalidParameter, repositoryNotFound, server.
     */
    func describeImages(
            input: ECRModel.DescribeImagesRequest) -> EventLoopFuture<ECRModel.DescribeImagesResponse>

    /**
     Invokes the DescribeRegistry operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeRegistryRequest object being passed to this operation.
     - Returns: A future to the DescribeRegistryResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, server, validation.
     */
    func describeRegistry(
            input: ECRModel.DescribeRegistryRequest) -> EventLoopFuture<ECRModel.DescribeRegistryResponse>

    /**
     Invokes the DescribeRepositories operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeRepositoriesRequest object being passed to this operation.
     - Returns: A future to the DescribeRepositoriesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, server.
     */
    func describeRepositories(
            input: ECRModel.DescribeRepositoriesRequest) -> EventLoopFuture<ECRModel.DescribeRepositoriesResponse>

    /**
     Invokes the GetAuthorizationToken operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetAuthorizationTokenRequest object being passed to this operation.
     - Returns: A future to the GetAuthorizationTokenResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, server.
     */
    func getAuthorizationToken(
            input: ECRModel.GetAuthorizationTokenRequest) -> EventLoopFuture<ECRModel.GetAuthorizationTokenResponse>

    /**
     Invokes the GetDownloadUrlForLayer operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetDownloadUrlForLayerRequest object being passed to this operation.
     - Returns: A future to the GetDownloadUrlForLayerResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, layerInaccessible, layersNotFound, repositoryNotFound, server.
     */
    func getDownloadUrlForLayer(
            input: ECRModel.GetDownloadUrlForLayerRequest) -> EventLoopFuture<ECRModel.GetDownloadUrlForLayerResponse>

    /**
     Invokes the GetLifecyclePolicy operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetLifecyclePolicyRequest object being passed to this operation.
     - Returns: A future to the GetLifecyclePolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, lifecyclePolicyNotFound, repositoryNotFound, server.
     */
    func getLifecyclePolicy(
            input: ECRModel.GetLifecyclePolicyRequest) -> EventLoopFuture<ECRModel.GetLifecyclePolicyResponse>

    /**
     Invokes the GetLifecyclePolicyPreview operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetLifecyclePolicyPreviewRequest object being passed to this operation.
     - Returns: A future to the GetLifecyclePolicyPreviewResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, lifecyclePolicyPreviewNotFound, repositoryNotFound, server.
     */
    func getLifecyclePolicyPreview(
            input: ECRModel.GetLifecyclePolicyPreviewRequest) -> EventLoopFuture<ECRModel.GetLifecyclePolicyPreviewResponse>

    /**
     Invokes the GetRegistryPolicy operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetRegistryPolicyRequest object being passed to this operation.
     - Returns: A future to the GetRegistryPolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, registryPolicyNotFound, server.
     */
    func getRegistryPolicy(
            input: ECRModel.GetRegistryPolicyRequest) -> EventLoopFuture<ECRModel.GetRegistryPolicyResponse>

    /**
     Invokes the GetRepositoryPolicy operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetRepositoryPolicyRequest object being passed to this operation.
     - Returns: A future to the GetRepositoryPolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, repositoryPolicyNotFound, server.
     */
    func getRepositoryPolicy(
            input: ECRModel.GetRepositoryPolicyRequest) -> EventLoopFuture<ECRModel.GetRepositoryPolicyResponse>

    /**
     Invokes the InitiateLayerUpload operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated InitiateLayerUploadRequest object being passed to this operation.
     - Returns: A future to the InitiateLayerUploadResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, kms, repositoryNotFound, server.
     */
    func initiateLayerUpload(
            input: ECRModel.InitiateLayerUploadRequest) -> EventLoopFuture<ECRModel.InitiateLayerUploadResponse>

    /**
     Invokes the ListImages operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListImagesRequest object being passed to this operation.
     - Returns: A future to the ListImagesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, server.
     */
    func listImages(
            input: ECRModel.ListImagesRequest) -> EventLoopFuture<ECRModel.ListImagesResponse>

    /**
     Invokes the ListTagsForResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
     - Returns: A future to the ListTagsForResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, server.
     */
    func listTagsForResource(
            input: ECRModel.ListTagsForResourceRequest) -> EventLoopFuture<ECRModel.ListTagsForResourceResponse>

    /**
     Invokes the PutImage operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutImageRequest object being passed to this operation.
     - Returns: A future to the PutImageResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: imageAlreadyExists, imageDigestDoesNotMatch, imageTagAlreadyExists, invalidParameter, kms, layersNotFound, limitExceeded, referencedImagesNotFound, repositoryNotFound, server.
     */
    func putImage(
            input: ECRModel.PutImageRequest) -> EventLoopFuture<ECRModel.PutImageResponse>

    /**
     Invokes the PutImageScanningConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutImageScanningConfigurationRequest object being passed to this operation.
     - Returns: A future to the PutImageScanningConfigurationResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, server.
     */
    func putImageScanningConfiguration(
            input: ECRModel.PutImageScanningConfigurationRequest) -> EventLoopFuture<ECRModel.PutImageScanningConfigurationResponse>

    /**
     Invokes the PutImageTagMutability operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutImageTagMutabilityRequest object being passed to this operation.
     - Returns: A future to the PutImageTagMutabilityResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, server.
     */
    func putImageTagMutability(
            input: ECRModel.PutImageTagMutabilityRequest) -> EventLoopFuture<ECRModel.PutImageTagMutabilityResponse>

    /**
     Invokes the PutLifecyclePolicy operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutLifecyclePolicyRequest object being passed to this operation.
     - Returns: A future to the PutLifecyclePolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, server.
     */
    func putLifecyclePolicy(
            input: ECRModel.PutLifecyclePolicyRequest) -> EventLoopFuture<ECRModel.PutLifecyclePolicyResponse>

    /**
     Invokes the PutRegistryPolicy operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutRegistryPolicyRequest object being passed to this operation.
     - Returns: A future to the PutRegistryPolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, server.
     */
    func putRegistryPolicy(
            input: ECRModel.PutRegistryPolicyRequest) -> EventLoopFuture<ECRModel.PutRegistryPolicyResponse>

    /**
     Invokes the PutReplicationConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutReplicationConfigurationRequest object being passed to this operation.
     - Returns: A future to the PutReplicationConfigurationResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, server, validation.
     */
    func putReplicationConfiguration(
            input: ECRModel.PutReplicationConfigurationRequest) -> EventLoopFuture<ECRModel.PutReplicationConfigurationResponse>

    /**
     Invokes the SetRepositoryPolicy operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SetRepositoryPolicyRequest object being passed to this operation.
     - Returns: A future to the SetRepositoryPolicyResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, server.
     */
    func setRepositoryPolicy(
            input: ECRModel.SetRepositoryPolicyRequest) -> EventLoopFuture<ECRModel.SetRepositoryPolicyResponse>

    /**
     Invokes the StartImageScan operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated StartImageScanRequest object being passed to this operation.
     - Returns: A future to the StartImageScanResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: imageNotFound, invalidParameter, limitExceeded, repositoryNotFound, server, unsupportedImageType.
     */
    func startImageScan(
            input: ECRModel.StartImageScanRequest) -> EventLoopFuture<ECRModel.StartImageScanResponse>

    /**
     Invokes the StartLifecyclePolicyPreview operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated StartLifecyclePolicyPreviewRequest object being passed to this operation.
     - Returns: A future to the StartLifecyclePolicyPreviewResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, lifecyclePolicyNotFound, lifecyclePolicyPreviewInProgress, repositoryNotFound, server.
     */
    func startLifecyclePolicyPreview(
            input: ECRModel.StartLifecyclePolicyPreviewRequest) -> EventLoopFuture<ECRModel.StartLifecyclePolicyPreviewResponse>

    /**
     Invokes the TagResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
     - Returns: A future to the TagResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, invalidTagParameter, repositoryNotFound, server, tooManyTags.
     */
    func tagResource(
            input: ECRModel.TagResourceRequest) -> EventLoopFuture<ECRModel.TagResourceResponse>

    /**
     Invokes the UntagResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UntagResourceRequest object being passed to this operation.
     - Returns: A future to the UntagResourceResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, invalidTagParameter, repositoryNotFound, server, tooManyTags.
     */
    func untagResource(
            input: ECRModel.UntagResourceRequest) -> EventLoopFuture<ECRModel.UntagResourceResponse>

    /**
     Invokes the UploadLayerPart operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UploadLayerPartRequest object being passed to this operation.
     - Returns: A future to the UploadLayerPartResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidLayerPart, invalidParameter, kms, limitExceeded, repositoryNotFound, server, uploadNotFound.
     */
    func uploadLayerPart(
            input: ECRModel.UploadLayerPartRequest) -> EventLoopFuture<ECRModel.UploadLayerPartResponse>
}
