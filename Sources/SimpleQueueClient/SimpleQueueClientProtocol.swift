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
// SimpleQueueClientProtocol.swift
// SimpleQueueClient
//

import Foundation
import SimpleQueueModel
import SmokeAWSCore
import SmokeHTTPClient
import NIO

/**
 Client Protocol for the SimpleQueue service.
 */
public protocol SimpleQueueClientProtocol {
    typealias AddPermissionEventLoopFutureAsyncType = (
            _ input: SimpleQueueModel.AddPermissionRequest) -> EventLoopFuture<Void>
    typealias ChangeMessageVisibilityEventLoopFutureAsyncType = (
            _ input: SimpleQueueModel.ChangeMessageVisibilityRequest) -> EventLoopFuture<Void>
    typealias ChangeMessageVisibilityBatchEventLoopFutureAsyncType = (
            _ input: SimpleQueueModel.ChangeMessageVisibilityBatchRequest) -> EventLoopFuture<SimpleQueueModel.ChangeMessageVisibilityBatchResultForChangeMessageVisibilityBatch>
    typealias CreateQueueEventLoopFutureAsyncType = (
            _ input: SimpleQueueModel.CreateQueueRequest) -> EventLoopFuture<SimpleQueueModel.CreateQueueResultForCreateQueue>
    typealias DeleteMessageEventLoopFutureAsyncType = (
            _ input: SimpleQueueModel.DeleteMessageRequest) -> EventLoopFuture<Void>
    typealias DeleteMessageBatchEventLoopFutureAsyncType = (
            _ input: SimpleQueueModel.DeleteMessageBatchRequest) -> EventLoopFuture<SimpleQueueModel.DeleteMessageBatchResultForDeleteMessageBatch>
    typealias DeleteQueueEventLoopFutureAsyncType = (
            _ input: SimpleQueueModel.DeleteQueueRequest) -> EventLoopFuture<Void>
    typealias GetQueueAttributesEventLoopFutureAsyncType = (
            _ input: SimpleQueueModel.GetQueueAttributesRequest) -> EventLoopFuture<SimpleQueueModel.GetQueueAttributesResultForGetQueueAttributes>
    typealias GetQueueUrlEventLoopFutureAsyncType = (
            _ input: SimpleQueueModel.GetQueueUrlRequest) -> EventLoopFuture<SimpleQueueModel.GetQueueUrlResultForGetQueueUrl>
    typealias ListDeadLetterSourceQueuesEventLoopFutureAsyncType = (
            _ input: SimpleQueueModel.ListDeadLetterSourceQueuesRequest) -> EventLoopFuture<SimpleQueueModel.ListDeadLetterSourceQueuesResultForListDeadLetterSourceQueues>
    typealias ListQueueTagsEventLoopFutureAsyncType = (
            _ input: SimpleQueueModel.ListQueueTagsRequest) -> EventLoopFuture<SimpleQueueModel.ListQueueTagsResultForListQueueTags>
    typealias ListQueuesEventLoopFutureAsyncType = (
            _ input: SimpleQueueModel.ListQueuesRequest) -> EventLoopFuture<SimpleQueueModel.ListQueuesResultForListQueues>
    typealias PurgeQueueEventLoopFutureAsyncType = (
            _ input: SimpleQueueModel.PurgeQueueRequest) -> EventLoopFuture<Void>
    typealias ReceiveMessageEventLoopFutureAsyncType = (
            _ input: SimpleQueueModel.ReceiveMessageRequest) -> EventLoopFuture<SimpleQueueModel.ReceiveMessageResultForReceiveMessage>
    typealias RemovePermissionEventLoopFutureAsyncType = (
            _ input: SimpleQueueModel.RemovePermissionRequest) -> EventLoopFuture<Void>
    typealias SendMessageEventLoopFutureAsyncType = (
            _ input: SimpleQueueModel.SendMessageRequest) -> EventLoopFuture<SimpleQueueModel.SendMessageResultForSendMessage>
    typealias SendMessageBatchEventLoopFutureAsyncType = (
            _ input: SimpleQueueModel.SendMessageBatchRequest) -> EventLoopFuture<SimpleQueueModel.SendMessageBatchResultForSendMessageBatch>
    typealias SetQueueAttributesEventLoopFutureAsyncType = (
            _ input: SimpleQueueModel.SetQueueAttributesRequest) -> EventLoopFuture<Void>
    typealias TagQueueEventLoopFutureAsyncType = (
            _ input: SimpleQueueModel.TagQueueRequest) -> EventLoopFuture<Void>
    typealias UntagQueueEventLoopFutureAsyncType = (
            _ input: SimpleQueueModel.UntagQueueRequest) -> EventLoopFuture<Void>

