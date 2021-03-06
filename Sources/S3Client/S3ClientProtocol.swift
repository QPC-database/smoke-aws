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
// S3ClientProtocol.swift
// S3Client
//

import Foundation
import S3Model
import SmokeAWSCore
import SmokeHTTPClient
import NIO

/**
 Client Protocol for the S3 service.
 */
public protocol S3ClientProtocol {
    typealias AbortMultipartUploadEventLoopFutureAsyncType = (
            _ input: S3Model.AbortMultipartUploadRequest) -> EventLoopFuture<S3Model.AbortMultipartUploadOutput>
    typealias CompleteMultipartUploadEventLoopFutureAsyncType = (
            _ input: S3Model.CompleteMultipartUploadRequest) -> EventLoopFuture<S3Model.CompleteMultipartUploadOutput>
    typealias CopyObjectEventLoopFutureAsyncType = (
            _ input: S3Model.CopyObjectRequest) -> EventLoopFuture<S3Model.CopyObjectOutput>
    typealias CreateBucketEventLoopFutureAsyncType = (
            _ input: S3Model.CreateBucketRequest) -> EventLoopFuture<S3Model.CreateBucketOutput>
    typealias CreateMultipartUploadEventLoopFutureAsyncType = (
            _ input: S3Model.CreateMultipartUploadRequest) -> EventLoopFuture<S3Model.CreateMultipartUploadOutput>
    typealias DeleteBucketEventLoopFutureAsyncType = (
            _ input: S3Model.DeleteBucketRequest) -> EventLoopFuture<Void>
    typealias DeleteBucketAnalyticsConfigurationEventLoopFutureAsyncType = (
            _ input: S3Model.DeleteBucketAnalyticsConfigurationRequest) -> EventLoopFuture<Void>
    typealias DeleteBucketCorsEventLoopFutureAsyncType = (
            _ input: S3Model.DeleteBucketCorsRequest) -> EventLoopFuture<Void>
    typealias DeleteBucketEncryptionEventLoopFutureAsyncType = (
            _ input: S3Model.DeleteBucketEncryptionRequest) -> EventLoopFuture<Void>
    typealias DeleteBucketIntelligentTieringConfigurationEventLoopFutureAsyncType = (
            _ input: S3Model.DeleteBucketIntelligentTieringConfigurationRequest) -> EventLoopFuture<Void>
    typealias DeleteBucketInventoryConfigurationEventLoopFutureAsyncType = (
            _ input: S3Model.DeleteBucketInventoryConfigurationRequest) -> EventLoopFuture<Void>
    typealias DeleteBucketLifecycleEventLoopFutureAsyncType = (
            _ input: S3Model.DeleteBucketLifecycleRequest) -> EventLoopFuture<Void>
    typealias DeleteBucketMetricsConfigurationEventLoopFutureAsyncType = (
            _ input: S3Model.DeleteBucketMetricsConfigurationRequest) -> EventLoopFuture<Void>
    typealias DeleteBucketOwnershipControlsEventLoopFutureAsyncType = (
            _ input: S3Model.DeleteBucketOwnershipControlsRequest) -> EventLoopFuture<Void>
    typealias DeleteBucketPolicyEventLoopFutureAsyncType = (
            _ input: S3Model.DeleteBucketPolicyRequest) -> EventLoopFuture<Void>
    typealias DeleteBucketReplicationEventLoopFutureAsyncType = (
            _ input: S3Model.DeleteBucketReplicationRequest) -> EventLoopFuture<Void>
    typealias DeleteBucketTaggingEventLoopFutureAsyncType = (
            _ input: S3Model.DeleteBucketTaggingRequest) -> EventLoopFuture<Void>
    typealias DeleteBucketWebsiteEventLoopFutureAsyncType = (
            _ input: S3Model.DeleteBucketWebsiteRequest) -> EventLoopFuture<Void>
    typealias DeleteObjectEventLoopFutureAsyncType = (
            _ input: S3Model.DeleteObjectRequest) -> EventLoopFuture<S3Model.DeleteObjectOutput>
    typealias DeleteObjectTaggingEventLoopFutureAsyncType = (
            _ input: S3Model.DeleteObjectTaggingRequest) -> EventLoopFuture<S3Model.DeleteObjectTaggingOutput>
    typealias DeleteObjectsEventLoopFutureAsyncType = (
            _ input: S3Model.DeleteObjectsRequest) -> EventLoopFuture<S3Model.DeleteObjectsOutput>
    typealias DeletePublicAccessBlockEventLoopFutureAsyncType = (
            _ input: S3Model.DeletePublicAccessBlockRequest) -> EventLoopFuture<Void>
    typealias GetBucketAccelerateConfigurationEventLoopFutureAsyncType = (
            _ input: S3Model.GetBucketAccelerateConfigurationRequest) -> EventLoopFuture<S3Model.GetBucketAccelerateConfigurationOutput>
    typealias GetBucketAclEventLoopFutureAsyncType = (
            _ input: S3Model.GetBucketAclRequest) -> EventLoopFuture<S3Model.GetBucketAclOutput>
    typealias GetBucketAnalyticsConfigurationEventLoopFutureAsyncType = (
            _ input: S3Model.GetBucketAnalyticsConfigurationRequest) -> EventLoopFuture<S3Model.GetBucketAnalyticsConfigurationOutput>
    typealias GetBucketCorsEventLoopFutureAsyncType = (
            _ input: S3Model.GetBucketCorsRequest) -> EventLoopFuture<S3Model.GetBucketCorsOutput>
    typealias GetBucketEncryptionEventLoopFutureAsyncType = (
            _ input: S3Model.GetBucketEncryptionRequest) -> EventLoopFuture<S3Model.GetBucketEncryptionOutput>
    typealias GetBucketIntelligentTieringConfigurationEventLoopFutureAsyncType = (
            _ input: S3Model.GetBucketIntelligentTieringConfigurationRequest) -> EventLoopFuture<S3Model.GetBucketIntelligentTieringConfigurationOutput>
    typealias GetBucketInventoryConfigurationEventLoopFutureAsyncType = (
            _ input: S3Model.GetBucketInventoryConfigurationRequest) -> EventLoopFuture<S3Model.GetBucketInventoryConfigurationOutput>
    typealias GetBucketLifecycleEventLoopFutureAsyncType = (
            _ input: S3Model.GetBucketLifecycleRequest) -> EventLoopFuture<S3Model.GetBucketLifecycleOutput>
    typealias GetBucketLifecycleConfigurationEventLoopFutureAsyncType = (
            _ input: S3Model.GetBucketLifecycleConfigurationRequest) -> EventLoopFuture<S3Model.GetBucketLifecycleConfigurationOutput>
    typealias GetBucketLocationEventLoopFutureAsyncType = (
            _ input: S3Model.GetBucketLocationRequest) -> EventLoopFuture<S3Model.GetBucketLocationOutput>
    typealias GetBucketLoggingEventLoopFutureAsyncType = (
            _ input: S3Model.GetBucketLoggingRequest) -> EventLoopFuture<S3Model.GetBucketLoggingOutput>
    typealias GetBucketMetricsConfigurationEventLoopFutureAsyncType = (
            _ input: S3Model.GetBucketMetricsConfigurationRequest) -> EventLoopFuture<S3Model.GetBucketMetricsConfigurationOutput>
    typealias GetBucketNotificationEventLoopFutureAsyncType = (
            _ input: S3Model.GetBucketNotificationConfigurationRequest) -> EventLoopFuture<S3Model.NotificationConfigurationDeprecated>
    typealias GetBucketNotificationConfigurationEventLoopFutureAsyncType = (
            _ input: S3Model.GetBucketNotificationConfigurationRequest) -> EventLoopFuture<S3Model.NotificationConfiguration>
    typealias GetBucketOwnershipControlsEventLoopFutureAsyncType = (
            _ input: S3Model.GetBucketOwnershipControlsRequest) -> EventLoopFuture<S3Model.GetBucketOwnershipControlsOutput>
    typealias GetBucketPolicyEventLoopFutureAsyncType = (
            _ input: S3Model.GetBucketPolicyRequest) -> EventLoopFuture<S3Model.GetBucketPolicyOutput>
    typealias GetBucketPolicyStatusEventLoopFutureAsyncType = (
            _ input: S3Model.GetBucketPolicyStatusRequest) -> EventLoopFuture<S3Model.GetBucketPolicyStatusOutput>
    typealias GetBucketReplicationEventLoopFutureAsyncType = (
            _ input: S3Model.GetBucketReplicationRequest) -> EventLoopFuture<S3Model.GetBucketReplicationOutput>
    typealias GetBucketRequestPaymentEventLoopFutureAsyncType = (
            _ input: S3Model.GetBucketRequestPaymentRequest) -> EventLoopFuture<S3Model.GetBucketRequestPaymentOutput>
    typealias GetBucketTaggingEventLoopFutureAsyncType = (
            _ input: S3Model.GetBucketTaggingRequest) -> EventLoopFuture<S3Model.GetBucketTaggingOutput>
    typealias GetBucketVersioningEventLoopFutureAsyncType = (
            _ input: S3Model.GetBucketVersioningRequest) -> EventLoopFuture<S3Model.GetBucketVersioningOutput>
    typealias GetBucketWebsiteEventLoopFutureAsyncType = (
            _ input: S3Model.GetBucketWebsiteRequest) -> EventLoopFuture<S3Model.GetBucketWebsiteOutput>
    typealias GetObjectEventLoopFutureAsyncType = (
            _ input: S3Model.GetObjectRequest) -> EventLoopFuture<S3Model.GetObjectOutput>
    typealias GetObjectAclEventLoopFutureAsyncType = (
            _ input: S3Model.GetObjectAclRequest) -> EventLoopFuture<S3Model.GetObjectAclOutput>
    typealias GetObjectLegalHoldEventLoopFutureAsyncType = (
            _ input: S3Model.GetObjectLegalHoldRequest) -> EventLoopFuture<S3Model.GetObjectLegalHoldOutput>
    typealias GetObjectLockConfigurationEventLoopFutureAsyncType = (
            _ input: S3Model.GetObjectLockConfigurationRequest) -> EventLoopFuture<S3Model.GetObjectLockConfigurationOutput>
    typealias GetObjectRetentionEventLoopFutureAsyncType = (
            _ input: S3Model.GetObjectRetentionRequest) -> EventLoopFuture<S3Model.GetObjectRetentionOutput>
    typealias GetObjectTaggingEventLoopFutureAsyncType = (
            _ input: S3Model.GetObjectTaggingRequest) -> EventLoopFuture<S3Model.GetObjectTaggingOutput>
    typealias GetObjectTorrentEventLoopFutureAsyncType = (
            _ input: S3Model.GetObjectTorrentRequest) -> EventLoopFuture<S3Model.GetObjectTorrentOutput>
    typealias GetPublicAccessBlockEventLoopFutureAsyncType = (
            _ input: S3Model.GetPublicAccessBlockRequest) -> EventLoopFuture<S3Model.GetPublicAccessBlockOutput>
    typealias HeadBucketEventLoopFutureAsyncType = (
            _ input: S3Model.HeadBucketRequest) -> EventLoopFuture<Void>
    typealias HeadObjectEventLoopFutureAsyncType = (
            _ input: S3Model.HeadObjectRequest) -> EventLoopFuture<S3Model.HeadObjectOutput>
    typealias ListBucketAnalyticsConfigurationsEventLoopFutureAsyncType = (
            _ input: S3Model.ListBucketAnalyticsConfigurationsRequest) -> EventLoopFuture<S3Model.ListBucketAnalyticsConfigurationsOutput>
    typealias ListBucketIntelligentTieringConfigurationsEventLoopFutureAsyncType = (
            _ input: S3Model.ListBucketIntelligentTieringConfigurationsRequest) -> EventLoopFuture<S3Model.ListBucketIntelligentTieringConfigurationsOutput>
    typealias ListBucketInventoryConfigurationsEventLoopFutureAsyncType = (
            _ input: S3Model.ListBucketInventoryConfigurationsRequest) -> EventLoopFuture<S3Model.ListBucketInventoryConfigurationsOutput>
    typealias ListBucketMetricsConfigurationsEventLoopFutureAsyncType = (
            _ input: S3Model.ListBucketMetricsConfigurationsRequest) -> EventLoopFuture<S3Model.ListBucketMetricsConfigurationsOutput>
    typealias ListBucketsEventLoopFutureAsyncType = () -> EventLoopFuture<S3Model.ListBucketsOutput>
    typealias ListMultipartUploadsEventLoopFutureAsyncType = (
            _ input: S3Model.ListMultipartUploadsRequest) -> EventLoopFuture<S3Model.ListMultipartUploadsOutput>
    typealias ListObjectVersionsEventLoopFutureAsyncType = (
            _ input: S3Model.ListObjectVersionsRequest) -> EventLoopFuture<S3Model.ListObjectVersionsOutput>
    typealias ListObjectsEventLoopFutureAsyncType = (
            _ input: S3Model.ListObjectsRequest) -> EventLoopFuture<S3Model.ListObjectsOutput>
    typealias ListObjectsV2EventLoopFutureAsyncType = (
            _ input: S3Model.ListObjectsV2Request) -> EventLoopFuture<S3Model.ListObjectsV2Output>
    typealias ListPartsEventLoopFutureAsyncType = (
            _ input: S3Model.ListPartsRequest) -> EventLoopFuture<S3Model.ListPartsOutput>
    typealias PutBucketAccelerateConfigurationEventLoopFutureAsyncType = (
            _ input: S3Model.PutBucketAccelerateConfigurationRequest) -> EventLoopFuture<Void>
    typealias PutBucketAclEventLoopFutureAsyncType = (
            _ input: S3Model.PutBucketAclRequest) -> EventLoopFuture<Void>
    typealias PutBucketAnalyticsConfigurationEventLoopFutureAsyncType = (
            _ input: S3Model.PutBucketAnalyticsConfigurationRequest) -> EventLoopFuture<Void>
    typealias PutBucketCorsEventLoopFutureAsyncType = (
            _ input: S3Model.PutBucketCorsRequest) -> EventLoopFuture<Void>
    typealias PutBucketEncryptionEventLoopFutureAsyncType = (
            _ input: S3Model.PutBucketEncryptionRequest) -> EventLoopFuture<Void>
    typealias PutBucketIntelligentTieringConfigurationEventLoopFutureAsyncType = (
            _ input: S3Model.PutBucketIntelligentTieringConfigurationRequest) -> EventLoopFuture<Void>
    typealias PutBucketInventoryConfigurationEventLoopFutureAsyncType = (
            _ input: S3Model.PutBucketInventoryConfigurationRequest) -> EventLoopFuture<Void>
    typealias PutBucketLifecycleEventLoopFutureAsyncType = (
            _ input: S3Model.PutBucketLifecycleRequest) -> EventLoopFuture<Void>
    typealias PutBucketLifecycleConfigurationEventLoopFutureAsyncType = (
            _ input: S3Model.PutBucketLifecycleConfigurationRequest) -> EventLoopFuture<Void>
    typealias PutBucketLoggingEventLoopFutureAsyncType = (
            _ input: S3Model.PutBucketLoggingRequest) -> EventLoopFuture<Void>
    typealias PutBucketMetricsConfigurationEventLoopFutureAsyncType = (
            _ input: S3Model.PutBucketMetricsConfigurationRequest) -> EventLoopFuture<Void>
    typealias PutBucketNotificationEventLoopFutureAsyncType = (
            _ input: S3Model.PutBucketNotificationRequest) -> EventLoopFuture<Void>
    typealias PutBucketNotificationConfigurationEventLoopFutureAsyncType = (
            _ input: S3Model.PutBucketNotificationConfigurationRequest) -> EventLoopFuture<Void>
    typealias PutBucketOwnershipControlsEventLoopFutureAsyncType = (
            _ input: S3Model.PutBucketOwnershipControlsRequest) -> EventLoopFuture<Void>
    typealias PutBucketPolicyEventLoopFutureAsyncType = (
            _ input: S3Model.PutBucketPolicyRequest) -> EventLoopFuture<Void>
    typealias PutBucketReplicationEventLoopFutureAsyncType = (
            _ input: S3Model.PutBucketReplicationRequest) -> EventLoopFuture<Void>
    typealias PutBucketRequestPaymentEventLoopFutureAsyncType = (
            _ input: S3Model.PutBucketRequestPaymentRequest) -> EventLoopFuture<Void>
    typealias PutBucketTaggingEventLoopFutureAsyncType = (
            _ input: S3Model.PutBucketTaggingRequest) -> EventLoopFuture<Void>
    typealias PutBucketVersioningEventLoopFutureAsyncType = (
            _ input: S3Model.PutBucketVersioningRequest) -> EventLoopFuture<Void>
    typealias PutBucketWebsiteEventLoopFutureAsyncType = (
            _ input: S3Model.PutBucketWebsiteRequest) -> EventLoopFuture<Void>
    typealias PutObjectEventLoopFutureAsyncType = (
            _ input: S3Model.PutObjectRequest) -> EventLoopFuture<S3Model.PutObjectOutput>
    typealias PutObjectAclEventLoopFutureAsyncType = (
            _ input: S3Model.PutObjectAclRequest) -> EventLoopFuture<S3Model.PutObjectAclOutput>
    typealias PutObjectLegalHoldEventLoopFutureAsyncType = (
            _ input: S3Model.PutObjectLegalHoldRequest) -> EventLoopFuture<S3Model.PutObjectLegalHoldOutput>
    typealias PutObjectLockConfigurationEventLoopFutureAsyncType = (
            _ input: S3Model.PutObjectLockConfigurationRequest) -> EventLoopFuture<S3Model.PutObjectLockConfigurationOutput>
    typealias PutObjectRetentionEventLoopFutureAsyncType = (
            _ input: S3Model.PutObjectRetentionRequest) -> EventLoopFuture<S3Model.PutObjectRetentionOutput>
    typealias PutObjectTaggingEventLoopFutureAsyncType = (
            _ input: S3Model.PutObjectTaggingRequest) -> EventLoopFuture<S3Model.PutObjectTaggingOutput>
    typealias PutPublicAccessBlockEventLoopFutureAsyncType = (
            _ input: S3Model.PutPublicAccessBlockRequest) -> EventLoopFuture<Void>
    typealias RestoreObjectEventLoopFutureAsyncType = (
            _ input: S3Model.RestoreObjectRequest) -> EventLoopFuture<S3Model.RestoreObjectOutput>
    typealias SelectObjectContentEventLoopFutureAsyncType = (
            _ input: S3Model.SelectObjectContentRequest) -> EventLoopFuture<S3Model.SelectObjectContentOutput>
    typealias UploadPartEventLoopFutureAsyncType = (
            _ input: S3Model.UploadPartRequest) -> EventLoopFuture<S3Model.UploadPartOutput>
    typealias UploadPartCopyEventLoopFutureAsyncType = (
            _ input: S3Model.UploadPartCopyRequest) -> EventLoopFuture<S3Model.UploadPartCopyOutput>

