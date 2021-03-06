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
// AWSECRClient.swift
// ECRClient
//

import Foundation
import ECRModel
import SmokeAWSCore
import SmokeHTTPClient
import NIO
import SmokeAWSHttp
import NIO
import NIOHTTP1
import AsyncHTTPClient
import Logging

public enum ECRClientError: Swift.Error {
    case invalidEndpoint(String)
    case unsupportedPayload
    case unknownError(String?)
}

 extension ECRError: ConvertableError {
    public static func asUnrecognizedError(error: Swift.Error) -> ECRError {
        return error.asUnrecognizedECRError()
    }
}

/**
 AWS Client for the ECR service.
 */
public struct AWSECRClient<InvocationReportingType: HTTPClientCoreInvocationReporting>: ECRClientProtocol, AWSClientProtocol {
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

    let operationsReporting: ECROperationsReporting
    let invocationsReporting: ECRInvocationsReporting<InvocationReportingType>
    
    public init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                reporting: InvocationReportingType,
                endpointHostName: String,
                endpointPort: Int = 443,
                requiresTLS: Bool? = nil,
                service: String = "ecr",
                contentType: String = "application/x-amz-json-1.1",
                target: String? = "AmazonEC2ContainerRegistry_V20150921",
                connectionTimeoutSeconds: Int64 = 10,
                retryConfiguration: HTTPClientRetryConfiguration = .default,
                eventLoopProvider: HTTPClient.EventLoopGroupProvider = .createNew,
                reportingConfiguration: SmokeAWSClientReportingConfiguration<ECRModelOperations>
                    = SmokeAWSClientReportingConfiguration<ECRModelOperations>() ) {
        self.eventLoopGroup = AWSClientHelper.getEventLoop(eventLoopGroupProvider: eventLoopProvider)
        let useTLS = requiresTLS ?? AWSHTTPClientDelegate.requiresTLS(forEndpointPort: endpointPort)
        let clientDelegate = JSONAWSHttpClientDelegate<ECRError>(requiresTLS: useTLS)

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
        self.operationsReporting = ECROperationsReporting(clientName: "AWSECRClient", reportingConfiguration: reportingConfiguration)
        self.invocationsReporting = ECRInvocationsReporting(reporting: reporting, operationsReporting: self.operationsReporting)
    }
    
    internal init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                reporting: InvocationReportingType,
                httpClient: HTTPOperationsClient,
                service: String,
                target: String?,
                eventLoopGroup: EventLoopGroup,
                retryOnErrorProvider: @escaping (SmokeHTTPClient.HTTPClientError) -> Bool,
                retryConfiguration: HTTPClientRetryConfiguration,
                operationsReporting: ECROperationsReporting) {
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
        self.invocationsReporting = ECRInvocationsReporting(reporting: reporting, operationsReporting: self.operationsReporting)
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
     Invokes the BatchCheckLayerAvailability operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated BatchCheckLayerAvailabilityRequest object being passed to this operation.
     - Returns: A future to the BatchCheckLayerAvailabilityResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameter, repositoryNotFound, server.
     */
    public func batchCheckLayerAvailability(
            input: ECRModel.BatchCheckLayerAvailabilityRequest) -> EventLoopFuture<ECRModel.BatchCheckLayerAvailabilityResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: BatchCheckLayerAvailabilityOperationHTTPRequestInput(encodable: input),
                                 operation: ECRModelOperations.batchCheckLayerAvailability.rawValue,
                                 reporting: self.invocationsReporting.batchCheckLayerAvailability,
                                 errorType: ECRError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: BatchDeleteImageOperationHTTPRequestInput(encodable: input),
                                 operation: ECRModelOperations.batchDeleteImage.rawValue,
                                 reporting: self.invocationsReporting.batchDeleteImage,
                                 errorType: ECRError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: BatchGetImageOperationHTTPRequestInput(encodable: input),
                                 operation: ECRModelOperations.batchGetImage.rawValue,
                                 reporting: self.invocationsReporting.batchGetImage,
                                 errorType: ECRError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: CompleteLayerUploadOperationHTTPRequestInput(encodable: input),
                                 operation: ECRModelOperations.completeLayerUpload.rawValue,
                                 reporting: self.invocationsReporting.completeLayerUpload,
                                 errorType: ECRError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: CreateRepositoryOperationHTTPRequestInput(encodable: input),
                                 operation: ECRModelOperations.createRepository.rawValue,
                                 reporting: self.invocationsReporting.createRepository,
                                 errorType: ECRError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: DeleteLifecyclePolicyOperationHTTPRequestInput(encodable: input),
                                 operation: ECRModelOperations.deleteLifecyclePolicy.rawValue,
                                 reporting: self.invocationsReporting.deleteLifecyclePolicy,
                                 errorType: ECRError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: DeleteRegistryPolicyOperationHTTPRequestInput(encodable: input),
                                 operation: ECRModelOperations.deleteRegistryPolicy.rawValue,
                                 reporting: self.invocationsReporting.deleteRegistryPolicy,
                                 errorType: ECRError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: DeleteRepositoryOperationHTTPRequestInput(encodable: input),
                                 operation: ECRModelOperations.deleteRepository.rawValue,
                                 reporting: self.invocationsReporting.deleteRepository,
                                 errorType: ECRError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: DeleteRepositoryPolicyOperationHTTPRequestInput(encodable: input),
                                 operation: ECRModelOperations.deleteRepositoryPolicy.rawValue,
                                 reporting: self.invocationsReporting.deleteRepositoryPolicy,
                                 errorType: ECRError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: DescribeImageScanFindingsOperationHTTPRequestInput(encodable: input),
                                 operation: ECRModelOperations.describeImageScanFindings.rawValue,
                                 reporting: self.invocationsReporting.describeImageScanFindings,
                                 errorType: ECRError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: DescribeImagesOperationHTTPRequestInput(encodable: input),
                                 operation: ECRModelOperations.describeImages.rawValue,
                                 reporting: self.invocationsReporting.describeImages,
                                 errorType: ECRError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: DescribeRegistryOperationHTTPRequestInput(encodable: input),
                                 operation: ECRModelOperations.describeRegistry.rawValue,
                                 reporting: self.invocationsReporting.describeRegistry,
                                 errorType: ECRError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: DescribeRepositoriesOperationHTTPRequestInput(encodable: input),
                                 operation: ECRModelOperations.describeRepositories.rawValue,
                                 reporting: self.invocationsReporting.describeRepositories,
                                 errorType: ECRError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: GetAuthorizationTokenOperationHTTPRequestInput(encodable: input),
                                 operation: ECRModelOperations.getAuthorizationToken.rawValue,
                                 reporting: self.invocationsReporting.getAuthorizationToken,
                                 errorType: ECRError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: GetDownloadUrlForLayerOperationHTTPRequestInput(encodable: input),
                                 operation: ECRModelOperations.getDownloadUrlForLayer.rawValue,
                                 reporting: self.invocationsReporting.getDownloadUrlForLayer,
                                 errorType: ECRError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: GetLifecyclePolicyOperationHTTPRequestInput(encodable: input),
                                 operation: ECRModelOperations.getLifecyclePolicy.rawValue,
                                 reporting: self.invocationsReporting.getLifecyclePolicy,
                                 errorType: ECRError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: GetLifecyclePolicyPreviewOperationHTTPRequestInput(encodable: input),
                                 operation: ECRModelOperations.getLifecyclePolicyPreview.rawValue,
                                 reporting: self.invocationsReporting.getLifecyclePolicyPreview,
                                 errorType: ECRError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: GetRegistryPolicyOperationHTTPRequestInput(encodable: input),
                                 operation: ECRModelOperations.getRegistryPolicy.rawValue,
                                 reporting: self.invocationsReporting.getRegistryPolicy,
                                 errorType: ECRError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: GetRepositoryPolicyOperationHTTPRequestInput(encodable: input),
                                 operation: ECRModelOperations.getRepositoryPolicy.rawValue,
                                 reporting: self.invocationsReporting.getRepositoryPolicy,
                                 errorType: ECRError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: InitiateLayerUploadOperationHTTPRequestInput(encodable: input),
                                 operation: ECRModelOperations.initiateLayerUpload.rawValue,
                                 reporting: self.invocationsReporting.initiateLayerUpload,
                                 errorType: ECRError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: ListImagesOperationHTTPRequestInput(encodable: input),
                                 operation: ECRModelOperations.listImages.rawValue,
                                 reporting: self.invocationsReporting.listImages,
                                 errorType: ECRError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: ListTagsForResourceOperationHTTPRequestInput(encodable: input),
                                 operation: ECRModelOperations.listTagsForResource.rawValue,
                                 reporting: self.invocationsReporting.listTagsForResource,
                                 errorType: ECRError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: PutImageOperationHTTPRequestInput(encodable: input),
                                 operation: ECRModelOperations.putImage.rawValue,
                                 reporting: self.invocationsReporting.putImage,
                                 errorType: ECRError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: PutImageScanningConfigurationOperationHTTPRequestInput(encodable: input),
                                 operation: ECRModelOperations.putImageScanningConfiguration.rawValue,
                                 reporting: self.invocationsReporting.putImageScanningConfiguration,
                                 errorType: ECRError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: PutImageTagMutabilityOperationHTTPRequestInput(encodable: input),
                                 operation: ECRModelOperations.putImageTagMutability.rawValue,
                                 reporting: self.invocationsReporting.putImageTagMutability,
                                 errorType: ECRError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: PutLifecyclePolicyOperationHTTPRequestInput(encodable: input),
                                 operation: ECRModelOperations.putLifecyclePolicy.rawValue,
                                 reporting: self.invocationsReporting.putLifecyclePolicy,
                                 errorType: ECRError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: PutRegistryPolicyOperationHTTPRequestInput(encodable: input),
                                 operation: ECRModelOperations.putRegistryPolicy.rawValue,
                                 reporting: self.invocationsReporting.putRegistryPolicy,
                                 errorType: ECRError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: PutReplicationConfigurationOperationHTTPRequestInput(encodable: input),
                                 operation: ECRModelOperations.putReplicationConfiguration.rawValue,
                                 reporting: self.invocationsReporting.putReplicationConfiguration,
                                 errorType: ECRError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: SetRepositoryPolicyOperationHTTPRequestInput(encodable: input),
                                 operation: ECRModelOperations.setRepositoryPolicy.rawValue,
                                 reporting: self.invocationsReporting.setRepositoryPolicy,
                                 errorType: ECRError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: StartImageScanOperationHTTPRequestInput(encodable: input),
                                 operation: ECRModelOperations.startImageScan.rawValue,
                                 reporting: self.invocationsReporting.startImageScan,
                                 errorType: ECRError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: StartLifecyclePolicyPreviewOperationHTTPRequestInput(encodable: input),
                                 operation: ECRModelOperations.startLifecyclePolicyPreview.rawValue,
                                 reporting: self.invocationsReporting.startLifecyclePolicyPreview,
                                 errorType: ECRError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: TagResourceOperationHTTPRequestInput(encodable: input),
                                 operation: ECRModelOperations.tagResource.rawValue,
                                 reporting: self.invocationsReporting.tagResource,
                                 errorType: ECRError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: UntagResourceOperationHTTPRequestInput(encodable: input),
                                 operation: ECRModelOperations.untagResource.rawValue,
                                 reporting: self.invocationsReporting.untagResource,
                                 errorType: ECRError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: UploadLayerPartOperationHTTPRequestInput(encodable: input),
                                 operation: ECRModelOperations.uploadLayerPart.rawValue,
                                 reporting: self.invocationsReporting.uploadLayerPart,
                                 errorType: ECRError.self)
    }
}
