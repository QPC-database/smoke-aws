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
// MockSimpleQueueClient.swift
// SimpleQueueClient
//

import Foundation
import SimpleQueueModel
import SmokeAWSCore
import SmokeHTTPClient
import NIO

/**
 Mock Client for the SimpleQueue service by default returns the `__default` property of its return type.
 */
public struct MockSimpleQueueClient: SimpleQueueClientProtocol {
    let eventLoop: EventLoop
    let typedErrorProvider: (Swift.Error) -> SimpleQueueError = { $0.asTypedError() }
    let addPermissionEventLoopFutureAsyncOverride: AddPermissionEventLoopFutureAsyncType?
    let changeMessageVisibilityEventLoopFutureAsyncOverride: ChangeMessageVisibilityEventLoopFutureAsyncType?
    let changeMessageVisibilityBatchEventLoopFutureAsyncOverride: ChangeMessageVisibilityBatchEventLoopFutureAsyncType?
    let createQueueEventLoopFutureAsyncOverride: CreateQueueEventLoopFutureAsyncType?
    let deleteMessageEventLoopFutureAsyncOverride: DeleteMessageEventLoopFutureAsyncType?
    let deleteMessageBatchEventLoopFutureAsyncOverride: DeleteMessageBatchEventLoopFutureAsyncType?
    let deleteQueueEventLoopFutureAsyncOverride: DeleteQueueEventLoopFutureAsyncType?
    let getQueueAttributesEventLoopFutureAsyncOverride: GetQueueAttributesEventLoopFutureAsyncType?
    let getQueueUrlEventLoopFutureAsyncOverride: GetQueueUrlEventLoopFutureAsyncType?
    let listDeadLetterSourceQueuesEventLoopFutureAsyncOverride: ListDeadLetterSourceQueuesEventLoopFutureAsyncType?
    let listQueueTagsEventLoopFutureAsyncOverride: ListQueueTagsEventLoopFutureAsyncType?
    let listQueuesEventLoopFutureAsyncOverride: ListQueuesEventLoopFutureAsyncType?
    let purgeQueueEventLoopFutureAsyncOverride: PurgeQueueEventLoopFutureAsyncType?
    let receiveMessageEventLoopFutureAsyncOverride: ReceiveMessageEventLoopFutureAsyncType?
    let removePermissionEventLoopFutureAsyncOverride: RemovePermissionEventLoopFutureAsyncType?
    let sendMessageEventLoopFutureAsyncOverride: SendMessageEventLoopFutureAsyncType?
    let sendMessageBatchEventLoopFutureAsyncOverride: SendMessageBatchEventLoopFutureAsyncType?
    let setQueueAttributesEventLoopFutureAsyncOverride: SetQueueAttributesEventLoopFutureAsyncType?
    let tagQueueEventLoopFutureAsyncOverride: TagQueueEventLoopFutureAsyncType?
    let untagQueueEventLoopFutureAsyncOverride: UntagQueueEventLoopFutureAsyncType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(
            eventLoop: EventLoop,
            addPermissionEventLoopFutureAsync: AddPermissionEventLoopFutureAsyncType? = nil,
            changeMessageVisibilityEventLoopFutureAsync: ChangeMessageVisibilityEventLoopFutureAsyncType? = nil,
            changeMessageVisibilityBatchEventLoopFutureAsync: ChangeMessageVisibilityBatchEventLoopFutureAsyncType? = nil,
            createQueueEventLoopFutureAsync: CreateQueueEventLoopFutureAsyncType? = nil,
            deleteMessageEventLoopFutureAsync: DeleteMessageEventLoopFutureAsyncType? = nil,
            deleteMessageBatchEventLoopFutureAsync: DeleteMessageBatchEventLoopFutureAsyncType? = nil,
            deleteQueueEventLoopFutureAsync: DeleteQueueEventLoopFutureAsyncType? = nil,
            getQueueAttributesEventLoopFutureAsync: GetQueueAttributesEventLoopFutureAsyncType? = nil,
            getQueueUrlEventLoopFutureAsync: GetQueueUrlEventLoopFutureAsyncType? = nil,
            listDeadLetterSourceQueuesEventLoopFutureAsync: ListDeadLetterSourceQueuesEventLoopFutureAsyncType? = nil,
            listQueueTagsEventLoopFutureAsync: ListQueueTagsEventLoopFutureAsyncType? = nil,
            listQueuesEventLoopFutureAsync: ListQueuesEventLoopFutureAsyncType? = nil,
            purgeQueueEventLoopFutureAsync: PurgeQueueEventLoopFutureAsyncType? = nil,
            receiveMessageEventLoopFutureAsync: ReceiveMessageEventLoopFutureAsyncType? = nil,
            removePermissionEventLoopFutureAsync: RemovePermissionEventLoopFutureAsyncType? = nil,
            sendMessageEventLoopFutureAsync: SendMessageEventLoopFutureAsyncType? = nil,
            sendMessageBatchEventLoopFutureAsync: SendMessageBatchEventLoopFutureAsyncType? = nil,
            setQueueAttributesEventLoopFutureAsync: SetQueueAttributesEventLoopFutureAsyncType? = nil,
            tagQueueEventLoopFutureAsync: TagQueueEventLoopFutureAsyncType? = nil,
            untagQueueEventLoopFutureAsync: UntagQueueEventLoopFutureAsyncType? = nil) {
        self.eventLoop = eventLoop
        
        self.addPermissionEventLoopFutureAsyncOverride = addPermissionEventLoopFutureAsync
        self.changeMessageVisibilityEventLoopFutureAsyncOverride = changeMessageVisibilityEventLoopFutureAsync
        self.changeMessageVisibilityBatchEventLoopFutureAsyncOverride = changeMessageVisibilityBatchEventLoopFutureAsync
        self.createQueueEventLoopFutureAsyncOverride = createQueueEventLoopFutureAsync
        self.deleteMessageEventLoopFutureAsyncOverride = deleteMessageEventLoopFutureAsync
        self.deleteMessageBatchEventLoopFutureAsyncOverride = deleteMessageBatchEventLoopFutureAsync
        self.deleteQueueEventLoopFutureAsyncOverride = deleteQueueEventLoopFutureAsync
        self.getQueueAttributesEventLoopFutureAsyncOverride = getQueueAttributesEventLoopFutureAsync
        self.getQueueUrlEventLoopFutureAsyncOverride = getQueueUrlEventLoopFutureAsync
        self.listDeadLetterSourceQueuesEventLoopFutureAsyncOverride = listDeadLetterSourceQueuesEventLoopFutureAsync
        self.listQueueTagsEventLoopFutureAsyncOverride = listQueueTagsEventLoopFutureAsync
        self.listQueuesEventLoopFutureAsyncOverride = listQueuesEventLoopFutureAsync
        self.purgeQueueEventLoopFutureAsyncOverride = purgeQueueEventLoopFutureAsync
        self.receiveMessageEventLoopFutureAsyncOverride = receiveMessageEventLoopFutureAsync
        self.removePermissionEventLoopFutureAsyncOverride = removePermissionEventLoopFutureAsync
        self.sendMessageEventLoopFutureAsyncOverride = sendMessageEventLoopFutureAsync
        self.sendMessageBatchEventLoopFutureAsyncOverride = sendMessageBatchEventLoopFutureAsync
        self.setQueueAttributesEventLoopFutureAsyncOverride = setQueueAttributesEventLoopFutureAsync
        self.tagQueueEventLoopFutureAsyncOverride = tagQueueEventLoopFutureAsync
        self.untagQueueEventLoopFutureAsyncOverride = untagQueueEventLoopFutureAsync
    }