    /**
     Invokes the AbortMultipartUpload operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AbortMultipartUploadRequest object being passed to this operation.
     - Returns: A future to the AbortMultipartUploadOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: noSuchUpload.
     */
    func abortMultipartUpload(
            input: S3Model.AbortMultipartUploadRequest) -> EventLoopFuture<S3Model.AbortMultipartUploadOutput>

    /**
     Invokes the CompleteMultipartUpload operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CompleteMultipartUploadRequest object being passed to this operation.
     - Returns: A future to the CompleteMultipartUploadOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func completeMultipartUpload(
            input: S3Model.CompleteMultipartUploadRequest) -> EventLoopFuture<S3Model.CompleteMultipartUploadOutput>

    /**
     Invokes the CopyObject operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CopyObjectRequest object being passed to this operation.
     - Returns: A future to the CopyObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: objectNotInActiveTier.
     */
    func copyObject(
            input: S3Model.CopyObjectRequest) -> EventLoopFuture<S3Model.CopyObjectOutput>

    /**
     Invokes the CreateBucket operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateBucketRequest object being passed to this operation.
     - Returns: A future to the CreateBucketOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: bucketAlreadyExists, bucketAlreadyOwnedByYou.
     */
    func createBucket(
            input: S3Model.CreateBucketRequest) -> EventLoopFuture<S3Model.CreateBucketOutput>

