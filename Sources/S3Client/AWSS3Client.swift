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
// AWSS3Client.swift
// S3Client
//

import Foundation
import S3Model
import SmokeAWSCore
import SmokeHTTPClient
import NIO
import SmokeAWSHttp
import NIO
import NIOHTTP1
import AsyncHTTPClient
import Logging

public enum S3ClientError: Swift.Error {
    case invalidEndpoint(String)
    case unsupportedPayload
    case unknownError(String?)
}

 extension S3Error: ConvertableError {
    public static func asUnrecognizedError(error: Swift.Error) -> S3Error {
        return error.asUnrecognizedS3Error()
    }
}

/**
 AWS Client for the S3 service.
 */
public struct AWSS3Client<InvocationReportingType: HTTPClientCoreInvocationReporting>: S3ClientProtocol, AWSClientProtocol {
    let httpClient: HTTPOperationsClient
    let dataHttpClient: HTTPOperationsClient
    let ownsHttpClients: Bool
    public let awsRegion: AWSRegion
    public let service: String
    public let target: String?
    public let retryConfiguration: HTTPClientRetryConfiguration
    public let retryOnErrorProvider: (SmokeHTTPClient.HTTPClientError) -> Bool
    public let credentialsProvider: CredentialsProvider
    
    public let eventLoopProvider: HTTPClient.EventLoopGroupProvider
    public let reporting: InvocationReportingType

    let operationsReporting: S3OperationsReporting
    let invocationsReporting: S3InvocationsReporting<InvocationReportingType>
    
