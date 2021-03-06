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
// MockS3Client.swift
// S3Client
//

import Foundation
import S3Model
import SmokeAWSCore
import SmokeHTTPClient
import NIO

/**
 Mock Client for the S3 service by default returns the `__default` property of its return type.
 */
public struct MockS3Client: S3ClientProtocol {
    let eventLoop: EventLoop
    let typedErrorProvider: (Swift.Error) -> S3Error = { $0.asTypedError() }
    let abortMultipartUploadEventLoopFutureAsyncOverride: AbortMultipartUploadEventLoopFutureAsyncType?
    let completeMultipartUploadEventLoopFutureAsyncOverride: CompleteMultipartUploadEventLoopFutureAsyncType?
    let copyObjectEventLoopFutureAsyncOverride: CopyObjectEventLoopFutureAsyncType?
    let createBucketEventLoopFutureAsyncOverride: CreateBucketEventLoopFutureAsyncType?
    let createMultipartUploadEventLoopFutureAsyncOverride: CreateMultipartUploadEventLoopFutureAsyncType?
    let deleteBucketEventLoopFutureAsyncOverride: DeleteBucketEventLoopFutureAsyncType?
    let deleteBucketAnalyticsConfigurationEventLoopFutureAsyncOverride: DeleteBucketAnalyticsConfigurationEventLoopFutureAsyncType?
    let deleteBucketCorsEventLoopFutureAsyncOverride: DeleteBucketCorsEventLoopFutureAsyncType?
    let deleteBucketEncryptionEventLoopFutureAsyncOverride: DeleteBucketEncryptionEventLoopFutureAsyncType?
    let deleteBucketIntelligentTieringConfigurationEventLoopFutureAsyncOverride: DeleteBucketIntelligentTieringConfigurationEventLoopFutureAsyncType?
    let deleteBucketInventoryConfigurationEventLoopFutureAsyncOverride: DeleteBucketInventoryConfigurationEventLoopFutureAsyncType?
    let deleteBucketLifecycleEventLoopFutureAsyncOverride: DeleteBucketLifecycleEventLoopFutureAsyncType?
    let deleteBucketMetricsConfigurationEventLoopFutureAsyncOverride: DeleteBucketMetricsConfigurationEventLoopFutureAsyncType?
    let deleteBucketOwnershipControlsEventLoopFutureAsyncOverride: DeleteBucketOwnershipControlsEventLoopFutureAsyncType?
    let deleteBucketPolicyEventLoopFutureAsyncOverride: DeleteBucketPolicyEventLoopFutureAsyncType?
    let deleteBucketReplicationEventLoopFutureAsyncOverride: DeleteBucketReplicationEventLoopFutureAsyncType?
    let deleteBucketTaggingEventLoopFutureAsyncOverride: DeleteBucketTaggingEventLoopFutureAsyncType?
    let deleteBucketWebsiteEventLoopFutureAsyncOverride: DeleteBucketWebsiteEventLoopFutureAsyncType?
    let deleteObjectEventLoopFutureAsyncOverride: DeleteObjectEventLoopFutureAsyncType?
    let deleteObjectTaggingEventLoopFutureAsyncOverride: DeleteObjectTaggingEventLoopFutureAsyncType?
    let deleteObjectsEventLoopFutureAsyncOverride: DeleteObjectsEventLoopFutureAsyncType?
    let deletePublicAccessBlockEventLoopFutureAsyncOverride: DeletePublicAccessBlockEventLoopFutureAsyncType?
    let getBucketAccelerateConfigurationEventLoopFutureAsyncOverride: GetBucketAccelerateConfigurationEventLoopFutureAsyncType?
    let getBucketAclEventLoopFutureAsyncOverride: GetBucketAclEventLoopFutureAsyncType?
    let getBucketAnalyticsConfigurationEventLoopFutureAsyncOverride: GetBucketAnalyticsConfigurationEventLoopFutureAsyncType?
    let getBucketCorsEventLoopFutureAsyncOverride: GetBucketCorsEventLoopFutureAsyncType?
    let getBucketEncryptionEventLoopFutureAsyncOverride: GetBucketEncryptionEventLoopFutureAsyncType?
    let getBucketIntelligentTieringConfigurationEventLoopFutureAsyncOverride: GetBucketIntelligentTieringConfigurationEventLoopFutureAsyncType?
    let getBucketInventoryConfigurationEventLoopFutureAsyncOverride: GetBucketInventoryConfigurationEventLoopFutureAsyncType?
    let getBucketLifecycleEventLoopFutureAsyncOverride: GetBucketLifecycleEventLoopFutureAsyncType?
    let getBucketLifecycleConfigurationEventLoopFutureAsyncOverride: GetBucketLifecycleConfigurationEventLoopFutureAsyncType?
    let getBucketLocationEventLoopFutureAsyncOverride: GetBucketLocationEventLoopFutureAsyncType?
    let getBucketLoggingEventLoopFutureAsyncOverride: GetBucketLoggingEventLoopFutureAsyncType?
    let getBucketMetricsConfigurationEventLoopFutureAsyncOverride: GetBucketMetricsConfigurationEventLoopFutureAsyncType?
    let getBucketNotificationEventLoopFutureAsyncOverride: GetBucketNotificationEventLoopFutureAsyncType?
    let getBucketNotificationConfigurationEventLoopFutureAsyncOverride: GetBucketNotificationConfigurationEventLoopFutureAsyncType?
    let getBucketOwnershipControlsEventLoopFutureAsyncOverride: GetBucketOwnershipControlsEventLoopFutureAsyncType?
    let getBucketPolicyEventLoopFutureAsyncOverride: GetBucketPolicyEventLoopFutureAsyncType?
    let getBucketPolicyStatusEventLoopFutureAsyncOverride: GetBucketPolicyStatusEventLoopFutureAsyncType?
    let getBucketReplicationEventLoopFutureAsyncOverride: GetBucketReplicationEventLoopFutureAsyncType?
    let getBucketRequestPaymentEventLoopFutureAsyncOverride: GetBucketRequestPaymentEventLoopFutureAsyncType?
    let getBucketTaggingEventLoopFutureAsyncOverride: GetBucketTaggingEventLoopFutureAsyncType?
    let getBucketVersioningEventLoopFutureAsyncOverride: GetBucketVersioningEventLoopFutureAsyncType?
    let getBucketWebsiteEventLoopFutureAsyncOverride: GetBucketWebsiteEventLoopFutureAsyncType?
    let getObjectEventLoopFutureAsyncOverride: GetObjectEventLoopFutureAsyncType?
    let getObjectAclEventLoopFutureAsyncOverride: GetObjectAclEventLoopFutureAsyncType?
    let getObjectLegalHoldEventLoopFutureAsyncOverride: GetObjectLegalHoldEventLoopFutureAsyncType?
    let getObjectLockConfigurationEventLoopFutureAsyncOverride: GetObjectLockConfigurationEventLoopFutureAsyncType?
    let getObjectRetentionEventLoopFutureAsyncOverride: GetObjectRetentionEventLoopFutureAsyncType?
    let getObjectTaggingEventLoopFutureAsyncOverride: GetObjectTaggingEventLoopFutureAsyncType?
    let getObjectTorrentEventLoopFutureAsyncOverride: GetObjectTorrentEventLoopFutureAsyncType?
    let getPublicAccessBlockEventLoopFutureAsyncOverride: GetPublicAccessBlockEventLoopFutureAsyncType?
    let headBucketEventLoopFutureAsyncOverride: HeadBucketEventLoopFutureAsyncType?
    let headObjectEventLoopFutureAsyncOverride: HeadObjectEventLoopFutureAsyncType?
    let listBucketAnalyticsConfigurationsEventLoopFutureAsyncOverride: ListBucketAnalyticsConfigurationsEventLoopFutureAsyncType?
    let listBucketIntelligentTieringConfigurationsEventLoopFutureAsyncOverride: ListBucketIntelligentTieringConfigurationsEventLoopFutureAsyncType?
    let listBucketInventoryConfigurationsEventLoopFutureAsyncOverride: ListBucketInventoryConfigurationsEventLoopFutureAsyncType?
    let listBucketMetricsConfigurationsEventLoopFutureAsyncOverride: ListBucketMetricsConfigurationsEventLoopFutureAsyncType?
    let listBucketsEventLoopFutureAsyncOverride: ListBucketsEventLoopFutureAsyncType?
    let listMultipartUploadsEventLoopFutureAsyncOverride: ListMultipartUploadsEventLoopFutureAsyncType?
    let listObjectVersionsEventLoopFutureAsyncOverride: ListObjectVersionsEventLoopFutureAsyncType?
    let listObjectsEventLoopFutureAsyncOverride: ListObjectsEventLoopFutureAsyncType?
    let listObjectsV2EventLoopFutureAsyncOverride: ListObjectsV2EventLoopFutureAsyncType?
    let listPartsEventLoopFutureAsyncOverride: ListPartsEventLoopFutureAsyncType?
    let putBucketAccelerateConfigurationEventLoopFutureAsyncOverride: PutBucketAccelerateConfigurationEventLoopFutureAsyncType?
    let putBucketAclEventLoopFutureAsyncOverride: PutBucketAclEventLoopFutureAsyncType?
    let putBucketAnalyticsConfigurationEventLoopFutureAsyncOverride: PutBucketAnalyticsConfigurationEventLoopFutureAsyncType?
    let putBucketCorsEventLoopFutureAsyncOverride: PutBucketCorsEventLoopFutureAsyncType?
    let putBucketEncryptionEventLoopFutureAsyncOverride: PutBucketEncryptionEventLoopFutureAsyncType?
    let putBucketIntelligentTieringConfigurationEventLoopFutureAsyncOverride: PutBucketIntelligentTieringConfigurationEventLoopFutureAsyncType?
    let putBucketInventoryConfigurationEventLoopFutureAsyncOverride: PutBucketInventoryConfigurationEventLoopFutureAsyncType?
    let putBucketLifecycleEventLoopFutureAsyncOverride: PutBucketLifecycleEventLoopFutureAsyncType?
    let putBucketLifecycleConfigurationEventLoopFutureAsyncOverride: PutBucketLifecycleConfigurationEventLoopFutureAsyncType?
    let putBucketLoggingEventLoopFutureAsyncOverride: PutBucketLoggingEventLoopFutureAsyncType?
    let putBucketMetricsConfigurationEventLoopFutureAsyncOverride: PutBucketMetricsConfigurationEventLoopFutureAsyncType?
    let putBucketNotificationEventLoopFutureAsyncOverride: PutBucketNotificationEventLoopFutureAsyncType?
    let putBucketNotificationConfigurationEventLoopFutureAsyncOverride: PutBucketNotificationConfigurationEventLoopFutureAsyncType?
    let putBucketOwnershipControlsEventLoopFutureAsyncOverride: PutBucketOwnershipControlsEventLoopFutureAsyncType?
    let putBucketPolicyEventLoopFutureAsyncOverride: PutBucketPolicyEventLoopFutureAsyncType?
    let putBucketReplicationEventLoopFutureAsyncOverride: PutBucketReplicationEventLoopFutureAsyncType?
    let putBucketRequestPaymentEventLoopFutureAsyncOverride: PutBucketRequestPaymentEventLoopFutureAsyncType?
    let putBucketTaggingEventLoopFutureAsyncOverride: PutBucketTaggingEventLoopFutureAsyncType?
    let putBucketVersioningEventLoopFutureAsyncOverride: PutBucketVersioningEventLoopFutureAsyncType?
    let putBucketWebsiteEventLoopFutureAsyncOverride: PutBucketWebsiteEventLoopFutureAsyncType?
    let putObjectEventLoopFutureAsyncOverride: PutObjectEventLoopFutureAsyncType?
    let putObjectAclEventLoopFutureAsyncOverride: PutObjectAclEventLoopFutureAsyncType?
    let putObjectLegalHoldEventLoopFutureAsyncOverride: PutObjectLegalHoldEventLoopFutureAsyncType?
    let putObjectLockConfigurationEventLoopFutureAsyncOverride: PutObjectLockConfigurationEventLoopFutureAsyncType?
    let putObjectRetentionEventLoopFutureAsyncOverride: PutObjectRetentionEventLoopFutureAsyncType?
    let putObjectTaggingEventLoopFutureAsyncOverride: PutObjectTaggingEventLoopFutureAsyncType?
    let putPublicAccessBlockEventLoopFutureAsyncOverride: PutPublicAccessBlockEventLoopFutureAsyncType?
    let restoreObjectEventLoopFutureAsyncOverride: RestoreObjectEventLoopFutureAsyncType?
    let selectObjectContentEventLoopFutureAsyncOverride: SelectObjectContentEventLoopFutureAsyncType?
    let uploadPartEventLoopFutureAsyncOverride: UploadPartEventLoopFutureAsyncType?
    let uploadPartCopyEventLoopFutureAsyncOverride: UploadPartCopyEventLoopFutureAsyncType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(
            eventLoop: EventLoop,
            abortMultipartUploadEventLoopFutureAsync: AbortMultipartUploadEventLoopFutureAsyncType? = nil,
            completeMultipartUploadEventLoopFutureAsync: CompleteMultipartUploadEventLoopFutureAsyncType? = nil,
            copyObjectEventLoopFutureAsync: CopyObjectEventLoopFutureAsyncType? = nil,
            createBucketEventLoopFutureAsync: CreateBucketEventLoopFutureAsyncType? = nil,
            createMultipartUploadEventLoopFutureAsync: CreateMultipartUploadEventLoopFutureAsyncType? = nil,
            deleteBucketEventLoopFutureAsync: DeleteBucketEventLoopFutureAsyncType? = nil,
            deleteBucketAnalyticsConfigurationEventLoopFutureAsync: DeleteBucketAnalyticsConfigurationEventLoopFutureAsyncType? = nil,
            deleteBucketCorsEventLoopFutureAsync: DeleteBucketCorsEventLoopFutureAsyncType? = nil,
            deleteBucketEncryptionEventLoopFutureAsync: DeleteBucketEncryptionEventLoopFutureAsyncType? = nil,
            deleteBucketIntelligentTieringConfigurationEventLoopFutureAsync: DeleteBucketIntelligentTieringConfigurationEventLoopFutureAsyncType? = nil,
            deleteBucketInventoryConfigurationEventLoopFutureAsync: DeleteBucketInventoryConfigurationEventLoopFutureAsyncType? = nil,
            deleteBucketLifecycleEventLoopFutureAsync: DeleteBucketLifecycleEventLoopFutureAsyncType? = nil,
            deleteBucketMetricsConfigurationEventLoopFutureAsync: DeleteBucketMetricsConfigurationEventLoopFutureAsyncType? = nil,
            deleteBucketOwnershipControlsEventLoopFutureAsync: DeleteBucketOwnershipControlsEventLoopFutureAsyncType? = nil,
            deleteBucketPolicyEventLoopFutureAsync: DeleteBucketPolicyEventLoopFutureAsyncType? = nil,
            deleteBucketReplicationEventLoopFutureAsync: DeleteBucketReplicationEventLoopFutureAsyncType? = nil,
            deleteBucketTaggingEventLoopFutureAsync: DeleteBucketTaggingEventLoopFutureAsyncType? = nil,
            deleteBucketWebsiteEventLoopFutureAsync: DeleteBucketWebsiteEventLoopFutureAsyncType? = nil,
            deleteObjectEventLoopFutureAsync: DeleteObjectEventLoopFutureAsyncType? = nil,
            deleteObjectTaggingEventLoopFutureAsync: DeleteObjectTaggingEventLoopFutureAsyncType? = nil,
            deleteObjectsEventLoopFutureAsync: DeleteObjectsEventLoopFutureAsyncType? = nil,
            deletePublicAccessBlockEventLoopFutureAsync: DeletePublicAccessBlockEventLoopFutureAsyncType? = nil,
            getBucketAccelerateConfigurationEventLoopFutureAsync: GetBucketAccelerateConfigurationEventLoopFutureAsyncType? = nil,
            getBucketAclEventLoopFutureAsync: GetBucketAclEventLoopFutureAsyncType? = nil,
            getBucketAnalyticsConfigurationEventLoopFutureAsync: GetBucketAnalyticsConfigurationEventLoopFutureAsyncType? = nil,
            getBucketCorsEventLoopFutureAsync: GetBucketCorsEventLoopFutureAsyncType? = nil,
            getBucketEncryptionEventLoopFutureAsync: GetBucketEncryptionEventLoopFutureAsyncType? = nil,
            getBucketIntelligentTieringConfigurationEventLoopFutureAsync: GetBucketIntelligentTieringConfigurationEventLoopFutureAsyncType? = nil,
            getBucketInventoryConfigurationEventLoopFutureAsync: GetBucketInventoryConfigurationEventLoopFutureAsyncType? = nil,
            getBucketLifecycleEventLoopFutureAsync: GetBucketLifecycleEventLoopFutureAsyncType? = nil,
            getBucketLifecycleConfigurationEventLoopFutureAsync: GetBucketLifecycleConfigurationEventLoopFutureAsyncType? = nil,
            getBucketLocationEventLoopFutureAsync: GetBucketLocationEventLoopFutureAsyncType? = nil,
            getBucketLoggingEventLoopFutureAsync: GetBucketLoggingEventLoopFutureAsyncType? = nil,
            getBucketMetricsConfigurationEventLoopFutureAsync: GetBucketMetricsConfigurationEventLoopFutureAsyncType? = nil,
            getBucketNotificationEventLoopFutureAsync: GetBucketNotificationEventLoopFutureAsyncType? = nil,
            getBucketNotificationConfigurationEventLoopFutureAsync: GetBucketNotificationConfigurationEventLoopFutureAsyncType? = nil,
            getBucketOwnershipControlsEventLoopFutureAsync: GetBucketOwnershipControlsEventLoopFutureAsyncType? = nil,
            getBucketPolicyEventLoopFutureAsync: GetBucketPolicyEventLoopFutureAsyncType? = nil,
            getBucketPolicyStatusEventLoopFutureAsync: GetBucketPolicyStatusEventLoopFutureAsyncType? = nil,
            getBucketReplicationEventLoopFutureAsync: GetBucketReplicationEventLoopFutureAsyncType? = nil,
            getBucketRequestPaymentEventLoopFutureAsync: GetBucketRequestPaymentEventLoopFutureAsyncType? = nil,
            getBucketTaggingEventLoopFutureAsync: GetBucketTaggingEventLoopFutureAsyncType? = nil,
            getBucketVersioningEventLoopFutureAsync: GetBucketVersioningEventLoopFutureAsyncType? = nil,
            getBucketWebsiteEventLoopFutureAsync: GetBucketWebsiteEventLoopFutureAsyncType? = nil,
            getObjectEventLoopFutureAsync: GetObjectEventLoopFutureAsyncType? = nil,
            getObjectAclEventLoopFutureAsync: GetObjectAclEventLoopFutureAsyncType? = nil,
            getObjectLegalHoldEventLoopFutureAsync: GetObjectLegalHoldEventLoopFutureAsyncType? = nil,
            getObjectLockConfigurationEventLoopFutureAsync: GetObjectLockConfigurationEventLoopFutureAsyncType? = nil,
            getObjectRetentionEventLoopFutureAsync: GetObjectRetentionEventLoopFutureAsyncType? = nil,
            getObjectTaggingEventLoopFutureAsync: GetObjectTaggingEventLoopFutureAsyncType? = nil,
            getObjectTorrentEventLoopFutureAsync: GetObjectTorrentEventLoopFutureAsyncType? = nil,
            getPublicAccessBlockEventLoopFutureAsync: GetPublicAccessBlockEventLoopFutureAsyncType? = nil,
            headBucketEventLoopFutureAsync: HeadBucketEventLoopFutureAsyncType? = nil,
            headObjectEventLoopFutureAsync: HeadObjectEventLoopFutureAsyncType? = nil,
            listBucketAnalyticsConfigurationsEventLoopFutureAsync: ListBucketAnalyticsConfigurationsEventLoopFutureAsyncType? = nil,
            listBucketIntelligentTieringConfigurationsEventLoopFutureAsync: ListBucketIntelligentTieringConfigurationsEventLoopFutureAsyncType? = nil,
            listBucketInventoryConfigurationsEventLoopFutureAsync: ListBucketInventoryConfigurationsEventLoopFutureAsyncType? = nil,
            listBucketMetricsConfigurationsEventLoopFutureAsync: ListBucketMetricsConfigurationsEventLoopFutureAsyncType? = nil,
            listBucketsEventLoopFutureAsync: ListBucketsEventLoopFutureAsyncType? = nil,
            listMultipartUploadsEventLoopFutureAsync: ListMultipartUploadsEventLoopFutureAsyncType? = nil,
            listObjectVersionsEventLoopFutureAsync: ListObjectVersionsEventLoopFutureAsyncType? = nil,
            listObjectsEventLoopFutureAsync: ListObjectsEventLoopFutureAsyncType? = nil,
            listObjectsV2EventLoopFutureAsync: ListObjectsV2EventLoopFutureAsyncType? = nil,
            listPartsEventLoopFutureAsync: ListPartsEventLoopFutureAsyncType? = nil,
            putBucketAccelerateConfigurationEventLoopFutureAsync: PutBucketAccelerateConfigurationEventLoopFutureAsyncType? = nil,
            putBucketAclEventLoopFutureAsync: PutBucketAclEventLoopFutureAsyncType? = nil,
            putBucketAnalyticsConfigurationEventLoopFutureAsync: PutBucketAnalyticsConfigurationEventLoopFutureAsyncType? = nil,
            putBucketCorsEventLoopFutureAsync: PutBucketCorsEventLoopFutureAsyncType? = nil,
            putBucketEncryptionEventLoopFutureAsync: PutBucketEncryptionEventLoopFutureAsyncType? = nil,
            putBucketIntelligentTieringConfigurationEventLoopFutureAsync: PutBucketIntelligentTieringConfigurationEventLoopFutureAsyncType? = nil,
            putBucketInventoryConfigurationEventLoopFutureAsync: PutBucketInventoryConfigurationEventLoopFutureAsyncType? = nil,
            putBucketLifecycleEventLoopFutureAsync: PutBucketLifecycleEventLoopFutureAsyncType? = nil,
            putBucketLifecycleConfigurationEventLoopFutureAsync: PutBucketLifecycleConfigurationEventLoopFutureAsyncType? = nil,
            putBucketLoggingEventLoopFutureAsync: PutBucketLoggingEventLoopFutureAsyncType? = nil,
            putBucketMetricsConfigurationEventLoopFutureAsync: PutBucketMetricsConfigurationEventLoopFutureAsyncType? = nil,
            putBucketNotificationEventLoopFutureAsync: PutBucketNotificationEventLoopFutureAsyncType? = nil,
            putBucketNotificationConfigurationEventLoopFutureAsync: PutBucketNotificationConfigurationEventLoopFutureAsyncType? = nil,
            putBucketOwnershipControlsEventLoopFutureAsync: PutBucketOwnershipControlsEventLoopFutureAsyncType? = nil,
            putBucketPolicyEventLoopFutureAsync: PutBucketPolicyEventLoopFutureAsyncType? = nil,
            putBucketReplicationEventLoopFutureAsync: PutBucketReplicationEventLoopFutureAsyncType? = nil,
            putBucketRequestPaymentEventLoopFutureAsync: PutBucketRequestPaymentEventLoopFutureAsyncType? = nil,
            putBucketTaggingEventLoopFutureAsync: PutBucketTaggingEventLoopFutureAsyncType? = nil,
            putBucketVersioningEventLoopFutureAsync: PutBucketVersioningEventLoopFutureAsyncType? = nil,
            putBucketWebsiteEventLoopFutureAsync: PutBucketWebsiteEventLoopFutureAsyncType? = nil,
            putObjectEventLoopFutureAsync: PutObjectEventLoopFutureAsyncType? = nil,
            putObjectAclEventLoopFutureAsync: PutObjectAclEventLoopFutureAsyncType? = nil,
            putObjectLegalHoldEventLoopFutureAsync: PutObjectLegalHoldEventLoopFutureAsyncType? = nil,
            putObjectLockConfigurationEventLoopFutureAsync: PutObjectLockConfigurationEventLoopFutureAsyncType? = nil,
            putObjectRetentionEventLoopFutureAsync: PutObjectRetentionEventLoopFutureAsyncType? = nil,
            putObjectTaggingEventLoopFutureAsync: PutObjectTaggingEventLoopFutureAsyncType? = nil,
            putPublicAccessBlockEventLoopFutureAsync: PutPublicAccessBlockEventLoopFutureAsyncType? = nil,
            restoreObjectEventLoopFutureAsync: RestoreObjectEventLoopFutureAsyncType? = nil,
            selectObjectContentEventLoopFutureAsync: SelectObjectContentEventLoopFutureAsyncType? = nil,
            uploadPartEventLoopFutureAsync: UploadPartEventLoopFutureAsyncType? = nil,
            uploadPartCopyEventLoopFutureAsync: UploadPartCopyEventLoopFutureAsyncType? = nil) {
        self.eventLoop = eventLoop
        
        self.abortMultipartUploadEventLoopFutureAsyncOverride = abortMultipartUploadEventLoopFutureAsync
        self.completeMultipartUploadEventLoopFutureAsyncOverride = completeMultipartUploadEventLoopFutureAsync
        self.copyObjectEventLoopFutureAsyncOverride = copyObjectEventLoopFutureAsync
        self.createBucketEventLoopFutureAsyncOverride = createBucketEventLoopFutureAsync
        self.createMultipartUploadEventLoopFutureAsyncOverride = createMultipartUploadEventLoopFutureAsync
        self.deleteBucketEventLoopFutureAsyncOverride = deleteBucketEventLoopFutureAsync
        self.deleteBucketAnalyticsConfigurationEventLoopFutureAsyncOverride = deleteBucketAnalyticsConfigurationEventLoopFutureAsync
        self.deleteBucketCorsEventLoopFutureAsyncOverride = deleteBucketCorsEventLoopFutureAsync
        self.deleteBucketEncryptionEventLoopFutureAsyncOverride = deleteBucketEncryptionEventLoopFutureAsync
        self.deleteBucketIntelligentTieringConfigurationEventLoopFutureAsyncOverride = deleteBucketIntelligentTieringConfigurationEventLoopFutureAsync
        self.deleteBucketInventoryConfigurationEventLoopFutureAsyncOverride = deleteBucketInventoryConfigurationEventLoopFutureAsync
        self.deleteBucketLifecycleEventLoopFutureAsyncOverride = deleteBucketLifecycleEventLoopFutureAsync
        self.deleteBucketMetricsConfigurationEventLoopFutureAsyncOverride = deleteBucketMetricsConfigurationEventLoopFutureAsync
        self.deleteBucketOwnershipControlsEventLoopFutureAsyncOverride = deleteBucketOwnershipControlsEventLoopFutureAsync
        self.deleteBucketPolicyEventLoopFutureAsyncOverride = deleteBucketPolicyEventLoopFutureAsync
        self.deleteBucketReplicationEventLoopFutureAsyncOverride = deleteBucketReplicationEventLoopFutureAsync
        self.deleteBucketTaggingEventLoopFutureAsyncOverride = deleteBucketTaggingEventLoopFutureAsync
        self.deleteBucketWebsiteEventLoopFutureAsyncOverride = deleteBucketWebsiteEventLoopFutureAsync
        self.deleteObjectEventLoopFutureAsyncOverride = deleteObjectEventLoopFutureAsync
        self.deleteObjectTaggingEventLoopFutureAsyncOverride = deleteObjectTaggingEventLoopFutureAsync
        self.deleteObjectsEventLoopFutureAsyncOverride = deleteObjectsEventLoopFutureAsync
        self.deletePublicAccessBlockEventLoopFutureAsyncOverride = deletePublicAccessBlockEventLoopFutureAsync
        self.getBucketAccelerateConfigurationEventLoopFutureAsyncOverride = getBucketAccelerateConfigurationEventLoopFutureAsync
        self.getBucketAclEventLoopFutureAsyncOverride = getBucketAclEventLoopFutureAsync
        self.getBucketAnalyticsConfigurationEventLoopFutureAsyncOverride = getBucketAnalyticsConfigurationEventLoopFutureAsync
        self.getBucketCorsEventLoopFutureAsyncOverride = getBucketCorsEventLoopFutureAsync
        self.getBucketEncryptionEventLoopFutureAsyncOverride = getBucketEncryptionEventLoopFutureAsync
        self.getBucketIntelligentTieringConfigurationEventLoopFutureAsyncOverride = getBucketIntelligentTieringConfigurationEventLoopFutureAsync
        self.getBucketInventoryConfigurationEventLoopFutureAsyncOverride = getBucketInventoryConfigurationEventLoopFutureAsync
        self.getBucketLifecycleEventLoopFutureAsyncOverride = getBucketLifecycleEventLoopFutureAsync
        self.getBucketLifecycleConfigurationEventLoopFutureAsyncOverride = getBucketLifecycleConfigurationEventLoopFutureAsync
        self.getBucketLocationEventLoopFutureAsyncOverride = getBucketLocationEventLoopFutureAsync
        self.getBucketLoggingEventLoopFutureAsyncOverride = getBucketLoggingEventLoopFutureAsync
        self.getBucketMetricsConfigurationEventLoopFutureAsyncOverride = getBucketMetricsConfigurationEventLoopFutureAsync
        self.getBucketNotificationEventLoopFutureAsyncOverride = getBucketNotificationEventLoopFutureAsync
        self.getBucketNotificationConfigurationEventLoopFutureAsyncOverride = getBucketNotificationConfigurationEventLoopFutureAsync
        self.getBucketOwnershipControlsEventLoopFutureAsyncOverride = getBucketOwnershipControlsEventLoopFutureAsync
        self.getBucketPolicyEventLoopFutureAsyncOverride = getBucketPolicyEventLoopFutureAsync
        self.getBucketPolicyStatusEventLoopFutureAsyncOverride = getBucketPolicyStatusEventLoopFutureAsync
        self.getBucketReplicationEventLoopFutureAsyncOverride = getBucketReplicationEventLoopFutureAsync
        self.getBucketRequestPaymentEventLoopFutureAsyncOverride = getBucketRequestPaymentEventLoopFutureAsync
        self.getBucketTaggingEventLoopFutureAsyncOverride = getBucketTaggingEventLoopFutureAsync
        self.getBucketVersioningEventLoopFutureAsyncOverride = getBucketVersioningEventLoopFutureAsync
        self.getBucketWebsiteEventLoopFutureAsyncOverride = getBucketWebsiteEventLoopFutureAsync
        self.getObjectEventLoopFutureAsyncOverride = getObjectEventLoopFutureAsync
        self.getObjectAclEventLoopFutureAsyncOverride = getObjectAclEventLoopFutureAsync
        self.getObjectLegalHoldEventLoopFutureAsyncOverride = getObjectLegalHoldEventLoopFutureAsync
        self.getObjectLockConfigurationEventLoopFutureAsyncOverride = getObjectLockConfigurationEventLoopFutureAsync
        self.getObjectRetentionEventLoopFutureAsyncOverride = getObjectRetentionEventLoopFutureAsync
        self.getObjectTaggingEventLoopFutureAsyncOverride = getObjectTaggingEventLoopFutureAsync
        self.getObjectTorrentEventLoopFutureAsyncOverride = getObjectTorrentEventLoopFutureAsync
        self.getPublicAccessBlockEventLoopFutureAsyncOverride = getPublicAccessBlockEventLoopFutureAsync
        self.headBucketEventLoopFutureAsyncOverride = headBucketEventLoopFutureAsync
        self.headObjectEventLoopFutureAsyncOverride = headObjectEventLoopFutureAsync
        self.listBucketAnalyticsConfigurationsEventLoopFutureAsyncOverride = listBucketAnalyticsConfigurationsEventLoopFutureAsync
        self.listBucketIntelligentTieringConfigurationsEventLoopFutureAsyncOverride = listBucketIntelligentTieringConfigurationsEventLoopFutureAsync
        self.listBucketInventoryConfigurationsEventLoopFutureAsyncOverride = listBucketInventoryConfigurationsEventLoopFutureAsync
        self.listBucketMetricsConfigurationsEventLoopFutureAsyncOverride = listBucketMetricsConfigurationsEventLoopFutureAsync
        self.listBucketsEventLoopFutureAsyncOverride = listBucketsEventLoopFutureAsync
        self.listMultipartUploadsEventLoopFutureAsyncOverride = listMultipartUploadsEventLoopFutureAsync
        self.listObjectVersionsEventLoopFutureAsyncOverride = listObjectVersionsEventLoopFutureAsync
        self.listObjectsEventLoopFutureAsyncOverride = listObjectsEventLoopFutureAsync
        self.listObjectsV2EventLoopFutureAsyncOverride = listObjectsV2EventLoopFutureAsync
        self.listPartsEventLoopFutureAsyncOverride = listPartsEventLoopFutureAsync
        self.putBucketAccelerateConfigurationEventLoopFutureAsyncOverride = putBucketAccelerateConfigurationEventLoopFutureAsync
        self.putBucketAclEventLoopFutureAsyncOverride = putBucketAclEventLoopFutureAsync
        self.putBucketAnalyticsConfigurationEventLoopFutureAsyncOverride = putBucketAnalyticsConfigurationEventLoopFutureAsync
        self.putBucketCorsEventLoopFutureAsyncOverride = putBucketCorsEventLoopFutureAsync
        self.putBucketEncryptionEventLoopFutureAsyncOverride = putBucketEncryptionEventLoopFutureAsync
        self.putBucketIntelligentTieringConfigurationEventLoopFutureAsyncOverride = putBucketIntelligentTieringConfigurationEventLoopFutureAsync
        self.putBucketInventoryConfigurationEventLoopFutureAsyncOverride = putBucketInventoryConfigurationEventLoopFutureAsync
        self.putBucketLifecycleEventLoopFutureAsyncOverride = putBucketLifecycleEventLoopFutureAsync
        self.putBucketLifecycleConfigurationEventLoopFutureAsyncOverride = putBucketLifecycleConfigurationEventLoopFutureAsync
        self.putBucketLoggingEventLoopFutureAsyncOverride = putBucketLoggingEventLoopFutureAsync
        self.putBucketMetricsConfigurationEventLoopFutureAsyncOverride = putBucketMetricsConfigurationEventLoopFutureAsync
        self.putBucketNotificationEventLoopFutureAsyncOverride = putBucketNotificationEventLoopFutureAsync
        self.putBucketNotificationConfigurationEventLoopFutureAsyncOverride = putBucketNotificationConfigurationEventLoopFutureAsync
        self.putBucketOwnershipControlsEventLoopFutureAsyncOverride = putBucketOwnershipControlsEventLoopFutureAsync
        self.putBucketPolicyEventLoopFutureAsyncOverride = putBucketPolicyEventLoopFutureAsync
        self.putBucketReplicationEventLoopFutureAsyncOverride = putBucketReplicationEventLoopFutureAsync
        self.putBucketRequestPaymentEventLoopFutureAsyncOverride = putBucketRequestPaymentEventLoopFutureAsync
        self.putBucketTaggingEventLoopFutureAsyncOverride = putBucketTaggingEventLoopFutureAsync
        self.putBucketVersioningEventLoopFutureAsyncOverride = putBucketVersioningEventLoopFutureAsync
        self.putBucketWebsiteEventLoopFutureAsyncOverride = putBucketWebsiteEventLoopFutureAsync
        self.putObjectEventLoopFutureAsyncOverride = putObjectEventLoopFutureAsync
        self.putObjectAclEventLoopFutureAsyncOverride = putObjectAclEventLoopFutureAsync
        self.putObjectLegalHoldEventLoopFutureAsyncOverride = putObjectLegalHoldEventLoopFutureAsync
        self.putObjectLockConfigurationEventLoopFutureAsyncOverride = putObjectLockConfigurationEventLoopFutureAsync
        self.putObjectRetentionEventLoopFutureAsyncOverride = putObjectRetentionEventLoopFutureAsync
        self.putObjectTaggingEventLoopFutureAsyncOverride = putObjectTaggingEventLoopFutureAsync
        self.putPublicAccessBlockEventLoopFutureAsyncOverride = putPublicAccessBlockEventLoopFutureAsync
        self.restoreObjectEventLoopFutureAsyncOverride = restoreObjectEventLoopFutureAsync
        self.selectObjectContentEventLoopFutureAsyncOverride = selectObjectContentEventLoopFutureAsync
        self.uploadPartEventLoopFutureAsyncOverride = uploadPartEventLoopFutureAsync
        self.uploadPartCopyEventLoopFutureAsyncOverride = uploadPartCopyEventLoopFutureAsync
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
        if let abortMultipartUploadEventLoopFutureAsyncOverride = abortMultipartUploadEventLoopFutureAsyncOverride {
            return abortMultipartUploadEventLoopFutureAsyncOverride(input)
        }

        let result = AbortMultipartUploadOutput.__default
        
        let promise = self.eventLoop.makePromise(of: AbortMultipartUploadOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let completeMultipartUploadEventLoopFutureAsyncOverride = completeMultipartUploadEventLoopFutureAsyncOverride {
            return completeMultipartUploadEventLoopFutureAsyncOverride(input)
        }

        let result = CompleteMultipartUploadOutput.__default
        
        let promise = self.eventLoop.makePromise(of: CompleteMultipartUploadOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let copyObjectEventLoopFutureAsyncOverride = copyObjectEventLoopFutureAsyncOverride {
            return copyObjectEventLoopFutureAsyncOverride(input)
        }

        let result = CopyObjectOutput.__default
        
        let promise = self.eventLoop.makePromise(of: CopyObjectOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let createBucketEventLoopFutureAsyncOverride = createBucketEventLoopFutureAsyncOverride {
            return createBucketEventLoopFutureAsyncOverride(input)
        }

        let result = CreateBucketOutput.__default
        
        let promise = self.eventLoop.makePromise(of: CreateBucketOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let createMultipartUploadEventLoopFutureAsyncOverride = createMultipartUploadEventLoopFutureAsyncOverride {
            return createMultipartUploadEventLoopFutureAsyncOverride(input)
        }

        let result = CreateMultipartUploadOutput.__default
        
        let promise = self.eventLoop.makePromise(of: CreateMultipartUploadOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DeleteBucket operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteBucketRequest object being passed to this operation.
     */
    public func deleteBucket(
            input: S3Model.DeleteBucketRequest) -> EventLoopFuture<Void> {
        if let deleteBucketEventLoopFutureAsyncOverride = deleteBucketEventLoopFutureAsyncOverride {
            return deleteBucketEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the DeleteBucketAnalyticsConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteBucketAnalyticsConfigurationRequest object being passed to this operation.
     */
    public func deleteBucketAnalyticsConfiguration(
            input: S3Model.DeleteBucketAnalyticsConfigurationRequest) -> EventLoopFuture<Void> {
        if let deleteBucketAnalyticsConfigurationEventLoopFutureAsyncOverride = deleteBucketAnalyticsConfigurationEventLoopFutureAsyncOverride {
            return deleteBucketAnalyticsConfigurationEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the DeleteBucketCors operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteBucketCorsRequest object being passed to this operation.
     */
    public func deleteBucketCors(
            input: S3Model.DeleteBucketCorsRequest) -> EventLoopFuture<Void> {
        if let deleteBucketCorsEventLoopFutureAsyncOverride = deleteBucketCorsEventLoopFutureAsyncOverride {
            return deleteBucketCorsEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the DeleteBucketEncryption operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteBucketEncryptionRequest object being passed to this operation.
     */
    public func deleteBucketEncryption(
            input: S3Model.DeleteBucketEncryptionRequest) -> EventLoopFuture<Void> {
        if let deleteBucketEncryptionEventLoopFutureAsyncOverride = deleteBucketEncryptionEventLoopFutureAsyncOverride {
            return deleteBucketEncryptionEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the DeleteBucketIntelligentTieringConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteBucketIntelligentTieringConfigurationRequest object being passed to this operation.
     */
    public func deleteBucketIntelligentTieringConfiguration(
            input: S3Model.DeleteBucketIntelligentTieringConfigurationRequest) -> EventLoopFuture<Void> {
        if let deleteBucketIntelligentTieringConfigurationEventLoopFutureAsyncOverride = deleteBucketIntelligentTieringConfigurationEventLoopFutureAsyncOverride {
            return deleteBucketIntelligentTieringConfigurationEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the DeleteBucketInventoryConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteBucketInventoryConfigurationRequest object being passed to this operation.
     */
    public func deleteBucketInventoryConfiguration(
            input: S3Model.DeleteBucketInventoryConfigurationRequest) -> EventLoopFuture<Void> {
        if let deleteBucketInventoryConfigurationEventLoopFutureAsyncOverride = deleteBucketInventoryConfigurationEventLoopFutureAsyncOverride {
            return deleteBucketInventoryConfigurationEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the DeleteBucketLifecycle operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteBucketLifecycleRequest object being passed to this operation.
     */
    public func deleteBucketLifecycle(
            input: S3Model.DeleteBucketLifecycleRequest) -> EventLoopFuture<Void> {
        if let deleteBucketLifecycleEventLoopFutureAsyncOverride = deleteBucketLifecycleEventLoopFutureAsyncOverride {
            return deleteBucketLifecycleEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the DeleteBucketMetricsConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteBucketMetricsConfigurationRequest object being passed to this operation.
     */
    public func deleteBucketMetricsConfiguration(
            input: S3Model.DeleteBucketMetricsConfigurationRequest) -> EventLoopFuture<Void> {
        if let deleteBucketMetricsConfigurationEventLoopFutureAsyncOverride = deleteBucketMetricsConfigurationEventLoopFutureAsyncOverride {
            return deleteBucketMetricsConfigurationEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the DeleteBucketOwnershipControls operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteBucketOwnershipControlsRequest object being passed to this operation.
     */
    public func deleteBucketOwnershipControls(
            input: S3Model.DeleteBucketOwnershipControlsRequest) -> EventLoopFuture<Void> {
        if let deleteBucketOwnershipControlsEventLoopFutureAsyncOverride = deleteBucketOwnershipControlsEventLoopFutureAsyncOverride {
            return deleteBucketOwnershipControlsEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the DeleteBucketPolicy operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteBucketPolicyRequest object being passed to this operation.
     */
    public func deleteBucketPolicy(
            input: S3Model.DeleteBucketPolicyRequest) -> EventLoopFuture<Void> {
        if let deleteBucketPolicyEventLoopFutureAsyncOverride = deleteBucketPolicyEventLoopFutureAsyncOverride {
            return deleteBucketPolicyEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the DeleteBucketReplication operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteBucketReplicationRequest object being passed to this operation.
     */
    public func deleteBucketReplication(
            input: S3Model.DeleteBucketReplicationRequest) -> EventLoopFuture<Void> {
        if let deleteBucketReplicationEventLoopFutureAsyncOverride = deleteBucketReplicationEventLoopFutureAsyncOverride {
            return deleteBucketReplicationEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the DeleteBucketTagging operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteBucketTaggingRequest object being passed to this operation.
     */
    public func deleteBucketTagging(
            input: S3Model.DeleteBucketTaggingRequest) -> EventLoopFuture<Void> {
        if let deleteBucketTaggingEventLoopFutureAsyncOverride = deleteBucketTaggingEventLoopFutureAsyncOverride {
            return deleteBucketTaggingEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the DeleteBucketWebsite operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteBucketWebsiteRequest object being passed to this operation.
     */
    public func deleteBucketWebsite(
            input: S3Model.DeleteBucketWebsiteRequest) -> EventLoopFuture<Void> {
        if let deleteBucketWebsiteEventLoopFutureAsyncOverride = deleteBucketWebsiteEventLoopFutureAsyncOverride {
            return deleteBucketWebsiteEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
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
        if let deleteObjectEventLoopFutureAsyncOverride = deleteObjectEventLoopFutureAsyncOverride {
            return deleteObjectEventLoopFutureAsyncOverride(input)
        }

        let result = DeleteObjectOutput.__default
        
        let promise = self.eventLoop.makePromise(of: DeleteObjectOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let deleteObjectTaggingEventLoopFutureAsyncOverride = deleteObjectTaggingEventLoopFutureAsyncOverride {
            return deleteObjectTaggingEventLoopFutureAsyncOverride(input)
        }

        let result = DeleteObjectTaggingOutput.__default
        
        let promise = self.eventLoop.makePromise(of: DeleteObjectTaggingOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let deleteObjectsEventLoopFutureAsyncOverride = deleteObjectsEventLoopFutureAsyncOverride {
            return deleteObjectsEventLoopFutureAsyncOverride(input)
        }

        let result = DeleteObjectsOutput.__default
        
        let promise = self.eventLoop.makePromise(of: DeleteObjectsOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DeletePublicAccessBlock operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeletePublicAccessBlockRequest object being passed to this operation.
     */
    public func deletePublicAccessBlock(
            input: S3Model.DeletePublicAccessBlockRequest) -> EventLoopFuture<Void> {
        if let deletePublicAccessBlockEventLoopFutureAsyncOverride = deletePublicAccessBlockEventLoopFutureAsyncOverride {
            return deletePublicAccessBlockEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
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
        if let getBucketAccelerateConfigurationEventLoopFutureAsyncOverride = getBucketAccelerateConfigurationEventLoopFutureAsyncOverride {
            return getBucketAccelerateConfigurationEventLoopFutureAsyncOverride(input)
        }

        let result = GetBucketAccelerateConfigurationOutput.__default
        
        let promise = self.eventLoop.makePromise(of: GetBucketAccelerateConfigurationOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let getBucketAclEventLoopFutureAsyncOverride = getBucketAclEventLoopFutureAsyncOverride {
            return getBucketAclEventLoopFutureAsyncOverride(input)
        }

        let result = GetBucketAclOutput.__default
        
        let promise = self.eventLoop.makePromise(of: GetBucketAclOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let getBucketAnalyticsConfigurationEventLoopFutureAsyncOverride = getBucketAnalyticsConfigurationEventLoopFutureAsyncOverride {
            return getBucketAnalyticsConfigurationEventLoopFutureAsyncOverride(input)
        }

        let result = GetBucketAnalyticsConfigurationOutput.__default
        
        let promise = self.eventLoop.makePromise(of: GetBucketAnalyticsConfigurationOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let getBucketCorsEventLoopFutureAsyncOverride = getBucketCorsEventLoopFutureAsyncOverride {
            return getBucketCorsEventLoopFutureAsyncOverride(input)
        }

        let result = GetBucketCorsOutput.__default
        
        let promise = self.eventLoop.makePromise(of: GetBucketCorsOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let getBucketEncryptionEventLoopFutureAsyncOverride = getBucketEncryptionEventLoopFutureAsyncOverride {
            return getBucketEncryptionEventLoopFutureAsyncOverride(input)
        }

        let result = GetBucketEncryptionOutput.__default
        
        let promise = self.eventLoop.makePromise(of: GetBucketEncryptionOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let getBucketIntelligentTieringConfigurationEventLoopFutureAsyncOverride = getBucketIntelligentTieringConfigurationEventLoopFutureAsyncOverride {
            return getBucketIntelligentTieringConfigurationEventLoopFutureAsyncOverride(input)
        }

        let result = GetBucketIntelligentTieringConfigurationOutput.__default
        
        let promise = self.eventLoop.makePromise(of: GetBucketIntelligentTieringConfigurationOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let getBucketInventoryConfigurationEventLoopFutureAsyncOverride = getBucketInventoryConfigurationEventLoopFutureAsyncOverride {
            return getBucketInventoryConfigurationEventLoopFutureAsyncOverride(input)
        }

        let result = GetBucketInventoryConfigurationOutput.__default
        
        let promise = self.eventLoop.makePromise(of: GetBucketInventoryConfigurationOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let getBucketLifecycleEventLoopFutureAsyncOverride = getBucketLifecycleEventLoopFutureAsyncOverride {
            return getBucketLifecycleEventLoopFutureAsyncOverride(input)
        }

        let result = GetBucketLifecycleOutput.__default
        
        let promise = self.eventLoop.makePromise(of: GetBucketLifecycleOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let getBucketLifecycleConfigurationEventLoopFutureAsyncOverride = getBucketLifecycleConfigurationEventLoopFutureAsyncOverride {
            return getBucketLifecycleConfigurationEventLoopFutureAsyncOverride(input)
        }

        let result = GetBucketLifecycleConfigurationOutput.__default
        
        let promise = self.eventLoop.makePromise(of: GetBucketLifecycleConfigurationOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let getBucketLocationEventLoopFutureAsyncOverride = getBucketLocationEventLoopFutureAsyncOverride {
            return getBucketLocationEventLoopFutureAsyncOverride(input)
        }

        let result = GetBucketLocationOutput.__default
        
        let promise = self.eventLoop.makePromise(of: GetBucketLocationOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let getBucketLoggingEventLoopFutureAsyncOverride = getBucketLoggingEventLoopFutureAsyncOverride {
            return getBucketLoggingEventLoopFutureAsyncOverride(input)
        }

        let result = GetBucketLoggingOutput.__default
        
        let promise = self.eventLoop.makePromise(of: GetBucketLoggingOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let getBucketMetricsConfigurationEventLoopFutureAsyncOverride = getBucketMetricsConfigurationEventLoopFutureAsyncOverride {
            return getBucketMetricsConfigurationEventLoopFutureAsyncOverride(input)
        }

        let result = GetBucketMetricsConfigurationOutput.__default
        
        let promise = self.eventLoop.makePromise(of: GetBucketMetricsConfigurationOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let getBucketNotificationEventLoopFutureAsyncOverride = getBucketNotificationEventLoopFutureAsyncOverride {
            return getBucketNotificationEventLoopFutureAsyncOverride(input)
        }

        let result = NotificationConfigurationDeprecated.__default
        
        let promise = self.eventLoop.makePromise(of: NotificationConfigurationDeprecated.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let getBucketNotificationConfigurationEventLoopFutureAsyncOverride = getBucketNotificationConfigurationEventLoopFutureAsyncOverride {
            return getBucketNotificationConfigurationEventLoopFutureAsyncOverride(input)
        }

        let result = NotificationConfiguration.__default
        
        let promise = self.eventLoop.makePromise(of: NotificationConfiguration.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let getBucketOwnershipControlsEventLoopFutureAsyncOverride = getBucketOwnershipControlsEventLoopFutureAsyncOverride {
            return getBucketOwnershipControlsEventLoopFutureAsyncOverride(input)
        }

        let result = GetBucketOwnershipControlsOutput.__default
        
        let promise = self.eventLoop.makePromise(of: GetBucketOwnershipControlsOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let getBucketPolicyEventLoopFutureAsyncOverride = getBucketPolicyEventLoopFutureAsyncOverride {
            return getBucketPolicyEventLoopFutureAsyncOverride(input)
        }

        let result = GetBucketPolicyOutput.__default
        
        let promise = self.eventLoop.makePromise(of: GetBucketPolicyOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let getBucketPolicyStatusEventLoopFutureAsyncOverride = getBucketPolicyStatusEventLoopFutureAsyncOverride {
            return getBucketPolicyStatusEventLoopFutureAsyncOverride(input)
        }

        let result = GetBucketPolicyStatusOutput.__default
        
        let promise = self.eventLoop.makePromise(of: GetBucketPolicyStatusOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let getBucketReplicationEventLoopFutureAsyncOverride = getBucketReplicationEventLoopFutureAsyncOverride {
            return getBucketReplicationEventLoopFutureAsyncOverride(input)
        }

        let result = GetBucketReplicationOutput.__default
        
        let promise = self.eventLoop.makePromise(of: GetBucketReplicationOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let getBucketRequestPaymentEventLoopFutureAsyncOverride = getBucketRequestPaymentEventLoopFutureAsyncOverride {
            return getBucketRequestPaymentEventLoopFutureAsyncOverride(input)
        }

        let result = GetBucketRequestPaymentOutput.__default
        
        let promise = self.eventLoop.makePromise(of: GetBucketRequestPaymentOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let getBucketTaggingEventLoopFutureAsyncOverride = getBucketTaggingEventLoopFutureAsyncOverride {
            return getBucketTaggingEventLoopFutureAsyncOverride(input)
        }

        let result = GetBucketTaggingOutput.__default
        
        let promise = self.eventLoop.makePromise(of: GetBucketTaggingOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let getBucketVersioningEventLoopFutureAsyncOverride = getBucketVersioningEventLoopFutureAsyncOverride {
            return getBucketVersioningEventLoopFutureAsyncOverride(input)
        }

        let result = GetBucketVersioningOutput.__default
        
        let promise = self.eventLoop.makePromise(of: GetBucketVersioningOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let getBucketWebsiteEventLoopFutureAsyncOverride = getBucketWebsiteEventLoopFutureAsyncOverride {
            return getBucketWebsiteEventLoopFutureAsyncOverride(input)
        }

        let result = GetBucketWebsiteOutput.__default
        
        let promise = self.eventLoop.makePromise(of: GetBucketWebsiteOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let getObjectEventLoopFutureAsyncOverride = getObjectEventLoopFutureAsyncOverride {
            return getObjectEventLoopFutureAsyncOverride(input)
        }

        let result = GetObjectOutput.__default
        
        let promise = self.eventLoop.makePromise(of: GetObjectOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let getObjectAclEventLoopFutureAsyncOverride = getObjectAclEventLoopFutureAsyncOverride {
            return getObjectAclEventLoopFutureAsyncOverride(input)
        }

        let result = GetObjectAclOutput.__default
        
        let promise = self.eventLoop.makePromise(of: GetObjectAclOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let getObjectLegalHoldEventLoopFutureAsyncOverride = getObjectLegalHoldEventLoopFutureAsyncOverride {
            return getObjectLegalHoldEventLoopFutureAsyncOverride(input)
        }

        let result = GetObjectLegalHoldOutput.__default
        
        let promise = self.eventLoop.makePromise(of: GetObjectLegalHoldOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let getObjectLockConfigurationEventLoopFutureAsyncOverride = getObjectLockConfigurationEventLoopFutureAsyncOverride {
            return getObjectLockConfigurationEventLoopFutureAsyncOverride(input)
        }

        let result = GetObjectLockConfigurationOutput.__default
        
        let promise = self.eventLoop.makePromise(of: GetObjectLockConfigurationOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let getObjectRetentionEventLoopFutureAsyncOverride = getObjectRetentionEventLoopFutureAsyncOverride {
            return getObjectRetentionEventLoopFutureAsyncOverride(input)
        }

        let result = GetObjectRetentionOutput.__default
        
        let promise = self.eventLoop.makePromise(of: GetObjectRetentionOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let getObjectTaggingEventLoopFutureAsyncOverride = getObjectTaggingEventLoopFutureAsyncOverride {
            return getObjectTaggingEventLoopFutureAsyncOverride(input)
        }

        let result = GetObjectTaggingOutput.__default
        
        let promise = self.eventLoop.makePromise(of: GetObjectTaggingOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let getObjectTorrentEventLoopFutureAsyncOverride = getObjectTorrentEventLoopFutureAsyncOverride {
            return getObjectTorrentEventLoopFutureAsyncOverride(input)
        }

        let result = GetObjectTorrentOutput.__default
        
        let promise = self.eventLoop.makePromise(of: GetObjectTorrentOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let getPublicAccessBlockEventLoopFutureAsyncOverride = getPublicAccessBlockEventLoopFutureAsyncOverride {
            return getPublicAccessBlockEventLoopFutureAsyncOverride(input)
        }

        let result = GetPublicAccessBlockOutput.__default
        
        let promise = self.eventLoop.makePromise(of: GetPublicAccessBlockOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the HeadBucket operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated HeadBucketRequest object being passed to this operation.
           The possible errors are: noSuchBucket.
     */
    public func headBucket(
            input: S3Model.HeadBucketRequest) -> EventLoopFuture<Void> {
        if let headBucketEventLoopFutureAsyncOverride = headBucketEventLoopFutureAsyncOverride {
            return headBucketEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
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
        if let headObjectEventLoopFutureAsyncOverride = headObjectEventLoopFutureAsyncOverride {
            return headObjectEventLoopFutureAsyncOverride(input)
        }

        let result = HeadObjectOutput.__default
        
        let promise = self.eventLoop.makePromise(of: HeadObjectOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let listBucketAnalyticsConfigurationsEventLoopFutureAsyncOverride = listBucketAnalyticsConfigurationsEventLoopFutureAsyncOverride {
            return listBucketAnalyticsConfigurationsEventLoopFutureAsyncOverride(input)
        }

        let result = ListBucketAnalyticsConfigurationsOutput.__default
        
        let promise = self.eventLoop.makePromise(of: ListBucketAnalyticsConfigurationsOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let listBucketIntelligentTieringConfigurationsEventLoopFutureAsyncOverride = listBucketIntelligentTieringConfigurationsEventLoopFutureAsyncOverride {
            return listBucketIntelligentTieringConfigurationsEventLoopFutureAsyncOverride(input)
        }

        let result = ListBucketIntelligentTieringConfigurationsOutput.__default
        
        let promise = self.eventLoop.makePromise(of: ListBucketIntelligentTieringConfigurationsOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let listBucketInventoryConfigurationsEventLoopFutureAsyncOverride = listBucketInventoryConfigurationsEventLoopFutureAsyncOverride {
            return listBucketInventoryConfigurationsEventLoopFutureAsyncOverride(input)
        }

        let result = ListBucketInventoryConfigurationsOutput.__default
        
        let promise = self.eventLoop.makePromise(of: ListBucketInventoryConfigurationsOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let listBucketMetricsConfigurationsEventLoopFutureAsyncOverride = listBucketMetricsConfigurationsEventLoopFutureAsyncOverride {
            return listBucketMetricsConfigurationsEventLoopFutureAsyncOverride(input)
        }

        let result = ListBucketMetricsConfigurationsOutput.__default
        
        let promise = self.eventLoop.makePromise(of: ListBucketMetricsConfigurationsOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the ListBuckets operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.
     - Returns: A future to the ListBucketsOutput object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listBuckets() -> EventLoopFuture<S3Model.ListBucketsOutput> {
        if let listBucketsEventLoopFutureAsyncOverride = listBucketsEventLoopFutureAsyncOverride {
            return listBucketsEventLoopFutureAsyncOverride()
        }

        let result = ListBucketsOutput.__default
        
        let promise = self.eventLoop.makePromise(of: ListBucketsOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let listMultipartUploadsEventLoopFutureAsyncOverride = listMultipartUploadsEventLoopFutureAsyncOverride {
            return listMultipartUploadsEventLoopFutureAsyncOverride(input)
        }

        let result = ListMultipartUploadsOutput.__default
        
        let promise = self.eventLoop.makePromise(of: ListMultipartUploadsOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let listObjectVersionsEventLoopFutureAsyncOverride = listObjectVersionsEventLoopFutureAsyncOverride {
            return listObjectVersionsEventLoopFutureAsyncOverride(input)
        }

        let result = ListObjectVersionsOutput.__default
        
        let promise = self.eventLoop.makePromise(of: ListObjectVersionsOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let listObjectsEventLoopFutureAsyncOverride = listObjectsEventLoopFutureAsyncOverride {
            return listObjectsEventLoopFutureAsyncOverride(input)
        }

        let result = ListObjectsOutput.__default
        
        let promise = self.eventLoop.makePromise(of: ListObjectsOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let listObjectsV2EventLoopFutureAsyncOverride = listObjectsV2EventLoopFutureAsyncOverride {
            return listObjectsV2EventLoopFutureAsyncOverride(input)
        }

        let result = ListObjectsV2Output.__default
        
        let promise = self.eventLoop.makePromise(of: ListObjectsV2Output.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let listPartsEventLoopFutureAsyncOverride = listPartsEventLoopFutureAsyncOverride {
            return listPartsEventLoopFutureAsyncOverride(input)
        }

        let result = ListPartsOutput.__default
        
        let promise = self.eventLoop.makePromise(of: ListPartsOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the PutBucketAccelerateConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketAccelerateConfigurationRequest object being passed to this operation.
     */
    public func putBucketAccelerateConfiguration(
            input: S3Model.PutBucketAccelerateConfigurationRequest) -> EventLoopFuture<Void> {
        if let putBucketAccelerateConfigurationEventLoopFutureAsyncOverride = putBucketAccelerateConfigurationEventLoopFutureAsyncOverride {
            return putBucketAccelerateConfigurationEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the PutBucketAcl operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketAclRequest object being passed to this operation.
     */
    public func putBucketAcl(
            input: S3Model.PutBucketAclRequest) -> EventLoopFuture<Void> {
        if let putBucketAclEventLoopFutureAsyncOverride = putBucketAclEventLoopFutureAsyncOverride {
            return putBucketAclEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the PutBucketAnalyticsConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketAnalyticsConfigurationRequest object being passed to this operation.
     */
    public func putBucketAnalyticsConfiguration(
            input: S3Model.PutBucketAnalyticsConfigurationRequest) -> EventLoopFuture<Void> {
        if let putBucketAnalyticsConfigurationEventLoopFutureAsyncOverride = putBucketAnalyticsConfigurationEventLoopFutureAsyncOverride {
            return putBucketAnalyticsConfigurationEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the PutBucketCors operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketCorsRequest object being passed to this operation.
     */
    public func putBucketCors(
            input: S3Model.PutBucketCorsRequest) -> EventLoopFuture<Void> {
        if let putBucketCorsEventLoopFutureAsyncOverride = putBucketCorsEventLoopFutureAsyncOverride {
            return putBucketCorsEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the PutBucketEncryption operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketEncryptionRequest object being passed to this operation.
     */
    public func putBucketEncryption(
            input: S3Model.PutBucketEncryptionRequest) -> EventLoopFuture<Void> {
        if let putBucketEncryptionEventLoopFutureAsyncOverride = putBucketEncryptionEventLoopFutureAsyncOverride {
            return putBucketEncryptionEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the PutBucketIntelligentTieringConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketIntelligentTieringConfigurationRequest object being passed to this operation.
     */
    public func putBucketIntelligentTieringConfiguration(
            input: S3Model.PutBucketIntelligentTieringConfigurationRequest) -> EventLoopFuture<Void> {
        if let putBucketIntelligentTieringConfigurationEventLoopFutureAsyncOverride = putBucketIntelligentTieringConfigurationEventLoopFutureAsyncOverride {
            return putBucketIntelligentTieringConfigurationEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the PutBucketInventoryConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketInventoryConfigurationRequest object being passed to this operation.
     */
    public func putBucketInventoryConfiguration(
            input: S3Model.PutBucketInventoryConfigurationRequest) -> EventLoopFuture<Void> {
        if let putBucketInventoryConfigurationEventLoopFutureAsyncOverride = putBucketInventoryConfigurationEventLoopFutureAsyncOverride {
            return putBucketInventoryConfigurationEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the PutBucketLifecycle operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketLifecycleRequest object being passed to this operation.
     */
    public func putBucketLifecycle(
            input: S3Model.PutBucketLifecycleRequest) -> EventLoopFuture<Void> {
        if let putBucketLifecycleEventLoopFutureAsyncOverride = putBucketLifecycleEventLoopFutureAsyncOverride {
            return putBucketLifecycleEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the PutBucketLifecycleConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketLifecycleConfigurationRequest object being passed to this operation.
     */
    public func putBucketLifecycleConfiguration(
            input: S3Model.PutBucketLifecycleConfigurationRequest) -> EventLoopFuture<Void> {
        if let putBucketLifecycleConfigurationEventLoopFutureAsyncOverride = putBucketLifecycleConfigurationEventLoopFutureAsyncOverride {
            return putBucketLifecycleConfigurationEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the PutBucketLogging operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketLoggingRequest object being passed to this operation.
     */
    public func putBucketLogging(
            input: S3Model.PutBucketLoggingRequest) -> EventLoopFuture<Void> {
        if let putBucketLoggingEventLoopFutureAsyncOverride = putBucketLoggingEventLoopFutureAsyncOverride {
            return putBucketLoggingEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the PutBucketMetricsConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketMetricsConfigurationRequest object being passed to this operation.
     */
    public func putBucketMetricsConfiguration(
            input: S3Model.PutBucketMetricsConfigurationRequest) -> EventLoopFuture<Void> {
        if let putBucketMetricsConfigurationEventLoopFutureAsyncOverride = putBucketMetricsConfigurationEventLoopFutureAsyncOverride {
            return putBucketMetricsConfigurationEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the PutBucketNotification operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketNotificationRequest object being passed to this operation.
     */
    public func putBucketNotification(
            input: S3Model.PutBucketNotificationRequest) -> EventLoopFuture<Void> {
        if let putBucketNotificationEventLoopFutureAsyncOverride = putBucketNotificationEventLoopFutureAsyncOverride {
            return putBucketNotificationEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the PutBucketNotificationConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketNotificationConfigurationRequest object being passed to this operation.
     */
    public func putBucketNotificationConfiguration(
            input: S3Model.PutBucketNotificationConfigurationRequest) -> EventLoopFuture<Void> {
        if let putBucketNotificationConfigurationEventLoopFutureAsyncOverride = putBucketNotificationConfigurationEventLoopFutureAsyncOverride {
            return putBucketNotificationConfigurationEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the PutBucketOwnershipControls operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketOwnershipControlsRequest object being passed to this operation.
     */
    public func putBucketOwnershipControls(
            input: S3Model.PutBucketOwnershipControlsRequest) -> EventLoopFuture<Void> {
        if let putBucketOwnershipControlsEventLoopFutureAsyncOverride = putBucketOwnershipControlsEventLoopFutureAsyncOverride {
            return putBucketOwnershipControlsEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the PutBucketPolicy operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketPolicyRequest object being passed to this operation.
     */
    public func putBucketPolicy(
            input: S3Model.PutBucketPolicyRequest) -> EventLoopFuture<Void> {
        if let putBucketPolicyEventLoopFutureAsyncOverride = putBucketPolicyEventLoopFutureAsyncOverride {
            return putBucketPolicyEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the PutBucketReplication operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketReplicationRequest object being passed to this operation.
     */
    public func putBucketReplication(
            input: S3Model.PutBucketReplicationRequest) -> EventLoopFuture<Void> {
        if let putBucketReplicationEventLoopFutureAsyncOverride = putBucketReplicationEventLoopFutureAsyncOverride {
            return putBucketReplicationEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the PutBucketRequestPayment operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketRequestPaymentRequest object being passed to this operation.
     */
    public func putBucketRequestPayment(
            input: S3Model.PutBucketRequestPaymentRequest) -> EventLoopFuture<Void> {
        if let putBucketRequestPaymentEventLoopFutureAsyncOverride = putBucketRequestPaymentEventLoopFutureAsyncOverride {
            return putBucketRequestPaymentEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the PutBucketTagging operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketTaggingRequest object being passed to this operation.
     */
    public func putBucketTagging(
            input: S3Model.PutBucketTaggingRequest) -> EventLoopFuture<Void> {
        if let putBucketTaggingEventLoopFutureAsyncOverride = putBucketTaggingEventLoopFutureAsyncOverride {
            return putBucketTaggingEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the PutBucketVersioning operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketVersioningRequest object being passed to this operation.
     */
    public func putBucketVersioning(
            input: S3Model.PutBucketVersioningRequest) -> EventLoopFuture<Void> {
        if let putBucketVersioningEventLoopFutureAsyncOverride = putBucketVersioningEventLoopFutureAsyncOverride {
            return putBucketVersioningEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the PutBucketWebsite operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutBucketWebsiteRequest object being passed to this operation.
     */
    public func putBucketWebsite(
            input: S3Model.PutBucketWebsiteRequest) -> EventLoopFuture<Void> {
        if let putBucketWebsiteEventLoopFutureAsyncOverride = putBucketWebsiteEventLoopFutureAsyncOverride {
            return putBucketWebsiteEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
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
        if let putObjectEventLoopFutureAsyncOverride = putObjectEventLoopFutureAsyncOverride {
            return putObjectEventLoopFutureAsyncOverride(input)
        }

        let result = PutObjectOutput.__default
        
        let promise = self.eventLoop.makePromise(of: PutObjectOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let putObjectAclEventLoopFutureAsyncOverride = putObjectAclEventLoopFutureAsyncOverride {
            return putObjectAclEventLoopFutureAsyncOverride(input)
        }

        let result = PutObjectAclOutput.__default
        
        let promise = self.eventLoop.makePromise(of: PutObjectAclOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let putObjectLegalHoldEventLoopFutureAsyncOverride = putObjectLegalHoldEventLoopFutureAsyncOverride {
            return putObjectLegalHoldEventLoopFutureAsyncOverride(input)
        }

        let result = PutObjectLegalHoldOutput.__default
        
        let promise = self.eventLoop.makePromise(of: PutObjectLegalHoldOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let putObjectLockConfigurationEventLoopFutureAsyncOverride = putObjectLockConfigurationEventLoopFutureAsyncOverride {
            return putObjectLockConfigurationEventLoopFutureAsyncOverride(input)
        }

        let result = PutObjectLockConfigurationOutput.__default
        
        let promise = self.eventLoop.makePromise(of: PutObjectLockConfigurationOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let putObjectRetentionEventLoopFutureAsyncOverride = putObjectRetentionEventLoopFutureAsyncOverride {
            return putObjectRetentionEventLoopFutureAsyncOverride(input)
        }

        let result = PutObjectRetentionOutput.__default
        
        let promise = self.eventLoop.makePromise(of: PutObjectRetentionOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let putObjectTaggingEventLoopFutureAsyncOverride = putObjectTaggingEventLoopFutureAsyncOverride {
            return putObjectTaggingEventLoopFutureAsyncOverride(input)
        }

        let result = PutObjectTaggingOutput.__default
        
        let promise = self.eventLoop.makePromise(of: PutObjectTaggingOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the PutPublicAccessBlock operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutPublicAccessBlockRequest object being passed to this operation.
     */
    public func putPublicAccessBlock(
            input: S3Model.PutPublicAccessBlockRequest) -> EventLoopFuture<Void> {
        if let putPublicAccessBlockEventLoopFutureAsyncOverride = putPublicAccessBlockEventLoopFutureAsyncOverride {
            return putPublicAccessBlockEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
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
        if let restoreObjectEventLoopFutureAsyncOverride = restoreObjectEventLoopFutureAsyncOverride {
            return restoreObjectEventLoopFutureAsyncOverride(input)
        }

        let result = RestoreObjectOutput.__default
        
        let promise = self.eventLoop.makePromise(of: RestoreObjectOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let selectObjectContentEventLoopFutureAsyncOverride = selectObjectContentEventLoopFutureAsyncOverride {
            return selectObjectContentEventLoopFutureAsyncOverride(input)
        }

        let result = SelectObjectContentOutput.__default
        
        let promise = self.eventLoop.makePromise(of: SelectObjectContentOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let uploadPartEventLoopFutureAsyncOverride = uploadPartEventLoopFutureAsyncOverride {
            return uploadPartEventLoopFutureAsyncOverride(input)
        }

        let result = UploadPartOutput.__default
        
        let promise = self.eventLoop.makePromise(of: UploadPartOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let uploadPartCopyEventLoopFutureAsyncOverride = uploadPartCopyEventLoopFutureAsyncOverride {
            return uploadPartCopyEventLoopFutureAsyncOverride(input)
        }

        let result = UploadPartCopyOutput.__default
        
        let promise = self.eventLoop.makePromise(of: UploadPartCopyOutput.self)
        promise.succeed(result)
        
        return promise.futureResult
    }
}