    /**
     Invokes the CreateMultipartUpload operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateMultipartUploadRequest object being passed to this operation.
     - Returns: A future to the CreateMultipartUploadOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createMultipartUpload(
            input: S3Model.CreateMultipartUploadRequest) -> EventLoopFuture<S3Model.CreateMultipartUploadOutput>

    /**
     Invokes the DeleteBucket operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteBucketRequest object being passed to this operation.
     */
    func deleteBucket(
            input: S3Model.DeleteBucketRequest) -> EventLoopFuture<Void>

    /**
     Invokes the DeleteBucketAnalyticsConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteBucketAnalyticsConfigurationRequest object being passed to this operation.
     */
    func deleteBucketAnalyticsConfiguration(
            input: S3Model.DeleteBucketAnalyticsConfigurationRequest) -> EventLoopFuture<Void>

    /**
     Invokes the DeleteBucketCors operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteBucketCorsRequest object being passed to this operation.
     */
    func deleteBucketCors(
            input: S3Model.DeleteBucketCorsRequest) -> EventLoopFuture<Void>

    /**
     Invokes the DeleteBucketEncryption operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteBucketEncryptionRequest object being passed to this operation.
     */
    func deleteBucketEncryption(
            input: S3Model.DeleteBucketEncryptionRequest) -> EventLoopFuture<Void>