    /**
     Invokes the AddPermission operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AddPermissionRequest object being passed to this operation.
           The possible errors are: overLimit.
     */
    func addPermission(
            input: SimpleQueueModel.AddPermissionRequest) -> EventLoopFuture<Void>

    /**
     Invokes the ChangeMessageVisibility operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ChangeMessageVisibilityRequest object being passed to this operation.
           The possible errors are: messageNotInflight, receiptHandleIsInvalid.
     */
    func changeMessageVisibility(
            input: SimpleQueueModel.ChangeMessageVisibilityRequest) -> EventLoopFuture<Void>

    /**
     Invokes the ChangeMessageVisibilityBatch operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ChangeMessageVisibilityBatchRequest object being passed to this operation.
     - Returns: A future to the ChangeMessageVisibilityBatchResultForChangeMessageVisibilityBatch object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: batchEntryIdsNotDistinct, emptyBatchRequest, invalidBatchEntryId, tooManyEntriesInBatchRequest.
     */
    func changeMessageVisibilityBatch(
            input: SimpleQueueModel.ChangeMessageVisibilityBatchRequest) -> EventLoopFuture<SimpleQueueModel.ChangeMessageVisibilityBatchResultForChangeMessageVisibilityBatch>

    /**
     Invokes the CreateQueue operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateQueueRequest object being passed to this operation.
     - Returns: A future to the CreateQueueResultForCreateQueue object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: queueDeletedRecently, queueNameExists.
     */
    func createQueue(
            input: SimpleQueueModel.CreateQueueRequest) -> EventLoopFuture<SimpleQueueModel.CreateQueueResultForCreateQueue>

    /**
     Invokes the DeleteMessage operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteMessageRequest object being passed to this operation.
           The possible errors are: invalidIdFormat, receiptHandleIsInvalid.
     */
    func deleteMessage(
            input: SimpleQueueModel.DeleteMessageRequest) -> EventLoopFuture<Void>

    /**
     Invokes the DeleteMessageBatch operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteMessageBatchRequest object being passed to this operation.
     - Returns: A future to the DeleteMessageBatchResultForDeleteMessageBatch object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: batchEntryIdsNotDistinct, emptyBatchRequest, invalidBatchEntryId, tooManyEntriesInBatchRequest.
     */
    func deleteMessageBatch(
            input: SimpleQueueModel.DeleteMessageBatchRequest) -> EventLoopFuture<SimpleQueueModel.DeleteMessageBatchResultForDeleteMessageBatch>

    /**
     Invokes the DeleteQueue operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteQueueRequest object being passed to this operation.
     */
    func deleteQueue(
            input: SimpleQueueModel.DeleteQueueRequest) -> EventLoopFuture<Void>

    /**
     Invokes the GetQueueAttributes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetQueueAttributesRequest object being passed to this operation.
     - Returns: A future to the GetQueueAttributesResultForGetQueueAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidAttributeName.
     */
    func getQueueAttributes(
            input: SimpleQueueModel.GetQueueAttributesRequest) -> EventLoopFuture<SimpleQueueModel.GetQueueAttributesResultForGetQueueAttributes>

    /**
     Invokes the GetQueueUrl operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetQueueUrlRequest object being passed to this operation.
     - Returns: A future to the GetQueueUrlResultForGetQueueUrl object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: queueDoesNotExist.
     */
    func getQueueUrl(
            input: SimpleQueueModel.GetQueueUrlRequest) -> EventLoopFuture<SimpleQueueModel.GetQueueUrlResultForGetQueueUrl>