    public init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion? = nil,
                reporting: InvocationReportingType,
                endpointHostName: String = "s3.amazonaws.com",
                endpointPort: Int = 443,
                requiresTLS: Bool? = nil,
                service: String = "s3",
                contentType: String = "application/x-amz-rest-xml",
                target: String? = nil,
                connectionTimeoutSeconds: Int64 = 10,
                retryConfiguration: HTTPClientRetryConfiguration = .default,
                eventLoopProvider: HTTPClient.EventLoopGroupProvider = .createNew,
                reportingConfiguration: SmokeAWSClientReportingConfiguration<S3ModelOperations>
                    = SmokeAWSClientReportingConfiguration<S3ModelOperations>() ) {
        let useTLS = requiresTLS ?? AWSHTTPClientDelegate.requiresTLS(forEndpointPort: endpointPort)
        let clientDelegate = XMLAWSHttpClientDelegate<S3Error>(requiresTLS: useTLS)

        let clientDelegateForDataHttpClient = DataAWSHttpClientDelegate<S3Error>(requiresTLS: useTLS)

        self.httpClient = HTTPOperationsClient(
            endpointHostName: endpointHostName,
            endpointPort: endpointPort,
            contentType: contentType,
            clientDelegate: clientDelegate,
            connectionTimeoutSeconds: connectionTimeoutSeconds,
            eventLoopProvider: eventLoopProvider)
        self.dataHttpClient = HTTPOperationsClient(
            endpointHostName: endpointHostName,
            endpointPort: endpointPort,
            contentType: contentType,
            clientDelegate: clientDelegateForDataHttpClient,
            connectionTimeoutSeconds: connectionTimeoutSeconds,
            eventLoopProvider: eventLoopProvider)
        self.ownsHttpClients = true
        self.awsRegion = awsRegion ?? .us_east_1
        self.service = service
        self.target = target
        self.credentialsProvider = credentialsProvider
        self.eventLoopProvider = eventLoopProvider
        self.retryConfiguration = retryConfiguration
        self.reporting = reporting
        self.retryOnErrorProvider = { error in error.isRetriable() }
        self.operationsReporting = S3OperationsReporting(clientName: "AWSS3Client", reportingConfiguration: reportingConfiguration)
        self.invocationsReporting = S3InvocationsReporting(reporting: reporting, operationsReporting: self.operationsReporting)
    }
    
    internal init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion? = nil,
                reporting: InvocationReportingType,
                httpClient: HTTPOperationsClient, dataHttpClient: HTTPOperationsClient,
                service: String,
                target: String?,
                eventLoopProvider: HTTPClient.EventLoopGroupProvider,
                retryOnErrorProvider: @escaping (SmokeHTTPClient.HTTPClientError) -> Bool,
                retryConfiguration: HTTPClientRetryConfiguration,
                operationsReporting: S3OperationsReporting) {
        self.httpClient = httpClient
        self.dataHttpClient = dataHttpClient
        self.ownsHttpClients = false
        self.awsRegion = awsRegion ?? .us_east_1
        self.service = service
        self.target = target
        self.credentialsProvider = credentialsProvider
        self.eventLoopProvider = eventLoopProvider
        self.retryConfiguration = retryConfiguration
        self.reporting = reporting
        self.retryOnErrorProvider = retryOnErrorProvider
        self.operationsReporting = operationsReporting
        self.invocationsReporting = S3InvocationsReporting(reporting: reporting, operationsReporting: self.operationsReporting)
    }

    /**
     Gracefully shuts down this client. This function is idempotent and
     will handle being called multiple times.
     */
    public func close() throws {
        if self.ownsHttpClients {
            try httpClient.close()
            try dataHttpClient.close()
        }
    }

    /**
     Invokes the AbortMultipartUpload operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AbortMultipartUploadRequest object being passed to this operation.
     - Returns: A future to the AbortMultipartUploadOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: noSuchUpload.
     */
    public func abortMultipartUpload(
            input: S3Model.AbortMultipartUploadRequest) -> EventLoopFuture<S3Model.AbortMultipartUploadOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: AbortMultipartUploadOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.abortMultipartUpload.rawValue,
                                 reporting: self.invocationsReporting.abortMultipartUpload)
    }

    /**
     Invokes the CompleteMultipartUpload operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CompleteMultipartUploadRequest object being passed to this operation.
     - Returns: A future to the CompleteMultipartUploadOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func completeMultipartUpload(
            input: S3Model.CompleteMultipartUploadRequest) -> EventLoopFuture<S3Model.CompleteMultipartUploadOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: CompleteMultipartUploadOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.completeMultipartUpload.rawValue,
                                 reporting: self.invocationsReporting.completeMultipartUpload)
    }

    /**
     Invokes the CopyObject operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CopyObjectRequest object being passed to this operation.
     - Returns: A future to the CopyObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: objectNotInActiveTier.
     */
    public func copyObject(
            input: S3Model.CopyObjectRequest) -> EventLoopFuture<S3Model.CopyObjectOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: CopyObjectOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.copyObject.rawValue,
                                 reporting: self.invocationsReporting.copyObject)
    }

    /**
     Invokes the CreateBucket operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateBucketRequest object being passed to this operation.
     - Returns: A future to the CreateBucketOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: bucketAlreadyExists, bucketAlreadyOwnedByYou.
     */
    public func createBucket(
            input: S3Model.CreateBucketRequest) -> EventLoopFuture<S3Model.CreateBucketOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: CreateBucketOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.createBucket.rawValue,
                                 reporting: self.invocationsReporting.createBucket)
    }

    /**
     Invokes the CreateMultipartUpload operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateMultipartUploadRequest object being passed to this operation.
     - Returns: A future to the CreateMultipartUploadOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createMultipartUpload(
            input: S3Model.CreateMultipartUploadRequest) -> EventLoopFuture<S3Model.CreateMultipartUploadOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: CreateMultipartUploadOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.createMultipartUpload.rawValue,
                                 reporting: self.invocationsReporting.createMultipartUpload)
    }

    /**
     Invokes the DeleteBucket operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteBucketRequest object being passed to this operation.
     */
    public func deleteBucket(
            input: S3Model.DeleteBucketRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: DeleteBucketOperationHTTPRequestInput(encodable: input),
                                    operation: S3ModelOperations.deleteBucket.rawValue,
                                    reporting: self.invocationsReporting.deleteBucket)
    }

    /**
     Invokes the DeleteBucketAnalyticsConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteBucketAnalyticsConfigurationRequest object being passed to this operation.
     */
    public func deleteBucketAnalyticsConfiguration(
            input: S3Model.DeleteBucketAnalyticsConfigurationRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: DeleteBucketAnalyticsConfigurationOperationHTTPRequestInput(encodable: input),
                                    operation: S3ModelOperations.deleteBucketAnalyticsConfiguration.rawValue,
                                    reporting: self.invocationsReporting.deleteBucketAnalyticsConfiguration)
    }

    /**
     Invokes the DeleteBucketCors operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteBucketCorsRequest object being passed to this operation.
     */
    public func deleteBucketCors(
            input: S3Model.DeleteBucketCorsRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: DeleteBucketCorsOperationHTTPRequestInput(encodable: input),
                                    operation: S3ModelOperations.deleteBucketCors.rawValue,
                                    reporting: self.invocationsReporting.deleteBucketCors)
    }

    /**
     Invokes the DeleteBucketEncryption operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteBucketEncryptionRequest object being passed to this operation.
     */
    public func deleteBucketEncryption(
            input: S3Model.DeleteBucketEncryptionRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: DeleteBucketEncryptionOperationHTTPRequestInput(encodable: input),
                                    operation: S3ModelOperations.deleteBucketEncryption.rawValue,
                                    reporting: self.invocationsReporting.deleteBucketEncryption)
    }

    /**
     Invokes the DeleteBucketIntelligentTieringConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteBucketIntelligentTieringConfigurationRequest object being passed to this operation.
     */
    public func deleteBucketIntelligentTieringConfiguration(
            input: S3Model.DeleteBucketIntelligentTieringConfigurationRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: DeleteBucketIntelligentTieringConfigurationOperationHTTPRequestInput(encodable: input),
                                    operation: S3ModelOperations.deleteBucketIntelligentTieringConfiguration.rawValue,
                                    reporting: self.invocationsReporting.deleteBucketIntelligentTieringConfiguration)
    }

    /**
     Invokes the DeleteBucketInventoryConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteBucketInventoryConfigurationRequest object being passed to this operation.
     */
    public func deleteBucketInventoryConfiguration(
            input: S3Model.DeleteBucketInventoryConfigurationRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: DeleteBucketInventoryConfigurationOperationHTTPRequestInput(encodable: input),
                                    operation: S3ModelOperations.deleteBucketInventoryConfiguration.rawValue,
                                    reporting: self.invocationsReporting.deleteBucketInventoryConfiguration)
    }

    /**
     Invokes the DeleteBucketLifecycle operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteBucketLifecycleRequest object being passed to this operation.
     */
    public func deleteBucketLifecycle(
            input: S3Model.DeleteBucketLifecycleRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: DeleteBucketLifecycleOperationHTTPRequestInput(encodable: input),
                                    operation: S3ModelOperations.deleteBucketLifecycle.rawValue,
                                    reporting: self.invocationsReporting.deleteBucketLifecycle)
    }

    /**
     Invokes the DeleteBucketMetricsConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteBucketMetricsConfigurationRequest object being passed to this operation.
     */
    public func deleteBucketMetricsConfiguration(
            input: S3Model.DeleteBucketMetricsConfigurationRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: DeleteBucketMetricsConfigurationOperationHTTPRequestInput(encodable: input),
                                    operation: S3ModelOperations.deleteBucketMetricsConfiguration.rawValue,
                                    reporting: self.invocationsReporting.deleteBucketMetricsConfiguration)
    }

    /**
     Invokes the DeleteBucketOwnershipControls operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteBucketOwnershipControlsRequest object being passed to this operation.
     */
    public func deleteBucketOwnershipControls(
            input: S3Model.DeleteBucketOwnershipControlsRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: DeleteBucketOwnershipControlsOperationHTTPRequestInput(encodable: input),
                                    operation: S3ModelOperations.deleteBucketOwnershipControls.rawValue,
                                    reporting: self.invocationsReporting.deleteBucketOwnershipControls)
    }

    /**
     Invokes the DeleteBucketPolicy operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteBucketPolicyRequest object being passed to this operation.
     */
    public func deleteBucketPolicy(
            input: S3Model.DeleteBucketPolicyRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: DeleteBucketPolicyOperationHTTPRequestInput(encodable: input),
                                    operation: S3ModelOperations.deleteBucketPolicy.rawValue,
                                    reporting: self.invocationsReporting.deleteBucketPolicy)
    }

    /**
     Invokes the DeleteBucketReplication operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteBucketReplicationRequest object being passed to this operation.
     */
    public func deleteBucketReplication(
            input: S3Model.DeleteBucketReplicationRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: DeleteBucketReplicationOperationHTTPRequestInput(encodable: input),
                                    operation: S3ModelOperations.deleteBucketReplication.rawValue,
                                    reporting: self.invocationsReporting.deleteBucketReplication)
    }

    /**
     Invokes the DeleteBucketTagging operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteBucketTaggingRequest object being passed to this operation.
     */
    public func deleteBucketTagging(
            input: S3Model.DeleteBucketTaggingRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: DeleteBucketTaggingOperationHTTPRequestInput(encodable: input),
                                    operation: S3ModelOperations.deleteBucketTagging.rawValue,
                                    reporting: self.invocationsReporting.deleteBucketTagging)
    }

    /**
     Invokes the DeleteBucketWebsite operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteBucketWebsiteRequest object being passed to this operation.
     */
    public func deleteBucketWebsite(
            input: S3Model.DeleteBucketWebsiteRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: DeleteBucketWebsiteOperationHTTPRequestInput(encodable: input),
                                    operation: S3ModelOperations.deleteBucketWebsite.rawValue,
                                    reporting: self.invocationsReporting.deleteBucketWebsite)
    }

    /**
     Invokes the DeleteObject operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteObjectRequest object being passed to this operation.
     - Returns: A future to the DeleteObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteObject(
            input: S3Model.DeleteObjectRequest) -> EventLoopFuture<S3Model.DeleteObjectOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: DeleteObjectOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.deleteObject.rawValue,
                                 reporting: self.invocationsReporting.deleteObject)
    }

    /**
     Invokes the DeleteObjectTagging operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteObjectTaggingRequest object being passed to this operation.
     - Returns: A future to the DeleteObjectTaggingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteObjectTagging(
            input: S3Model.DeleteObjectTaggingRequest) -> EventLoopFuture<S3Model.DeleteObjectTaggingOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: DeleteObjectTaggingOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.deleteObjectTagging.rawValue,
                                 reporting: self.invocationsReporting.deleteObjectTagging)
    }

    /**
     Invokes the DeleteObjects operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteObjectsRequest object being passed to this operation.
     - Returns: A future to the DeleteObjectsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteObjects(
            input: S3Model.DeleteObjectsRequest) -> EventLoopFuture<S3Model.DeleteObjectsOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: DeleteObjectsOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.deleteObjects.rawValue,
                                 reporting: self.invocationsReporting.deleteObjects)
    }

    /**
     Invokes the DeletePublicAccessBlock operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeletePublicAccessBlockRequest object being passed to this operation.
     */
    public func deletePublicAccessBlock(
            input: S3Model.DeletePublicAccessBlockRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: DeletePublicAccessBlockOperationHTTPRequestInput(encodable: input),
                                    operation: S3ModelOperations.deletePublicAccessBlock.rawValue,
                                    reporting: self.invocationsReporting.deletePublicAccessBlock)
    }

    /**
     Invokes the GetBucketAccelerateConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetBucketAccelerateConfigurationRequest object being passed to this operation.
     - Returns: A future to the GetBucketAccelerateConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketAccelerateConfiguration(
            input: S3Model.GetBucketAccelerateConfigurationRequest) -> EventLoopFuture<S3Model.GetBucketAccelerateConfigurationOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: GetBucketAccelerateConfigurationOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.getBucketAccelerateConfiguration.rawValue,
                                 reporting: self.invocationsReporting.getBucketAccelerateConfiguration)
    }

    /**
     Invokes the GetBucketAcl operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetBucketAclRequest object being passed to this operation.
     - Returns: A future to the GetBucketAclOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketAcl(
            input: S3Model.GetBucketAclRequest) -> EventLoopFuture<S3Model.GetBucketAclOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: GetBucketAclOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.getBucketAcl.rawValue,
                                 reporting: self.invocationsReporting.getBucketAcl)
    }

    /**
     Invokes the GetBucketAnalyticsConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetBucketAnalyticsConfigurationRequest object being passed to this operation.
     - Returns: A future to the GetBucketAnalyticsConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketAnalyticsConfiguration(
            input: S3Model.GetBucketAnalyticsConfigurationRequest) -> EventLoopFuture<S3Model.GetBucketAnalyticsConfigurationOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: GetBucketAnalyticsConfigurationOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.getBucketAnalyticsConfiguration.rawValue,
                                 reporting: self.invocationsReporting.getBucketAnalyticsConfiguration)
    }

    /**
     Invokes the GetBucketCors operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetBucketCorsRequest object being passed to this operation.
     - Returns: A future to the GetBucketCorsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketCors(
            input: S3Model.GetBucketCorsRequest) -> EventLoopFuture<S3Model.GetBucketCorsOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: GetBucketCorsOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.getBucketCors.rawValue,
                                 reporting: self.invocationsReporting.getBucketCors)
    }

    /**
     Invokes the GetBucketEncryption operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetBucketEncryptionRequest object being passed to this operation.
     - Returns: A future to the GetBucketEncryptionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketEncryption(
            input: S3Model.GetBucketEncryptionRequest) -> EventLoopFuture<S3Model.GetBucketEncryptionOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: GetBucketEncryptionOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.getBucketEncryption.rawValue,
                                 reporting: self.invocationsReporting.getBucketEncryption)
    }

    /**
     Invokes the GetBucketIntelligentTieringConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetBucketIntelligentTieringConfigurationRequest object being passed to this operation.
     - Returns: A future to the GetBucketIntelligentTieringConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketIntelligentTieringConfiguration(
            input: S3Model.GetBucketIntelligentTieringConfigurationRequest) -> EventLoopFuture<S3Model.GetBucketIntelligentTieringConfigurationOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: GetBucketIntelligentTieringConfigurationOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.getBucketIntelligentTieringConfiguration.rawValue,
                                 reporting: self.invocationsReporting.getBucketIntelligentTieringConfiguration)
    }

    /**
     Invokes the GetBucketInventoryConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetBucketInventoryConfigurationRequest object being passed to this operation.
     - Returns: A future to the GetBucketInventoryConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketInventoryConfiguration(
            input: S3Model.GetBucketInventoryConfigurationRequest) -> EventLoopFuture<S3Model.GetBucketInventoryConfigurationOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: GetBucketInventoryConfigurationOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.getBucketInventoryConfiguration.rawValue,
                                 reporting: self.invocationsReporting.getBucketInventoryConfiguration)
    }

    /**
     Invokes the GetBucketLifecycle operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetBucketLifecycleRequest object being passed to this operation.
     - Returns: A future to the GetBucketLifecycleOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketLifecycle(
            input: S3Model.GetBucketLifecycleRequest) -> EventLoopFuture<S3Model.GetBucketLifecycleOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: GetBucketLifecycleOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.getBucketLifecycle.rawValue,
                                 reporting: self.invocationsReporting.getBucketLifecycle)
    }

    /**
     Invokes the GetBucketLifecycleConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetBucketLifecycleConfigurationRequest object being passed to this operation.
     - Returns: A future to the GetBucketLifecycleConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketLifecycleConfiguration(
            input: S3Model.GetBucketLifecycleConfigurationRequest) -> EventLoopFuture<S3Model.GetBucketLifecycleConfigurationOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: GetBucketLifecycleConfigurationOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.getBucketLifecycleConfiguration.rawValue,
                                 reporting: self.invocationsReporting.getBucketLifecycleConfiguration)
    }

    /**
     Invokes the GetBucketLocation operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetBucketLocationRequest object being passed to this operation.
     - Returns: A future to the GetBucketLocationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketLocation(
            input: S3Model.GetBucketLocationRequest) -> EventLoopFuture<S3Model.GetBucketLocationOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: GetBucketLocationOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.getBucketLocation.rawValue,
                                 reporting: self.invocationsReporting.getBucketLocation)
    }

    /**
     Invokes the GetBucketLogging operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetBucketLoggingRequest object being passed to this operation.
     - Returns: A future to the GetBucketLoggingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketLogging(
            input: S3Model.GetBucketLoggingRequest) -> EventLoopFuture<S3Model.GetBucketLoggingOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: GetBucketLoggingOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.getBucketLogging.rawValue,
                                 reporting: self.invocationsReporting.getBucketLogging)
    }

    /**
     Invokes the GetBucketMetricsConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetBucketMetricsConfigurationRequest object being passed to this operation.
     - Returns: A future to the GetBucketMetricsConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketMetricsConfiguration(
            input: S3Model.GetBucketMetricsConfigurationRequest) -> EventLoopFuture<S3Model.GetBucketMetricsConfigurationOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: GetBucketMetricsConfigurationOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.getBucketMetricsConfiguration.rawValue,
                                 reporting: self.invocationsReporting.getBucketMetricsConfiguration)
    }

    /**
     Invokes the GetBucketNotification operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetBucketNotificationConfigurationRequest object being passed to this operation.
     - Returns: A future to the NotificationConfigurationDeprecated object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketNotification(
            input: S3Model.GetBucketNotificationConfigurationRequest) -> EventLoopFuture<S3Model.NotificationConfigurationDeprecated> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: GetBucketNotificationOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.getBucketNotification.rawValue,
                                 reporting: self.invocationsReporting.getBucketNotification)
    }

    /**
     Invokes the GetBucketNotificationConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetBucketNotificationConfigurationRequest object being passed to this operation.
     - Returns: A future to the NotificationConfiguration object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketNotificationConfiguration(
            input: S3Model.GetBucketNotificationConfigurationRequest) -> EventLoopFuture<S3Model.NotificationConfiguration> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: GetBucketNotificationConfigurationOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.getBucketNotificationConfiguration.rawValue,
                                 reporting: self.invocationsReporting.getBucketNotificationConfiguration)
    }

    /**
     Invokes the GetBucketOwnershipControls operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetBucketOwnershipControlsRequest object being passed to this operation.
     - Returns: A future to the GetBucketOwnershipControlsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketOwnershipControls(
            input: S3Model.GetBucketOwnershipControlsRequest) -> EventLoopFuture<S3Model.GetBucketOwnershipControlsOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: GetBucketOwnershipControlsOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.getBucketOwnershipControls.rawValue,
                                 reporting: self.invocationsReporting.getBucketOwnershipControls)
    }

    /**
     Invokes the GetBucketPolicy operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetBucketPolicyRequest object being passed to this operation.
     - Returns: A future to the GetBucketPolicyOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketPolicy(
            input: S3Model.GetBucketPolicyRequest) -> EventLoopFuture<S3Model.GetBucketPolicyOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: GetBucketPolicyOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.getBucketPolicy.rawValue,
                                 reporting: self.invocationsReporting.getBucketPolicy)
    }

    /**
     Invokes the GetBucketPolicyStatus operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetBucketPolicyStatusRequest object being passed to this operation.
     - Returns: A future to the GetBucketPolicyStatusOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketPolicyStatus(
            input: S3Model.GetBucketPolicyStatusRequest) -> EventLoopFuture<S3Model.GetBucketPolicyStatusOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: GetBucketPolicyStatusOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.getBucketPolicyStatus.rawValue,
                                 reporting: self.invocationsReporting.getBucketPolicyStatus)
    }

    /**
     Invokes the GetBucketReplication operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetBucketReplicationRequest object being passed to this operation.
     - Returns: A future to the GetBucketReplicationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketReplication(
            input: S3Model.GetBucketReplicationRequest) -> EventLoopFuture<S3Model.GetBucketReplicationOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: GetBucketReplicationOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.getBucketReplication.rawValue,
                                 reporting: self.invocationsReporting.getBucketReplication)
    }

    /**
     Invokes the GetBucketRequestPayment operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetBucketRequestPaymentRequest object being passed to this operation.
     - Returns: A future to the GetBucketRequestPaymentOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketRequestPayment(
            input: S3Model.GetBucketRequestPaymentRequest) -> EventLoopFuture<S3Model.GetBucketRequestPaymentOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: GetBucketRequestPaymentOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.getBucketRequestPayment.rawValue,
                                 reporting: self.invocationsReporting.getBucketRequestPayment)
    }

    /**
     Invokes the GetBucketTagging operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetBucketTaggingRequest object being passed to this operation.
     - Returns: A future to the GetBucketTaggingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketTagging(
            input: S3Model.GetBucketTaggingRequest) -> EventLoopFuture<S3Model.GetBucketTaggingOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: GetBucketTaggingOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.getBucketTagging.rawValue,
                                 reporting: self.invocationsReporting.getBucketTagging)
    }

    /**
     Invokes the GetBucketVersioning operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetBucketVersioningRequest object being passed to this operation.
     - Returns: A future to the GetBucketVersioningOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketVersioning(
            input: S3Model.GetBucketVersioningRequest) -> EventLoopFuture<S3Model.GetBucketVersioningOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: GetBucketVersioningOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.getBucketVersioning.rawValue,
                                 reporting: self.invocationsReporting.getBucketVersioning)
    }

    /**
     Invokes the GetBucketWebsite operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetBucketWebsiteRequest object being passed to this operation.
     - Returns: A future to the GetBucketWebsiteOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getBucketWebsite(
            input: S3Model.GetBucketWebsiteRequest) -> EventLoopFuture<S3Model.GetBucketWebsiteOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: GetBucketWebsiteOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.getBucketWebsite.rawValue,
                                 reporting: self.invocationsReporting.getBucketWebsite)
    }

    /**
     Invokes the GetObject operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetObjectRequest object being passed to this operation.
     - Returns: A future to the GetObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidObjectState, noSuchKey.
     */
    public func getObject(
            input: S3Model.GetObjectRequest) -> EventLoopFuture<S3Model.GetObjectOutput> {
        return executeWithOutput(httpClient: dataHttpClient,
                                 requestInput: GetObjectOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.getObject.rawValue,
                                 reporting: self.invocationsReporting.getObject)
    }

    /**
     Invokes the GetObjectAcl operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetObjectAclRequest object being passed to this operation.
     - Returns: A future to the GetObjectAclOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: noSuchKey.
     */
    public func getObjectAcl(
            input: S3Model.GetObjectAclRequest) -> EventLoopFuture<S3Model.GetObjectAclOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: GetObjectAclOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.getObjectAcl.rawValue,
                                 reporting: self.invocationsReporting.getObjectAcl)
    }

    /**
     Invokes the GetObjectLegalHold operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetObjectLegalHoldRequest object being passed to this operation.
     - Returns: A future to the GetObjectLegalHoldOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getObjectLegalHold(
            input: S3Model.GetObjectLegalHoldRequest) -> EventLoopFuture<S3Model.GetObjectLegalHoldOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: GetObjectLegalHoldOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.getObjectLegalHold.rawValue,
                                 reporting: self.invocationsReporting.getObjectLegalHold)
    }

    /**
     Invokes the GetObjectLockConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetObjectLockConfigurationRequest object being passed to this operation.
     - Returns: A future to the GetObjectLockConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getObjectLockConfiguration(
            input: S3Model.GetObjectLockConfigurationRequest) -> EventLoopFuture<S3Model.GetObjectLockConfigurationOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: GetObjectLockConfigurationOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.getObjectLockConfiguration.rawValue,
                                 reporting: self.invocationsReporting.getObjectLockConfiguration)
    }

    /**
     Invokes the GetObjectRetention operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetObjectRetentionRequest object being passed to this operation.
     - Returns: A future to the GetObjectRetentionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getObjectRetention(
            input: S3Model.GetObjectRetentionRequest) -> EventLoopFuture<S3Model.GetObjectRetentionOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: GetObjectRetentionOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.getObjectRetention.rawValue,
                                 reporting: self.invocationsReporting.getObjectRetention)
    }

    /**
     Invokes the GetObjectTagging operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetObjectTaggingRequest object being passed to this operation.
     - Returns: A future to the GetObjectTaggingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getObjectTagging(
            input: S3Model.GetObjectTaggingRequest) -> EventLoopFuture<S3Model.GetObjectTaggingOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: GetObjectTaggingOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.getObjectTagging.rawValue,
                                 reporting: self.invocationsReporting.getObjectTagging)
    }

    /**
     Invokes the GetObjectTorrent operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetObjectTorrentRequest object being passed to this operation.
     - Returns: A future to the GetObjectTorrentOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getObjectTorrent(
            input: S3Model.GetObjectTorrentRequest) -> EventLoopFuture<S3Model.GetObjectTorrentOutput> {
        return executeWithOutput(httpClient: dataHttpClient,
                                 requestInput: GetObjectTorrentOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.getObjectTorrent.rawValue,
                                 reporting: self.invocationsReporting.getObjectTorrent)
    }

    /**
     Invokes the GetPublicAccessBlock operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetPublicAccessBlockRequest object being passed to this operation.
     - Returns: A future to the GetPublicAccessBlockOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getPublicAccessBlock(
            input: S3Model.GetPublicAccessBlockRequest) -> EventLoopFuture<S3Model.GetPublicAccessBlockOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: GetPublicAccessBlockOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.getPublicAccessBlock.rawValue,
                                 reporting: self.invocationsReporting.getPublicAccessBlock)
    }

    /**
     Invokes the HeadBucket operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated HeadBucketRequest object being passed to this operation.
           The possible errors are: noSuchBucket.
     */
    public func headBucket(
            input: S3Model.HeadBucketRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: HeadBucketOperationHTTPRequestInput(encodable: input),
                                    operation: S3ModelOperations.headBucket.rawValue,
                                    reporting: self.invocationsReporting.headBucket)
    }

    /**
     Invokes the HeadObject operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated HeadObjectRequest object being passed to this operation.
     - Returns: A future to the HeadObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: noSuchKey.
     */
    public func headObject(
            input: S3Model.HeadObjectRequest) -> EventLoopFuture<S3Model.HeadObjectOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: HeadObjectOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.headObject.rawValue,
                                 reporting: self.invocationsReporting.headObject)
    }

    /**
     Invokes the ListBucketAnalyticsConfigurations operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListBucketAnalyticsConfigurationsRequest object being passed to this operation.
     - Returns: A future to the ListBucketAnalyticsConfigurationsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listBucketAnalyticsConfigurations(
            input: S3Model.ListBucketAnalyticsConfigurationsRequest) -> EventLoopFuture<S3Model.ListBucketAnalyticsConfigurationsOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: ListBucketAnalyticsConfigurationsOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.listBucketAnalyticsConfigurations.rawValue,
                                 reporting: self.invocationsReporting.listBucketAnalyticsConfigurations)
    }

    /**
     Invokes the ListBucketIntelligentTieringConfigurations operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListBucketIntelligentTieringConfigurationsRequest object being passed to this operation.
     - Returns: A future to the ListBucketIntelligentTieringConfigurationsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listBucketIntelligentTieringConfigurations(
            input: S3Model.ListBucketIntelligentTieringConfigurationsRequest) -> EventLoopFuture<S3Model.ListBucketIntelligentTieringConfigurationsOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: ListBucketIntelligentTieringConfigurationsOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.listBucketIntelligentTieringConfigurations.rawValue,
                                 reporting: self.invocationsReporting.listBucketIntelligentTieringConfigurations)
    }

    /**
     Invokes the ListBucketInventoryConfigurations operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListBucketInventoryConfigurationsRequest object being passed to this operation.
     - Returns: A future to the ListBucketInventoryConfigurationsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listBucketInventoryConfigurations(
            input: S3Model.ListBucketInventoryConfigurationsRequest) -> EventLoopFuture<S3Model.ListBucketInventoryConfigurationsOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: ListBucketInventoryConfigurationsOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.listBucketInventoryConfigurations.rawValue,
                                 reporting: self.invocationsReporting.listBucketInventoryConfigurations)
    }

    /**
     Invokes the ListBucketMetricsConfigurations operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListBucketMetricsConfigurationsRequest object being passed to this operation.
     - Returns: A future to the ListBucketMetricsConfigurationsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listBucketMetricsConfigurations(
            input: S3Model.ListBucketMetricsConfigurationsRequest) -> EventLoopFuture<S3Model.ListBucketMetricsConfigurationsOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: ListBucketMetricsConfigurationsOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.listBucketMetricsConfigurations.rawValue,
                                 reporting: self.invocationsReporting.listBucketMetricsConfigurations)
    }

    /**
     Invokes the ListBuckets operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.
     - Returns: A future to the ListBucketsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listBuckets() -> EventLoopFuture<S3Model.ListBucketsOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: NoHTTPRequestInput(),
                                 operation: S3ModelOperations.listBuckets.rawValue,
                                 reporting: self.invocationsReporting.listBuckets)
    }

    /**
     Invokes the ListMultipartUploads operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListMultipartUploadsRequest object being passed to this operation.
     - Returns: A future to the ListMultipartUploadsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listMultipartUploads(
            input: S3Model.ListMultipartUploadsRequest) -> EventLoopFuture<S3Model.ListMultipartUploadsOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: ListMultipartUploadsOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.listMultipartUploads.rawValue,
                                 reporting: self.invocationsReporting.listMultipartUploads)
    }

    /**
     Invokes the ListObjectVersions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListObjectVersionsRequest object being passed to this operation.
     - Returns: A future to the ListObjectVersionsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listObjectVersions(
            input: S3Model.ListObjectVersionsRequest) -> EventLoopFuture<S3Model.ListObjectVersionsOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: ListObjectVersionsOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.listObjectVersions.rawValue,
                                 reporting: self.invocationsReporting.listObjectVersions)
    }

    /**
     Invokes the ListObjects operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListObjectsRequest object being passed to this operation.
     - Returns: A future to the ListObjectsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: noSuchBucket.
     */
    public func listObjects(
            input: S3Model.ListObjectsRequest) -> EventLoopFuture<S3Model.ListObjectsOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: ListObjectsOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.listObjects.rawValue,
                                 reporting: self.invocationsReporting.listObjects)
    }

    /**
     Invokes the ListObjectsV2 operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListObjectsV2Request object being passed to this operation.
     - Returns: A future to the ListObjectsV2Output object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: noSuchBucket.
     */
    public func listObjectsV2(
            input: S3Model.ListObjectsV2Request) -> EventLoopFuture<S3Model.ListObjectsV2Output> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: ListObjectsV2OperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.listObjectsV2.rawValue,
                                 reporting: self.invocationsReporting.listObjectsV2)
    }

    /**
     Invokes the ListParts operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListPartsRequest object being passed to this operation.
     - Returns: A future to the ListPartsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listParts(
            input: S3Model.ListPartsRequest) -> EventLoopFuture<S3Model.ListPartsOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: ListPartsOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.listParts.rawValue,
                                 reporting: self.invocationsReporting.listParts)
    }

    /**
     Invokes the PutBucketAccelerateConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketAccelerateConfigurationRequest object being passed to this operation.
     */
    public func putBucketAccelerateConfiguration(
            input: S3Model.PutBucketAccelerateConfigurationRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: PutBucketAccelerateConfigurationOperationHTTPRequestInput(encodable: input),
                                    operation: S3ModelOperations.putBucketAccelerateConfiguration.rawValue,
                                    reporting: self.invocationsReporting.putBucketAccelerateConfiguration)
    }

    /**
     Invokes the PutBucketAcl operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketAclRequest object being passed to this operation.
     */
    public func putBucketAcl(
            input: S3Model.PutBucketAclRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: PutBucketAclOperationHTTPRequestInput(encodable: input),
                                    operation: S3ModelOperations.putBucketAcl.rawValue,
                                    reporting: self.invocationsReporting.putBucketAcl)
    }

    /**
     Invokes the PutBucketAnalyticsConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketAnalyticsConfigurationRequest object being passed to this operation.
     */
    public func putBucketAnalyticsConfiguration(
            input: S3Model.PutBucketAnalyticsConfigurationRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: PutBucketAnalyticsConfigurationOperationHTTPRequestInput(encodable: input),
                                    operation: S3ModelOperations.putBucketAnalyticsConfiguration.rawValue,
                                    reporting: self.invocationsReporting.putBucketAnalyticsConfiguration)
    }

    /**
     Invokes the PutBucketCors operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketCorsRequest object being passed to this operation.
     */
    public func putBucketCors(
            input: S3Model.PutBucketCorsRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: PutBucketCorsOperationHTTPRequestInput(encodable: input),
                                    operation: S3ModelOperations.putBucketCors.rawValue,
                                    reporting: self.invocationsReporting.putBucketCors)
    }

    /**
     Invokes the PutBucketEncryption operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketEncryptionRequest object being passed to this operation.
     */
    public func putBucketEncryption(
            input: S3Model.PutBucketEncryptionRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: PutBucketEncryptionOperationHTTPRequestInput(encodable: input),
                                    operation: S3ModelOperations.putBucketEncryption.rawValue,
                                    reporting: self.invocationsReporting.putBucketEncryption)
    }

    /**
     Invokes the PutBucketIntelligentTieringConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketIntelligentTieringConfigurationRequest object being passed to this operation.
     */
    public func putBucketIntelligentTieringConfiguration(
            input: S3Model.PutBucketIntelligentTieringConfigurationRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: PutBucketIntelligentTieringConfigurationOperationHTTPRequestInput(encodable: input),
                                    operation: S3ModelOperations.putBucketIntelligentTieringConfiguration.rawValue,
                                    reporting: self.invocationsReporting.putBucketIntelligentTieringConfiguration)
    }

    /**
     Invokes the PutBucketInventoryConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketInventoryConfigurationRequest object being passed to this operation.
     */
    public func putBucketInventoryConfiguration(
            input: S3Model.PutBucketInventoryConfigurationRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: PutBucketInventoryConfigurationOperationHTTPRequestInput(encodable: input),
                                    operation: S3ModelOperations.putBucketInventoryConfiguration.rawValue,
                                    reporting: self.invocationsReporting.putBucketInventoryConfiguration)
    }

    /**
     Invokes the PutBucketLifecycle operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketLifecycleRequest object being passed to this operation.
     */
    public func putBucketLifecycle(
            input: S3Model.PutBucketLifecycleRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: PutBucketLifecycleOperationHTTPRequestInput(encodable: input),
                                    operation: S3ModelOperations.putBucketLifecycle.rawValue,
                                    reporting: self.invocationsReporting.putBucketLifecycle)
    }

    /**
     Invokes the PutBucketLifecycleConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketLifecycleConfigurationRequest object being passed to this operation.
     */
    public func putBucketLifecycleConfiguration(
            input: S3Model.PutBucketLifecycleConfigurationRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: PutBucketLifecycleConfigurationOperationHTTPRequestInput(encodable: input),
                                    operation: S3ModelOperations.putBucketLifecycleConfiguration.rawValue,
                                    reporting: self.invocationsReporting.putBucketLifecycleConfiguration)
    }

    /**
     Invokes the PutBucketLogging operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketLoggingRequest object being passed to this operation.
     */
    public func putBucketLogging(
            input: S3Model.PutBucketLoggingRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: PutBucketLoggingOperationHTTPRequestInput(encodable: input),
                                    operation: S3ModelOperations.putBucketLogging.rawValue,
                                    reporting: self.invocationsReporting.putBucketLogging)
    }

    /**
     Invokes the PutBucketMetricsConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketMetricsConfigurationRequest object being passed to this operation.
     */
    public func putBucketMetricsConfiguration(
            input: S3Model.PutBucketMetricsConfigurationRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: PutBucketMetricsConfigurationOperationHTTPRequestInput(encodable: input),
                                    operation: S3ModelOperations.putBucketMetricsConfiguration.rawValue,
                                    reporting: self.invocationsReporting.putBucketMetricsConfiguration)
    }

    /**
     Invokes the PutBucketNotification operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketNotificationRequest object being passed to this operation.
     */
    public func putBucketNotification(
            input: S3Model.PutBucketNotificationRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: PutBucketNotificationOperationHTTPRequestInput(encodable: input),
                                    operation: S3ModelOperations.putBucketNotification.rawValue,
                                    reporting: self.invocationsReporting.putBucketNotification)
    }

    /**
     Invokes the PutBucketNotificationConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketNotificationConfigurationRequest object being passed to this operation.
     */
    public func putBucketNotificationConfiguration(
            input: S3Model.PutBucketNotificationConfigurationRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: PutBucketNotificationConfigurationOperationHTTPRequestInput(encodable: input),
                                    operation: S3ModelOperations.putBucketNotificationConfiguration.rawValue,
                                    reporting: self.invocationsReporting.putBucketNotificationConfiguration)
    }

    /**
     Invokes the PutBucketOwnershipControls operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketOwnershipControlsRequest object being passed to this operation.
     */
    public func putBucketOwnershipControls(
            input: S3Model.PutBucketOwnershipControlsRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: PutBucketOwnershipControlsOperationHTTPRequestInput(encodable: input),
                                    operation: S3ModelOperations.putBucketOwnershipControls.rawValue,
                                    reporting: self.invocationsReporting.putBucketOwnershipControls)
    }

    /**
     Invokes the PutBucketPolicy operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketPolicyRequest object being passed to this operation.
     */
    public func putBucketPolicy(
            input: S3Model.PutBucketPolicyRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: PutBucketPolicyOperationHTTPRequestInput(encodable: input),
                                    operation: S3ModelOperations.putBucketPolicy.rawValue,
                                    reporting: self.invocationsReporting.putBucketPolicy)
    }

    /**
     Invokes the PutBucketReplication operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketReplicationRequest object being passed to this operation.
     */
    public func putBucketReplication(
            input: S3Model.PutBucketReplicationRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: PutBucketReplicationOperationHTTPRequestInput(encodable: input),
                                    operation: S3ModelOperations.putBucketReplication.rawValue,
                                    reporting: self.invocationsReporting.putBucketReplication)
    }

    /**
     Invokes the PutBucketRequestPayment operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketRequestPaymentRequest object being passed to this operation.
     */
    public func putBucketRequestPayment(
            input: S3Model.PutBucketRequestPaymentRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: PutBucketRequestPaymentOperationHTTPRequestInput(encodable: input),
                                    operation: S3ModelOperations.putBucketRequestPayment.rawValue,
                                    reporting: self.invocationsReporting.putBucketRequestPayment)
    }

    /**
     Invokes the PutBucketTagging operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketTaggingRequest object being passed to this operation.
     */
    public func putBucketTagging(
            input: S3Model.PutBucketTaggingRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: PutBucketTaggingOperationHTTPRequestInput(encodable: input),
                                    operation: S3ModelOperations.putBucketTagging.rawValue,
                                    reporting: self.invocationsReporting.putBucketTagging)
    }

    /**
     Invokes the PutBucketVersioning operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketVersioningRequest object being passed to this operation.
     */
    public func putBucketVersioning(
            input: S3Model.PutBucketVersioningRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: PutBucketVersioningOperationHTTPRequestInput(encodable: input),
                                    operation: S3ModelOperations.putBucketVersioning.rawValue,
                                    reporting: self.invocationsReporting.putBucketVersioning)
    }

    /**
     Invokes the PutBucketWebsite operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketWebsiteRequest object being passed to this operation.
     */
    public func putBucketWebsite(
            input: S3Model.PutBucketWebsiteRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: PutBucketWebsiteOperationHTTPRequestInput(encodable: input),
                                    operation: S3ModelOperations.putBucketWebsite.rawValue,
                                    reporting: self.invocationsReporting.putBucketWebsite)
    }

    /**
     Invokes the PutObject operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutObjectRequest object being passed to this operation.
     - Returns: A future to the PutObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func putObject(
            input: S3Model.PutObjectRequest) -> EventLoopFuture<S3Model.PutObjectOutput> {
        return executeWithOutput(httpClient: dataHttpClient,
                                 requestInput: PutObjectOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.putObject.rawValue,
                                 reporting: self.invocationsReporting.putObject)
    }

    /**
     Invokes the PutObjectAcl operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutObjectAclRequest object being passed to this operation.
     - Returns: A future to the PutObjectAclOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: noSuchKey.
     */
    public func putObjectAcl(
            input: S3Model.PutObjectAclRequest) -> EventLoopFuture<S3Model.PutObjectAclOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: PutObjectAclOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.putObjectAcl.rawValue,
                                 reporting: self.invocationsReporting.putObjectAcl)
    }

    /**
     Invokes the PutObjectLegalHold operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutObjectLegalHoldRequest object being passed to this operation.
     - Returns: A future to the PutObjectLegalHoldOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func putObjectLegalHold(
            input: S3Model.PutObjectLegalHoldRequest) -> EventLoopFuture<S3Model.PutObjectLegalHoldOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: PutObjectLegalHoldOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.putObjectLegalHold.rawValue,
                                 reporting: self.invocationsReporting.putObjectLegalHold)
    }

    /**
     Invokes the PutObjectLockConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutObjectLockConfigurationRequest object being passed to this operation.
     - Returns: A future to the PutObjectLockConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func putObjectLockConfiguration(
            input: S3Model.PutObjectLockConfigurationRequest) -> EventLoopFuture<S3Model.PutObjectLockConfigurationOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: PutObjectLockConfigurationOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.putObjectLockConfiguration.rawValue,
                                 reporting: self.invocationsReporting.putObjectLockConfiguration)
    }

    /**
     Invokes the PutObjectRetention operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutObjectRetentionRequest object being passed to this operation.
     - Returns: A future to the PutObjectRetentionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func putObjectRetention(
            input: S3Model.PutObjectRetentionRequest) -> EventLoopFuture<S3Model.PutObjectRetentionOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: PutObjectRetentionOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.putObjectRetention.rawValue,
                                 reporting: self.invocationsReporting.putObjectRetention)
    }

    /**
     Invokes the PutObjectTagging operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutObjectTaggingRequest object being passed to this operation.
     - Returns: A future to the PutObjectTaggingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func putObjectTagging(
            input: S3Model.PutObjectTaggingRequest) -> EventLoopFuture<S3Model.PutObjectTaggingOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: PutObjectTaggingOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.putObjectTagging.rawValue,
                                 reporting: self.invocationsReporting.putObjectTagging)
    }

    /**
     Invokes the PutPublicAccessBlock operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutPublicAccessBlockRequest object being passed to this operation.
     */
    public func putPublicAccessBlock(
            input: S3Model.PutPublicAccessBlockRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    requestInput: PutPublicAccessBlockOperationHTTPRequestInput(encodable: input),
                                    operation: S3ModelOperations.putPublicAccessBlock.rawValue,
                                    reporting: self.invocationsReporting.putPublicAccessBlock)
    }

    /**
     Invokes the RestoreObject operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RestoreObjectRequest object being passed to this operation.
     - Returns: A future to the RestoreObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: objectAlreadyInActiveTier.
     */
    public func restoreObject(
            input: S3Model.RestoreObjectRequest) -> EventLoopFuture<S3Model.RestoreObjectOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: RestoreObjectOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.restoreObject.rawValue,
                                 reporting: self.invocationsReporting.restoreObject)
    }

    /**
     Invokes the SelectObjectContent operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SelectObjectContentRequest object being passed to this operation.
     - Returns: A future to the SelectObjectContentOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func selectObjectContent(
            input: S3Model.SelectObjectContentRequest) -> EventLoopFuture<S3Model.SelectObjectContentOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: SelectObjectContentOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.selectObjectContent.rawValue,
                                 reporting: self.invocationsReporting.selectObjectContent)
    }

    /**
     Invokes the UploadPart operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UploadPartRequest object being passed to this operation.
     - Returns: A future to the UploadPartOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func uploadPart(
            input: S3Model.UploadPartRequest) -> EventLoopFuture<S3Model.UploadPartOutput> {
        return executeWithOutput(httpClient: dataHttpClient,
                                 requestInput: UploadPartOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.uploadPart.rawValue,
                                 reporting: self.invocationsReporting.uploadPart)
    }

    /**
     Invokes the UploadPartCopy operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UploadPartCopyRequest object being passed to this operation.
     - Returns: A future to the UploadPartCopyOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func uploadPartCopy(
            input: S3Model.UploadPartCopyRequest) -> EventLoopFuture<S3Model.UploadPartCopyOutput> {
        return executeWithOutput(httpClient: httpClient,
                                 requestInput: UploadPartCopyOperationHTTPRequestInput(encodable: input),
                                 operation: S3ModelOperations.uploadPartCopy.rawValue,
                                 reporting: self.invocationsReporting.uploadPartCopy)
    }
}