    /**
     Invokes the DeleteBucketIntelligentTieringConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteBucketIntelligentTieringConfigurationRequest object being passed to this operation.
     */
    func deleteBucketIntelligentTieringConfiguration(
            input: S3Model.DeleteBucketIntelligentTieringConfigurationRequest) -> EventLoopFuture<Void>

    /**
     Invokes the DeleteBucketInventoryConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteBucketInventoryConfigurationRequest object being passed to this operation.
     */
    func deleteBucketInventoryConfiguration(
            input: S3Model.DeleteBucketInventoryConfigurationRequest) -> EventLoopFuture<Void>

    /**
     Invokes the DeleteBucketLifecycle operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteBucketLifecycleRequest object being passed to this operation.
     */
    func deleteBucketLifecycle(
            input: S3Model.DeleteBucketLifecycleRequest) -> EventLoopFuture<Void>

    /**
     Invokes the DeleteBucketMetricsConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteBucketMetricsConfigurationRequest object being passed to this operation.
     */
    func deleteBucketMetricsConfiguration(
            input: S3Model.DeleteBucketMetricsConfigurationRequest) -> EventLoopFuture<Void>

    /**
     Invokes the DeleteBucketOwnershipControls operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteBucketOwnershipControlsRequest object being passed to this operation.
     */
    func deleteBucketOwnershipControls(
            input: S3Model.DeleteBucketOwnershipControlsRequest) -> EventLoopFuture<Void>

    /**
     Invokes the DeleteBucketPolicy operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteBucketPolicyRequest object being passed to this operation.
     */
    func deleteBucketPolicy(
            input: S3Model.DeleteBucketPolicyRequest) -> EventLoopFuture<Void>