    /**
     Invokes the ListDeadLetterSourceQueues operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListDeadLetterSourceQueuesRequest object being passed to this operation.
     - Returns: A future to the ListDeadLetterSourceQueuesResultForListDeadLetterSourceQueues object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: queueDoesNotExist.
     */
    func listDeadLetterSourceQueues(
            input: SimpleQueueModel.ListDeadLetterSourceQueuesRequest) -> EventLoopFuture<SimpleQueueModel.ListDeadLetterSourceQueuesResultForListDeadLetterSourceQueues>

    /**
     Invokes the ListQueueTags operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListQueueTagsRequest object being passed to this operation.
     - Returns: A future to the ListQueueTagsResultForListQueueTags object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listQueueTags(
            input: SimpleQueueModel.ListQueueTagsRequest) -> EventLoopFuture<SimpleQueueModel.ListQueueTagsResultForListQueueTags>

    /**
     Invokes the ListQueues operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListQueuesRequest object being passed to this operation.
     - Returns: A future to the ListQueuesResultForListQueues object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listQueues(
            input: SimpleQueueModel.ListQueuesRequest) -> EventLoopFuture<SimpleQueueModel.ListQueuesResultForListQueues>

    /**
     Invokes the PurgeQueue operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PurgeQueueRequest object being passed to this operation.
           The possible errors are: purgeQueueInProgress, queueDoesNotExist.
     */
    func purgeQueue(
            input: SimpleQueueModel.PurgeQueueRequest) -> EventLoopFuture<Void>

    /**
     Invokes the ReceiveMessage operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ReceiveMessageRequest object being passed to this operation.
     - Returns: A future to the ReceiveMessageResultForReceiveMessage object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: overLimit.
     */
    func receiveMessage(
            input: SimpleQueueModel.ReceiveMessageRequest) -> EventLoopFuture<SimpleQueueModel.ReceiveMessageResultForReceiveMessage>

    /**
     Invokes the RemovePermission operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RemovePermissionRequest object being passed to this operation.
     */
    func removePermission(
            input: SimpleQueueModel.RemovePermissionRequest) -> EventLoopFuture<Void>

    /**
     Invokes the SendMessage operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SendMessageRequest object being passed to this operation.
     - Returns: A future to the SendMessageResultForSendMessage object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidMessageContents, unsupportedOperation.
     */
    func sendMessage(
            input: SimpleQueueModel.SendMessageRequest) -> EventLoopFuture<SimpleQueueModel.SendMessageResultForSendMessage>

    /**
     Invokes the SendMessageBatch operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SendMessageBatchRequest object being passed to this operation.
     - Returns: A future to the SendMessageBatchResultForSendMessageBatch object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: batchEntryIdsNotDistinct, batchRequestTooLong, emptyBatchRequest, invalidBatchEntryId, tooManyEntriesInBatchRequest, unsupportedOperation.
     */
    func sendMessageBatch(
            input: SimpleQueueModel.SendMessageBatchRequest) -> EventLoopFuture<SimpleQueueModel.SendMessageBatchResultForSendMessageBatch>

    /**
     Invokes the SetQueueAttributes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SetQueueAttributesRequest object being passed to this operation.
           The possible errors are: invalidAttributeName.
     */
    func setQueueAttributes(
            input: SimpleQueueModel.SetQueueAttributesRequest) -> EventLoopFuture<Void>

    /**
     Invokes the TagQueue operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated TagQueueRequest object being passed to this operation.
     */
    func tagQueue(
            input: SimpleQueueModel.TagQueueRequest) -> EventLoopFuture<Void>

    /**
     Invokes the UntagQueue operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UntagQueueRequest object being passed to this operation.
     */
    func untagQueue(
            input: SimpleQueueModel.UntagQueueRequest) -> EventLoopFuture<Void>
}