    /**
     Invokes the AddPermission operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AddPermissionRequest object being passed to this operation.
           The possible errors are: overLimit.
     */
    public func addPermission(
            input: SimpleQueueModel.AddPermissionRequest) -> EventLoopFuture<Void> {
        if let addPermissionEventLoopFutureAsyncOverride = addPermissionEventLoopFutureAsyncOverride {
            return addPermissionEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the ChangeMessageVisibility operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ChangeMessageVisibilityRequest object being passed to this operation.
           The possible errors are: messageNotInflight, receiptHandleIsInvalid.
     */
    public func changeMessageVisibility(
            input: SimpleQueueModel.ChangeMessageVisibilityRequest) -> EventLoopFuture<Void> {
        if let changeMessageVisibilityEventLoopFutureAsyncOverride = changeMessageVisibilityEventLoopFutureAsyncOverride {
            return changeMessageVisibilityEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the ChangeMessageVisibilityBatch operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ChangeMessageVisibilityBatchRequest object being passed to this operation.
     - Returns: A future to the ChangeMessageVisibilityBatchResultForChangeMessageVisibilityBatch object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: batchEntryIdsNotDistinct, emptyBatchRequest, invalidBatchEntryId, tooManyEntriesInBatchRequest.
     */
    public func changeMessageVisibilityBatch(
            input: SimpleQueueModel.ChangeMessageVisibilityBatchRequest) -> EventLoopFuture<SimpleQueueModel.ChangeMessageVisibilityBatchResultForChangeMessageVisibilityBatch> {
        if let changeMessageVisibilityBatchEventLoopFutureAsyncOverride = changeMessageVisibilityBatchEventLoopFutureAsyncOverride {
            return changeMessageVisibilityBatchEventLoopFutureAsyncOverride(input)
        }

        let result = ChangeMessageVisibilityBatchResultForChangeMessageVisibilityBatch.__default
        
        let promise = self.eventLoop.makePromise(of: ChangeMessageVisibilityBatchResultForChangeMessageVisibilityBatch.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the CreateQueue operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateQueueRequest object being passed to this operation.
     - Returns: A future to the CreateQueueResultForCreateQueue object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: queueDeletedRecently, queueNameExists.
     */
    public func createQueue(
            input: SimpleQueueModel.CreateQueueRequest) -> EventLoopFuture<SimpleQueueModel.CreateQueueResultForCreateQueue> {
        if let createQueueEventLoopFutureAsyncOverride = createQueueEventLoopFutureAsyncOverride {
            return createQueueEventLoopFutureAsyncOverride(input)
        }

        let result = CreateQueueResultForCreateQueue.__default
        
        let promise = self.eventLoop.makePromise(of: CreateQueueResultForCreateQueue.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DeleteMessage operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteMessageRequest object being passed to this operation.
           The possible errors are: invalidIdFormat, receiptHandleIsInvalid.
     */
    public func deleteMessage(
            input: SimpleQueueModel.DeleteMessageRequest) -> EventLoopFuture<Void> {
        if let deleteMessageEventLoopFutureAsyncOverride = deleteMessageEventLoopFutureAsyncOverride {
            return deleteMessageEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the DeleteMessageBatch operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteMessageBatchRequest object being passed to this operation.
     - Returns: A future to the DeleteMessageBatchResultForDeleteMessageBatch object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: batchEntryIdsNotDistinct, emptyBatchRequest, invalidBatchEntryId, tooManyEntriesInBatchRequest.
     */
    public func deleteMessageBatch(
            input: SimpleQueueModel.DeleteMessageBatchRequest) -> EventLoopFuture<SimpleQueueModel.DeleteMessageBatchResultForDeleteMessageBatch> {
        if let deleteMessageBatchEventLoopFutureAsyncOverride = deleteMessageBatchEventLoopFutureAsyncOverride {
            return deleteMessageBatchEventLoopFutureAsyncOverride(input)
        }

        let result = DeleteMessageBatchResultForDeleteMessageBatch.__default
        
        let promise = self.eventLoop.makePromise(of: DeleteMessageBatchResultForDeleteMessageBatch.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DeleteQueue operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteQueueRequest object being passed to this operation.
     */
    public func deleteQueue(
            input: SimpleQueueModel.DeleteQueueRequest) -> EventLoopFuture<Void> {
        if let deleteQueueEventLoopFutureAsyncOverride = deleteQueueEventLoopFutureAsyncOverride {
            return deleteQueueEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the GetQueueAttributes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetQueueAttributesRequest object being passed to this operation.
     - Returns: A future to the GetQueueAttributesResultForGetQueueAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidAttributeName.
     */
    public func getQueueAttributes(
            input: SimpleQueueModel.GetQueueAttributesRequest) -> EventLoopFuture<SimpleQueueModel.GetQueueAttributesResultForGetQueueAttributes> {
        if let getQueueAttributesEventLoopFutureAsyncOverride = getQueueAttributesEventLoopFutureAsyncOverride {
            return getQueueAttributesEventLoopFutureAsyncOverride(input)
        }

        let result = GetQueueAttributesResultForGetQueueAttributes.__default
        
        let promise = self.eventLoop.makePromise(of: GetQueueAttributesResultForGetQueueAttributes.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the GetQueueUrl operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetQueueUrlRequest object being passed to this operation.
     - Returns: A future to the GetQueueUrlResultForGetQueueUrl object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: queueDoesNotExist.
     */
    public func getQueueUrl(
            input: SimpleQueueModel.GetQueueUrlRequest) -> EventLoopFuture<SimpleQueueModel.GetQueueUrlResultForGetQueueUrl> {
        if let getQueueUrlEventLoopFutureAsyncOverride = getQueueUrlEventLoopFutureAsyncOverride {
            return getQueueUrlEventLoopFutureAsyncOverride(input)
        }

        let result = GetQueueUrlResultForGetQueueUrl.__default
        
        let promise = self.eventLoop.makePromise(of: GetQueueUrlResultForGetQueueUrl.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the ListDeadLetterSourceQueues operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListDeadLetterSourceQueuesRequest object being passed to this operation.
     - Returns: A future to the ListDeadLetterSourceQueuesResultForListDeadLetterSourceQueues object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: queueDoesNotExist.
     */
    public func listDeadLetterSourceQueues(
            input: SimpleQueueModel.ListDeadLetterSourceQueuesRequest) -> EventLoopFuture<SimpleQueueModel.ListDeadLetterSourceQueuesResultForListDeadLetterSourceQueues> {
        if let listDeadLetterSourceQueuesEventLoopFutureAsyncOverride = listDeadLetterSourceQueuesEventLoopFutureAsyncOverride {
            return listDeadLetterSourceQueuesEventLoopFutureAsyncOverride(input)
        }

        let result = ListDeadLetterSourceQueuesResultForListDeadLetterSourceQueues.__default
        
        let promise = self.eventLoop.makePromise(of: ListDeadLetterSourceQueuesResultForListDeadLetterSourceQueues.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the ListQueueTags operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListQueueTagsRequest object being passed to this operation.
     - Returns: A future to the ListQueueTagsResultForListQueueTags object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listQueueTags(
            input: SimpleQueueModel.ListQueueTagsRequest) -> EventLoopFuture<SimpleQueueModel.ListQueueTagsResultForListQueueTags> {
        if let listQueueTagsEventLoopFutureAsyncOverride = listQueueTagsEventLoopFutureAsyncOverride {
            return listQueueTagsEventLoopFutureAsyncOverride(input)
        }

        let result = ListQueueTagsResultForListQueueTags.__default
        
        let promise = self.eventLoop.makePromise(of: ListQueueTagsResultForListQueueTags.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the ListQueues operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListQueuesRequest object being passed to this operation.
     - Returns: A future to the ListQueuesResultForListQueues object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func listQueues(
            input: SimpleQueueModel.ListQueuesRequest) -> EventLoopFuture<SimpleQueueModel.ListQueuesResultForListQueues> {
        if let listQueuesEventLoopFutureAsyncOverride = listQueuesEventLoopFutureAsyncOverride {
            return listQueuesEventLoopFutureAsyncOverride(input)
        }

        let result = ListQueuesResultForListQueues.__default
        
        let promise = self.eventLoop.makePromise(of: ListQueuesResultForListQueues.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the PurgeQueue operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PurgeQueueRequest object being passed to this operation.
           The possible errors are: purgeQueueInProgress, queueDoesNotExist.
     */
    public func purgeQueue(
            input: SimpleQueueModel.PurgeQueueRequest) -> EventLoopFuture<Void> {
        if let purgeQueueEventLoopFutureAsyncOverride = purgeQueueEventLoopFutureAsyncOverride {
            return purgeQueueEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the ReceiveMessage operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ReceiveMessageRequest object being passed to this operation.
     - Returns: A future to the ReceiveMessageResultForReceiveMessage object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: overLimit.
     */
    public func receiveMessage(
            input: SimpleQueueModel.ReceiveMessageRequest) -> EventLoopFuture<SimpleQueueModel.ReceiveMessageResultForReceiveMessage> {
        if let receiveMessageEventLoopFutureAsyncOverride = receiveMessageEventLoopFutureAsyncOverride {
            return receiveMessageEventLoopFutureAsyncOverride(input)
        }

        let result = ReceiveMessageResultForReceiveMessage.__default
        
        let promise = self.eventLoop.makePromise(of: ReceiveMessageResultForReceiveMessage.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the RemovePermission operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RemovePermissionRequest object being passed to this operation.
     */
    public func removePermission(
            input: SimpleQueueModel.RemovePermissionRequest) -> EventLoopFuture<Void> {
        if let removePermissionEventLoopFutureAsyncOverride = removePermissionEventLoopFutureAsyncOverride {
            return removePermissionEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the SendMessage operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SendMessageRequest object being passed to this operation.
     - Returns: A future to the SendMessageResultForSendMessage object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidMessageContents, unsupportedOperation.
     */
    public func sendMessage(
            input: SimpleQueueModel.SendMessageRequest) -> EventLoopFuture<SimpleQueueModel.SendMessageResultForSendMessage> {
        if let sendMessageEventLoopFutureAsyncOverride = sendMessageEventLoopFutureAsyncOverride {
            return sendMessageEventLoopFutureAsyncOverride(input)
        }

        let result = SendMessageResultForSendMessage.__default
        
        let promise = self.eventLoop.makePromise(of: SendMessageResultForSendMessage.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the SendMessageBatch operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SendMessageBatchRequest object being passed to this operation.
     - Returns: A future to the SendMessageBatchResultForSendMessageBatch object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: batchEntryIdsNotDistinct, batchRequestTooLong, emptyBatchRequest, invalidBatchEntryId, tooManyEntriesInBatchRequest, unsupportedOperation.
     */
    public func sendMessageBatch(
            input: SimpleQueueModel.SendMessageBatchRequest) -> EventLoopFuture<SimpleQueueModel.SendMessageBatchResultForSendMessageBatch> {
        if let sendMessageBatchEventLoopFutureAsyncOverride = sendMessageBatchEventLoopFutureAsyncOverride {
            return sendMessageBatchEventLoopFutureAsyncOverride(input)
        }

        let result = SendMessageBatchResultForSendMessageBatch.__default
        
        let promise = self.eventLoop.makePromise(of: SendMessageBatchResultForSendMessageBatch.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the SetQueueAttributes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SetQueueAttributesRequest object being passed to this operation.
           The possible errors are: invalidAttributeName.
     */
    public func setQueueAttributes(
            input: SimpleQueueModel.SetQueueAttributesRequest) -> EventLoopFuture<Void> {
        if let setQueueAttributesEventLoopFutureAsyncOverride = setQueueAttributesEventLoopFutureAsyncOverride {
            return setQueueAttributesEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the TagQueue operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated TagQueueRequest object being passed to this operation.
     */
    public func tagQueue(
            input: SimpleQueueModel.TagQueueRequest) -> EventLoopFuture<Void> {
        if let tagQueueEventLoopFutureAsyncOverride = tagQueueEventLoopFutureAsyncOverride {
            return tagQueueEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the UntagQueue operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UntagQueueRequest object being passed to this operation.
     */
    public func untagQueue(
            input: SimpleQueueModel.UntagQueueRequest) -> EventLoopFuture<Void> {
        if let untagQueueEventLoopFutureAsyncOverride = untagQueueEventLoopFutureAsyncOverride {
            return untagQueueEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }
}