    /**
     Invokes the DeleteBucketReplication operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteBucketReplicationRequest object being passed to this operation.
     */
    func deleteBucketReplication(
            input: S3Model.DeleteBucketReplicationRequest) -> EventLoopFuture<Void>

    /**
     Invokes the DeleteBucketTagging operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteBucketTaggingRequest object being passed to this operation.
     */
    func deleteBucketTagging(
            input: S3Model.DeleteBucketTaggingRequest) -> EventLoopFuture<Void>

    /**
     Invokes the DeleteBucketWebsite operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteBucketWebsiteRequest object being passed to this operation.
     */
    func deleteBucketWebsite(
            input: S3Model.DeleteBucketWebsiteRequest) -> EventLoopFuture<Void>

    /**
     Invokes the DeleteObject operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteObjectRequest object being passed to this operation.
     - Returns: A future to the DeleteObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteObject(
            input: S3Model.DeleteObjectRequest) -> EventLoopFuture<S3Model.DeleteObjectOutput>

    /**
     Invokes the DeleteObjectTagging operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteObjectTaggingRequest object being passed to this operation.
     - Returns: A future to the DeleteObjectTaggingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteObjectTagging(
            input: S3Model.DeleteObjectTaggingRequest) -> EventLoopFuture<S3Model.DeleteObjectTaggingOutput>

    /**
     Invokes the DeleteObjects operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteObjectsRequest object being passed to this operation.
     - Returns: A future to the DeleteObjectsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteObjects(
            input: S3Model.DeleteObjectsRequest) -> EventLoopFuture<S3Model.DeleteObjectsOutput>

    /**
     Invokes the DeletePublicAccessBlock operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeletePublicAccessBlockRequest object being passed to this operation.
     */
    func deletePublicAccessBlock(
            input: S3Model.DeletePublicAccessBlockRequest) -> EventLoopFuture<Void>

    /**
     Invokes the GetBucketAccelerateConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetBucketAccelerateConfigurationRequest object being passed to this operation.
     - Returns: A future to the GetBucketAccelerateConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketAccelerateConfiguration(
            input: S3Model.GetBucketAccelerateConfigurationRequest) -> EventLoopFuture<S3Model.GetBucketAccelerateConfigurationOutput>

    /**
     Invokes the GetBucketAcl operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetBucketAclRequest object being passed to this operation.
     - Returns: A future to the GetBucketAclOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketAcl(
            input: S3Model.GetBucketAclRequest) -> EventLoopFuture<S3Model.GetBucketAclOutput>

    /**
     Invokes the GetBucketAnalyticsConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetBucketAnalyticsConfigurationRequest object being passed to this operation.
     - Returns: A future to the GetBucketAnalyticsConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketAnalyticsConfiguration(
            input: S3Model.GetBucketAnalyticsConfigurationRequest) -> EventLoopFuture<S3Model.GetBucketAnalyticsConfigurationOutput>

    /**
     Invokes the GetBucketCors operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetBucketCorsRequest object being passed to this operation.
     - Returns: A future to the GetBucketCorsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketCors(
            input: S3Model.GetBucketCorsRequest) -> EventLoopFuture<S3Model.GetBucketCorsOutput>

    /**
     Invokes the GetBucketEncryption operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetBucketEncryptionRequest object being passed to this operation.
     - Returns: A future to the GetBucketEncryptionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketEncryption(
            input: S3Model.GetBucketEncryptionRequest) -> EventLoopFuture<S3Model.GetBucketEncryptionOutput>

    /**
     Invokes the GetBucketIntelligentTieringConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetBucketIntelligentTieringConfigurationRequest object being passed to this operation.
     - Returns: A future to the GetBucketIntelligentTieringConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketIntelligentTieringConfiguration(
            input: S3Model.GetBucketIntelligentTieringConfigurationRequest) -> EventLoopFuture<S3Model.GetBucketIntelligentTieringConfigurationOutput>

    /**
     Invokes the GetBucketInventoryConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetBucketInventoryConfigurationRequest object being passed to this operation.
     - Returns: A future to the GetBucketInventoryConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketInventoryConfiguration(
            input: S3Model.GetBucketInventoryConfigurationRequest) -> EventLoopFuture<S3Model.GetBucketInventoryConfigurationOutput>

    /**
     Invokes the GetBucketLifecycle operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetBucketLifecycleRequest object being passed to this operation.
     - Returns: A future to the GetBucketLifecycleOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketLifecycle(
            input: S3Model.GetBucketLifecycleRequest) -> EventLoopFuture<S3Model.GetBucketLifecycleOutput>

    /**
     Invokes the GetBucketLifecycleConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetBucketLifecycleConfigurationRequest object being passed to this operation.
     - Returns: A future to the GetBucketLifecycleConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketLifecycleConfiguration(
            input: S3Model.GetBucketLifecycleConfigurationRequest) -> EventLoopFuture<S3Model.GetBucketLifecycleConfigurationOutput>

    /**
     Invokes the GetBucketLocation operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetBucketLocationRequest object being passed to this operation.
     - Returns: A future to the GetBucketLocationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketLocation(
            input: S3Model.GetBucketLocationRequest) -> EventLoopFuture<S3Model.GetBucketLocationOutput>

    /**
     Invokes the GetBucketLogging operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetBucketLoggingRequest object being passed to this operation.
     - Returns: A future to the GetBucketLoggingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketLogging(
            input: S3Model.GetBucketLoggingRequest) -> EventLoopFuture<S3Model.GetBucketLoggingOutput>

    /**
     Invokes the GetBucketMetricsConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetBucketMetricsConfigurationRequest object being passed to this operation.
     - Returns: A future to the GetBucketMetricsConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketMetricsConfiguration(
            input: S3Model.GetBucketMetricsConfigurationRequest) -> EventLoopFuture<S3Model.GetBucketMetricsConfigurationOutput>

    /**
     Invokes the GetBucketNotification operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetBucketNotificationConfigurationRequest object being passed to this operation.
     - Returns: A future to the NotificationConfigurationDeprecated object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketNotification(
            input: S3Model.GetBucketNotificationConfigurationRequest) -> EventLoopFuture<S3Model.NotificationConfigurationDeprecated>

    /**
     Invokes the GetBucketNotificationConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetBucketNotificationConfigurationRequest object being passed to this operation.
     - Returns: A future to the NotificationConfiguration object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketNotificationConfiguration(
            input: S3Model.GetBucketNotificationConfigurationRequest) -> EventLoopFuture<S3Model.NotificationConfiguration>

    /**
     Invokes the GetBucketOwnershipControls operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetBucketOwnershipControlsRequest object being passed to this operation.
     - Returns: A future to the GetBucketOwnershipControlsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketOwnershipControls(
            input: S3Model.GetBucketOwnershipControlsRequest) -> EventLoopFuture<S3Model.GetBucketOwnershipControlsOutput>

    /**
     Invokes the GetBucketPolicy operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetBucketPolicyRequest object being passed to this operation.
     - Returns: A future to the GetBucketPolicyOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketPolicy(
            input: S3Model.GetBucketPolicyRequest) -> EventLoopFuture<S3Model.GetBucketPolicyOutput>

    /**
     Invokes the GetBucketPolicyStatus operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetBucketPolicyStatusRequest object being passed to this operation.
     - Returns: A future to the GetBucketPolicyStatusOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketPolicyStatus(
            input: S3Model.GetBucketPolicyStatusRequest) -> EventLoopFuture<S3Model.GetBucketPolicyStatusOutput>

    /**
     Invokes the GetBucketReplication operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetBucketReplicationRequest object being passed to this operation.
     - Returns: A future to the GetBucketReplicationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketReplication(
            input: S3Model.GetBucketReplicationRequest) -> EventLoopFuture<S3Model.GetBucketReplicationOutput>

    /**
     Invokes the GetBucketRequestPayment operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetBucketRequestPaymentRequest object being passed to this operation.
     - Returns: A future to the GetBucketRequestPaymentOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketRequestPayment(
            input: S3Model.GetBucketRequestPaymentRequest) -> EventLoopFuture<S3Model.GetBucketRequestPaymentOutput>

    /**
     Invokes the GetBucketTagging operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetBucketTaggingRequest object being passed to this operation.
     - Returns: A future to the GetBucketTaggingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketTagging(
            input: S3Model.GetBucketTaggingRequest) -> EventLoopFuture<S3Model.GetBucketTaggingOutput>

    /**
     Invokes the GetBucketVersioning operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetBucketVersioningRequest object being passed to this operation.
     - Returns: A future to the GetBucketVersioningOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketVersioning(
            input: S3Model.GetBucketVersioningRequest) -> EventLoopFuture<S3Model.GetBucketVersioningOutput>

    /**
     Invokes the GetBucketWebsite operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetBucketWebsiteRequest object being passed to this operation.
     - Returns: A future to the GetBucketWebsiteOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getBucketWebsite(
            input: S3Model.GetBucketWebsiteRequest) -> EventLoopFuture<S3Model.GetBucketWebsiteOutput>

    /**
     Invokes the GetObject operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetObjectRequest object being passed to this operation.
     - Returns: A future to the GetObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidObjectState, noSuchKey.
     */
    func getObject(
            input: S3Model.GetObjectRequest) -> EventLoopFuture<S3Model.GetObjectOutput>

    /**
     Invokes the GetObjectAcl operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetObjectAclRequest object being passed to this operation.
     - Returns: A future to the GetObjectAclOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: noSuchKey.
     */
    func getObjectAcl(
            input: S3Model.GetObjectAclRequest) -> EventLoopFuture<S3Model.GetObjectAclOutput>

    /**
     Invokes the GetObjectLegalHold operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetObjectLegalHoldRequest object being passed to this operation.
     - Returns: A future to the GetObjectLegalHoldOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getObjectLegalHold(
            input: S3Model.GetObjectLegalHoldRequest) -> EventLoopFuture<S3Model.GetObjectLegalHoldOutput>

    /**
     Invokes the GetObjectLockConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetObjectLockConfigurationRequest object being passed to this operation.
     - Returns: A future to the GetObjectLockConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getObjectLockConfiguration(
            input: S3Model.GetObjectLockConfigurationRequest) -> EventLoopFuture<S3Model.GetObjectLockConfigurationOutput>

    /**
     Invokes the GetObjectRetention operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetObjectRetentionRequest object being passed to this operation.
     - Returns: A future to the GetObjectRetentionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getObjectRetention(
            input: S3Model.GetObjectRetentionRequest) -> EventLoopFuture<S3Model.GetObjectRetentionOutput>

    /**
     Invokes the GetObjectTagging operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetObjectTaggingRequest object being passed to this operation.
     - Returns: A future to the GetObjectTaggingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getObjectTagging(
            input: S3Model.GetObjectTaggingRequest) -> EventLoopFuture<S3Model.GetObjectTaggingOutput>

    /**
     Invokes the GetObjectTorrent operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetObjectTorrentRequest object being passed to this operation.
     - Returns: A future to the GetObjectTorrentOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getObjectTorrent(
            input: S3Model.GetObjectTorrentRequest) -> EventLoopFuture<S3Model.GetObjectTorrentOutput>

    /**
     Invokes the GetPublicAccessBlock operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetPublicAccessBlockRequest object being passed to this operation.
     - Returns: A future to the GetPublicAccessBlockOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getPublicAccessBlock(
            input: S3Model.GetPublicAccessBlockRequest) -> EventLoopFuture<S3Model.GetPublicAccessBlockOutput>

    /**
     Invokes the HeadBucket operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated HeadBucketRequest object being passed to this operation.
           The possible errors are: noSuchBucket.
     */
    func headBucket(
            input: S3Model.HeadBucketRequest) -> EventLoopFuture<Void>

    /**
     Invokes the HeadObject operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated HeadObjectRequest object being passed to this operation.
     - Returns: A future to the HeadObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: noSuchKey.
     */
    func headObject(
            input: S3Model.HeadObjectRequest) -> EventLoopFuture<S3Model.HeadObjectOutput>

    /**
     Invokes the ListBucketAnalyticsConfigurations operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListBucketAnalyticsConfigurationsRequest object being passed to this operation.
     - Returns: A future to the ListBucketAnalyticsConfigurationsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listBucketAnalyticsConfigurations(
            input: S3Model.ListBucketAnalyticsConfigurationsRequest) -> EventLoopFuture<S3Model.ListBucketAnalyticsConfigurationsOutput>

    /**
     Invokes the ListBucketIntelligentTieringConfigurations operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListBucketIntelligentTieringConfigurationsRequest object being passed to this operation.
     - Returns: A future to the ListBucketIntelligentTieringConfigurationsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listBucketIntelligentTieringConfigurations(
            input: S3Model.ListBucketIntelligentTieringConfigurationsRequest) -> EventLoopFuture<S3Model.ListBucketIntelligentTieringConfigurationsOutput>

    /**
     Invokes the ListBucketInventoryConfigurations operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListBucketInventoryConfigurationsRequest object being passed to this operation.
     - Returns: A future to the ListBucketInventoryConfigurationsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listBucketInventoryConfigurations(
            input: S3Model.ListBucketInventoryConfigurationsRequest) -> EventLoopFuture<S3Model.ListBucketInventoryConfigurationsOutput>

    /**
     Invokes the ListBucketMetricsConfigurations operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListBucketMetricsConfigurationsRequest object being passed to this operation.
     - Returns: A future to the ListBucketMetricsConfigurationsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listBucketMetricsConfigurations(
            input: S3Model.ListBucketMetricsConfigurationsRequest) -> EventLoopFuture<S3Model.ListBucketMetricsConfigurationsOutput>

    /**
     Invokes the ListBuckets operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.
     - Returns: A future to the ListBucketsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listBuckets() -> EventLoopFuture<S3Model.ListBucketsOutput>

    /**
     Invokes the ListMultipartUploads operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListMultipartUploadsRequest object being passed to this operation.
     - Returns: A future to the ListMultipartUploadsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listMultipartUploads(
            input: S3Model.ListMultipartUploadsRequest) -> EventLoopFuture<S3Model.ListMultipartUploadsOutput>

    /**
     Invokes the ListObjectVersions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListObjectVersionsRequest object being passed to this operation.
     - Returns: A future to the ListObjectVersionsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listObjectVersions(
            input: S3Model.ListObjectVersionsRequest) -> EventLoopFuture<S3Model.ListObjectVersionsOutput>

    /**
     Invokes the ListObjects operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListObjectsRequest object being passed to this operation.
     - Returns: A future to the ListObjectsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: noSuchBucket.
     */
    func listObjects(
            input: S3Model.ListObjectsRequest) -> EventLoopFuture<S3Model.ListObjectsOutput>

    /**
     Invokes the ListObjectsV2 operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListObjectsV2Request object being passed to this operation.
     - Returns: A future to the ListObjectsV2Output object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: noSuchBucket.
     */
    func listObjectsV2(
            input: S3Model.ListObjectsV2Request) -> EventLoopFuture<S3Model.ListObjectsV2Output>

    /**
     Invokes the ListParts operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListPartsRequest object being passed to this operation.
     - Returns: A future to the ListPartsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listParts(
            input: S3Model.ListPartsRequest) -> EventLoopFuture<S3Model.ListPartsOutput>

    /**
     Invokes the PutBucketAccelerateConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketAccelerateConfigurationRequest object being passed to this operation.
     */
    func putBucketAccelerateConfiguration(
            input: S3Model.PutBucketAccelerateConfigurationRequest) -> EventLoopFuture<Void>

    /**
     Invokes the PutBucketAcl operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketAclRequest object being passed to this operation.
     */
    func putBucketAcl(
            input: S3Model.PutBucketAclRequest) -> EventLoopFuture<Void>

    /**
     Invokes the PutBucketAnalyticsConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketAnalyticsConfigurationRequest object being passed to this operation.
     */
    func putBucketAnalyticsConfiguration(
            input: S3Model.PutBucketAnalyticsConfigurationRequest) -> EventLoopFuture<Void>

    /**
     Invokes the PutBucketCors operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketCorsRequest object being passed to this operation.
     */
    func putBucketCors(
            input: S3Model.PutBucketCorsRequest) -> EventLoopFuture<Void>

    /**
     Invokes the PutBucketEncryption operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketEncryptionRequest object being passed to this operation.
     */
    func putBucketEncryption(
            input: S3Model.PutBucketEncryptionRequest) -> EventLoopFuture<Void>

    /**
     Invokes the PutBucketIntelligentTieringConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketIntelligentTieringConfigurationRequest object being passed to this operation.
     */
    func putBucketIntelligentTieringConfiguration(
            input: S3Model.PutBucketIntelligentTieringConfigurationRequest) -> EventLoopFuture<Void>

    /**
     Invokes the PutBucketInventoryConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketInventoryConfigurationRequest object being passed to this operation.
     */
    func putBucketInventoryConfiguration(
            input: S3Model.PutBucketInventoryConfigurationRequest) -> EventLoopFuture<Void>

    /**
     Invokes the PutBucketLifecycle operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketLifecycleRequest object being passed to this operation.
     */
    func putBucketLifecycle(
            input: S3Model.PutBucketLifecycleRequest) -> EventLoopFuture<Void>

    /**
     Invokes the PutBucketLifecycleConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketLifecycleConfigurationRequest object being passed to this operation.
     */
    func putBucketLifecycleConfiguration(
            input: S3Model.PutBucketLifecycleConfigurationRequest) -> EventLoopFuture<Void>

    /**
     Invokes the PutBucketLogging operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketLoggingRequest object being passed to this operation.
     */
    func putBucketLogging(
            input: S3Model.PutBucketLoggingRequest) -> EventLoopFuture<Void>

    /**
     Invokes the PutBucketMetricsConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketMetricsConfigurationRequest object being passed to this operation.
     */
    func putBucketMetricsConfiguration(
            input: S3Model.PutBucketMetricsConfigurationRequest) -> EventLoopFuture<Void>

    /**
     Invokes the PutBucketNotification operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketNotificationRequest object being passed to this operation.
     */
    func putBucketNotification(
            input: S3Model.PutBucketNotificationRequest) -> EventLoopFuture<Void>

    /**
     Invokes the PutBucketNotificationConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketNotificationConfigurationRequest object being passed to this operation.
     */
    func putBucketNotificationConfiguration(
            input: S3Model.PutBucketNotificationConfigurationRequest) -> EventLoopFuture<Void>

    /**
     Invokes the PutBucketOwnershipControls operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketOwnershipControlsRequest object being passed to this operation.
     */
    func putBucketOwnershipControls(
            input: S3Model.PutBucketOwnershipControlsRequest) -> EventLoopFuture<Void>

    /**
     Invokes the PutBucketPolicy operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketPolicyRequest object being passed to this operation.
     */
    func putBucketPolicy(
            input: S3Model.PutBucketPolicyRequest) -> EventLoopFuture<Void>

    /**
     Invokes the PutBucketReplication operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketReplicationRequest object being passed to this operation.
     */
    func putBucketReplication(
            input: S3Model.PutBucketReplicationRequest) -> EventLoopFuture<Void>

    /**
     Invokes the PutBucketRequestPayment operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketRequestPaymentRequest object being passed to this operation.
     */
    func putBucketRequestPayment(
            input: S3Model.PutBucketRequestPaymentRequest) -> EventLoopFuture<Void>

    /**
     Invokes the PutBucketTagging operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketTaggingRequest object being passed to this operation.
     */
    func putBucketTagging(
            input: S3Model.PutBucketTaggingRequest) -> EventLoopFuture<Void>

    /**
     Invokes the PutBucketVersioning operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketVersioningRequest object being passed to this operation.
     */
    func putBucketVersioning(
            input: S3Model.PutBucketVersioningRequest) -> EventLoopFuture<Void>

    /**
     Invokes the PutBucketWebsite operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketWebsiteRequest object being passed to this operation.
     */
    func putBucketWebsite(
            input: S3Model.PutBucketWebsiteRequest) -> EventLoopFuture<Void>

    /**
     Invokes the PutObject operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutObjectRequest object being passed to this operation.
     - Returns: A future to the PutObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func putObject(
            input: S3Model.PutObjectRequest) -> EventLoopFuture<S3Model.PutObjectOutput>

    /**
     Invokes the PutObjectAcl operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutObjectAclRequest object being passed to this operation.
     - Returns: A future to the PutObjectAclOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: noSuchKey.
     */
    func putObjectAcl(
            input: S3Model.PutObjectAclRequest) -> EventLoopFuture<S3Model.PutObjectAclOutput>

    /**
     Invokes the PutObjectLegalHold operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutObjectLegalHoldRequest object being passed to this operation.
     - Returns: A future to the PutObjectLegalHoldOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func putObjectLegalHold(
            input: S3Model.PutObjectLegalHoldRequest) -> EventLoopFuture<S3Model.PutObjectLegalHoldOutput>

    /**
     Invokes the PutObjectLockConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutObjectLockConfigurationRequest object being passed to this operation.
     - Returns: A future to the PutObjectLockConfigurationOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func putObjectLockConfiguration(
            input: S3Model.PutObjectLockConfigurationRequest) -> EventLoopFuture<S3Model.PutObjectLockConfigurationOutput>

    /**
     Invokes the PutObjectRetention operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutObjectRetentionRequest object being passed to this operation.
     - Returns: A future to the PutObjectRetentionOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func putObjectRetention(
            input: S3Model.PutObjectRetentionRequest) -> EventLoopFuture<S3Model.PutObjectRetentionOutput>

    /**
     Invokes the PutObjectTagging operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutObjectTaggingRequest object being passed to this operation.
     - Returns: A future to the PutObjectTaggingOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func putObjectTagging(
            input: S3Model.PutObjectTaggingRequest) -> EventLoopFuture<S3Model.PutObjectTaggingOutput>

    /**
     Invokes the PutPublicAccessBlock operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutPublicAccessBlockRequest object being passed to this operation.
     */
    func putPublicAccessBlock(
            input: S3Model.PutPublicAccessBlockRequest) -> EventLoopFuture<Void>

    /**
     Invokes the RestoreObject operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RestoreObjectRequest object being passed to this operation.
     - Returns: A future to the RestoreObjectOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: objectAlreadyInActiveTier.
     */
    func restoreObject(
            input: S3Model.RestoreObjectRequest) -> EventLoopFuture<S3Model.RestoreObjectOutput>

    /**
     Invokes the SelectObjectContent operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SelectObjectContentRequest object being passed to this operation.
     - Returns: A future to the SelectObjectContentOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func selectObjectContent(
            input: S3Model.SelectObjectContentRequest) -> EventLoopFuture<S3Model.SelectObjectContentOutput>

    /**
     Invokes the UploadPart operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UploadPartRequest object being passed to this operation.
     - Returns: A future to the UploadPartOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func uploadPart(
            input: S3Model.UploadPartRequest) -> EventLoopFuture<S3Model.UploadPartOutput>

    /**
     Invokes the UploadPartCopy operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UploadPartCopyRequest object being passed to this operation.
     - Returns: A future to the UploadPartCopyOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func uploadPartCopy(
            input: S3Model.UploadPartCopyRequest) -> EventLoopFuture<S3Model.UploadPartCopyOutput>
}
