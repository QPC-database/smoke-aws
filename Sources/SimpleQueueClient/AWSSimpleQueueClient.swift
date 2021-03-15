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
// AWSSimpleQueueClient.swift
// SimpleQueueClient
//

import Foundation
import SimpleQueueModel
import SmokeAWSCore
import SmokeHTTPClient
import NIO
import SmokeAWSHttp
import NIO
import NIOHTTP1
import AsyncHTTPClient
import Logging

public enum SimpleQueueClientError: Swift.Error {
    case invalidEndpoint(String)
    case unsupportedPayload
    case unknownError(String?)
}

 extension SimpleQueueError: ConvertableError {
    public static func asUnrecognizedError(error: Swift.Error) -> SimpleQueueError {
        return error.asUnrecognizedSimpleQueueError()
    }

    public func isRetriable() -> Bool? {
        switch self {
        case .overLimit:
            return true
        default:
            return nil
        }
    }
}

private extension SmokeHTTPClient.HTTPClientError {
    func isRetriable() -> Bool {
        if let typedError = self.cause as? SimpleQueueError, let isRetriable = typedError.isRetriable() {
            return isRetriable
        } else {
            return self.isRetriableAccordingToCategory
        }
    }
}

/**
 AWS Client for the SimpleQueue service.
 */
public struct AWSSimpleQueueClient<InvocationReportingType: HTTPClientCoreInvocationReporting>: SimpleQueueClientProtocol, AWSQueryClientProtocol {
    let httpClient: HTTPOperationsClient
    let listHttpClient: HTTPOperationsClient
    let ownsHttpClients: Bool
    public let awsRegion: AWSRegion
    public let service: String
    public let apiVersion: String
    public let target: String?
    public let retryConfiguration: HTTPClientRetryConfiguration
    public let retryOnErrorProvider: (SmokeHTTPClient.HTTPClientError) -> Bool
    public let credentialsProvider: CredentialsProvider
    
    public let eventLoopGroup: EventLoopGroup
    public let reporting: InvocationReportingType

    let operationsReporting: SimpleQueueOperationsReporting
    let invocationsReporting: SimpleQueueInvocationsReporting<InvocationReportingType>
    
    public init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                reporting: InvocationReportingType,
                endpointHostName: String,
                endpointPort: Int = 443,
                requiresTLS: Bool? = nil,
                service: String = "sqs",
                contentType: String = "application/octet-stream",
                apiVersion: String = "2012-11-05",
                connectionTimeoutSeconds: Int64 = 10,
                retryConfiguration: HTTPClientRetryConfiguration = .default,
                eventLoopProvider: HTTPClient.EventLoopGroupProvider = .createNew,
                reportingConfiguration: SmokeAWSClientReportingConfiguration<SimpleQueueModelOperations>
                    = SmokeAWSClientReportingConfiguration<SimpleQueueModelOperations>() ) {
        self.eventLoopGroup = AWSClientHelper.getEventLoop(eventLoopGroupProvider: eventLoopProvider)
        let useTLS = requiresTLS ?? AWSHTTPClientDelegate.requiresTLS(forEndpointPort: endpointPort)
        let clientDelegate = XMLAWSHttpClientDelegate<SimpleQueueError>(requiresTLS: useTLS)

        let clientDelegateForListHttpClient = XMLAWSHttpClientDelegate<SimpleQueueError>(requiresTLS: useTLS,
            outputMapDecodingStrategy: .collapseMapUsingTags(keyTag: "Key", valueTag: "Value"), 
            inputQueryMapDecodingStrategy: .separateQueryEntriesWith(keyTag: "Key", valueTag: "Value"))

        self.httpClient = HTTPOperationsClient(
            endpointHostName: endpointHostName,
            endpointPort: endpointPort,
            contentType: contentType,
            clientDelegate: clientDelegate,
            connectionTimeoutSeconds: connectionTimeoutSeconds,
            eventLoopProvider: .shared(self.eventLoopGroup))
        self.listHttpClient = HTTPOperationsClient(
            endpointHostName: endpointHostName,
            endpointPort: endpointPort,
            contentType: contentType,
            clientDelegate: clientDelegateForListHttpClient,
            connectionTimeoutSeconds: connectionTimeoutSeconds,
            eventLoopProvider: .shared(self.eventLoopGroup))
        self.ownsHttpClients = true
        self.awsRegion = awsRegion
        self.service = service
        self.target = nil
        self.credentialsProvider = credentialsProvider
        self.retryConfiguration = retryConfiguration
        self.reporting = reporting
        self.retryOnErrorProvider = { error in error.isRetriable() }
        self.apiVersion = apiVersion
        self.operationsReporting = SimpleQueueOperationsReporting(clientName: "AWSSimpleQueueClient", reportingConfiguration: reportingConfiguration)
        self.invocationsReporting = SimpleQueueInvocationsReporting(reporting: reporting, operationsReporting: self.operationsReporting)
    }
    
    internal init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                reporting: InvocationReportingType,
                httpClient: HTTPOperationsClient, listHttpClient: HTTPOperationsClient,
                service: String,
                apiVersion: String,
                eventLoopGroup: EventLoopGroup,
                retryOnErrorProvider: @escaping (SmokeHTTPClient.HTTPClientError) -> Bool,
                retryConfiguration: HTTPClientRetryConfiguration,
                operationsReporting: SimpleQueueOperationsReporting) {
        self.eventLoopGroup = eventLoopGroup
        self.httpClient = httpClient
        self.listHttpClient = listHttpClient
        self.ownsHttpClients = false
        self.awsRegion = awsRegion
        self.service = service
        self.target = nil
        self.credentialsProvider = credentialsProvider
        self.retryConfiguration = retryConfiguration
        self.reporting = reporting
        self.retryOnErrorProvider = retryOnErrorProvider
        self.apiVersion = apiVersion
        self.operationsReporting = operationsReporting
        self.invocationsReporting = SimpleQueueInvocationsReporting(reporting: reporting, operationsReporting: self.operationsReporting)
    }

    /**
     Gracefully shuts down this client. This function is idempotent and
     will handle being called multiple times.
     */
    public func close() throws {
        if self.ownsHttpClients {
            try httpClient.close()
            try listHttpClient.close()
        }
    }

    /**
     Invokes the AddPermission operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AddPermissionRequest object being passed to this operation.
           The possible errors are: overLimit.
     */
    public func addPermission(
            input: SimpleQueueModel.AddPermissionRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: AddPermissionOperationHTTPRequestInput(encodable: input),
                                    action: SimpleQueueModelOperations.addPermission.rawValue,
                                    reporting: self.invocationsReporting.addPermission,
                                    errorType: SimpleQueueError.self)
    }

    /**
     Invokes the ChangeMessageVisibility operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ChangeMessageVisibilityRequest object being passed to this operation.
           The possible errors are: messageNotInflight, receiptHandleIsInvalid.
     */
    public func changeMessageVisibility(
            input: SimpleQueueModel.ChangeMessageVisibilityRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: ChangeMessageVisibilityOperationHTTPRequestInput(encodable: input),
                                    action: SimpleQueueModelOperations.changeMessageVisibility.rawValue,
                                    reporting: self.invocationsReporting.changeMessageVisibility,
                                    errorType: SimpleQueueError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ChangeMessageVisibilityBatchOperationHTTPRequestInput(encodable: input),
                                 action: SimpleQueueModelOperations.changeMessageVisibilityBatch.rawValue,
                                 reporting: self.invocationsReporting.changeMessageVisibilityBatch,
                                 errorType: SimpleQueueError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateQueueOperationHTTPRequestInput(encodable: input),
                                 action: SimpleQueueModelOperations.createQueue.rawValue,
                                 reporting: self.invocationsReporting.createQueue,
                                 errorType: SimpleQueueError.self)
    }

    /**
     Invokes the DeleteMessage operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteMessageRequest object being passed to this operation.
           The possible errors are: invalidIdFormat, receiptHandleIsInvalid.
     */
    public func deleteMessage(
            input: SimpleQueueModel.DeleteMessageRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: DeleteMessageOperationHTTPRequestInput(encodable: input),
                                    action: SimpleQueueModelOperations.deleteMessage.rawValue,
                                    reporting: self.invocationsReporting.deleteMessage,
                                    errorType: SimpleQueueError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeleteMessageBatchOperationHTTPRequestInput(encodable: input),
                                 action: SimpleQueueModelOperations.deleteMessageBatch.rawValue,
                                 reporting: self.invocationsReporting.deleteMessageBatch,
                                 errorType: SimpleQueueError.self)
    }

    /**
     Invokes the DeleteQueue operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteQueueRequest object being passed to this operation.
     */
    public func deleteQueue(
            input: SimpleQueueModel.DeleteQueueRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: DeleteQueueOperationHTTPRequestInput(encodable: input),
                                    action: SimpleQueueModelOperations.deleteQueue.rawValue,
                                    reporting: self.invocationsReporting.deleteQueue,
                                    errorType: SimpleQueueError.self)
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
        return executeWithOutput(httpClient: listHttpClient,
                                 wrappedInput: GetQueueAttributesOperationHTTPRequestInput(encodable: input),
                                 action: SimpleQueueModelOperations.getQueueAttributes.rawValue,
                                 reporting: self.invocationsReporting.getQueueAttributes,
                                 errorType: SimpleQueueError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: GetQueueUrlOperationHTTPRequestInput(encodable: input),
                                 action: SimpleQueueModelOperations.getQueueUrl.rawValue,
                                 reporting: self.invocationsReporting.getQueueUrl,
                                 errorType: SimpleQueueError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ListDeadLetterSourceQueuesOperationHTTPRequestInput(encodable: input),
                                 action: SimpleQueueModelOperations.listDeadLetterSourceQueues.rawValue,
                                 reporting: self.invocationsReporting.listDeadLetterSourceQueues,
                                 errorType: SimpleQueueError.self)
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
        return executeWithOutput(httpClient: listHttpClient,
                                 wrappedInput: ListQueueTagsOperationHTTPRequestInput(encodable: input),
                                 action: SimpleQueueModelOperations.listQueueTags.rawValue,
                                 reporting: self.invocationsReporting.listQueueTags,
                                 errorType: SimpleQueueError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ListQueuesOperationHTTPRequestInput(encodable: input),
                                 action: SimpleQueueModelOperations.listQueues.rawValue,
                                 reporting: self.invocationsReporting.listQueues,
                                 errorType: SimpleQueueError.self)
    }

    /**
     Invokes the PurgeQueue operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PurgeQueueRequest object being passed to this operation.
           The possible errors are: purgeQueueInProgress, queueDoesNotExist.
     */
    public func purgeQueue(
            input: SimpleQueueModel.PurgeQueueRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: PurgeQueueOperationHTTPRequestInput(encodable: input),
                                    action: SimpleQueueModelOperations.purgeQueue.rawValue,
                                    reporting: self.invocationsReporting.purgeQueue,
                                    errorType: SimpleQueueError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ReceiveMessageOperationHTTPRequestInput(encodable: input),
                                 action: SimpleQueueModelOperations.receiveMessage.rawValue,
                                 reporting: self.invocationsReporting.receiveMessage,
                                 errorType: SimpleQueueError.self)
    }

    /**
     Invokes the RemovePermission operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RemovePermissionRequest object being passed to this operation.
     */
    public func removePermission(
            input: SimpleQueueModel.RemovePermissionRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: RemovePermissionOperationHTTPRequestInput(encodable: input),
                                    action: SimpleQueueModelOperations.removePermission.rawValue,
                                    reporting: self.invocationsReporting.removePermission,
                                    errorType: SimpleQueueError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: SendMessageOperationHTTPRequestInput(encodable: input),
                                 action: SimpleQueueModelOperations.sendMessage.rawValue,
                                 reporting: self.invocationsReporting.sendMessage,
                                 errorType: SimpleQueueError.self)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: SendMessageBatchOperationHTTPRequestInput(encodable: input),
                                 action: SimpleQueueModelOperations.sendMessageBatch.rawValue,
                                 reporting: self.invocationsReporting.sendMessageBatch,
                                 errorType: SimpleQueueError.self)
    }

    /**
     Invokes the SetQueueAttributes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SetQueueAttributesRequest object being passed to this operation.
           The possible errors are: invalidAttributeName.
     */
    public func setQueueAttributes(
            input: SimpleQueueModel.SetQueueAttributesRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: listHttpClient,
                                    wrappedInput: SetQueueAttributesOperationHTTPRequestInput(encodable: input),
                                    action: SimpleQueueModelOperations.setQueueAttributes.rawValue,
                                    reporting: self.invocationsReporting.setQueueAttributes,
                                    errorType: SimpleQueueError.self)
    }

    /**
     Invokes the TagQueue operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated TagQueueRequest object being passed to this operation.
     */
    public func tagQueue(
            input: SimpleQueueModel.TagQueueRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: listHttpClient,
                                    wrappedInput: TagQueueOperationHTTPRequestInput(encodable: input),
                                    action: SimpleQueueModelOperations.tagQueue.rawValue,
                                    reporting: self.invocationsReporting.tagQueue,
                                    errorType: SimpleQueueError.self)
    }

    /**
     Invokes the UntagQueue operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UntagQueueRequest object being passed to this operation.
     */
    public func untagQueue(
            input: SimpleQueueModel.UntagQueueRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: UntagQueueOperationHTTPRequestInput(encodable: input),
                                    action: SimpleQueueModelOperations.untagQueue.rawValue,
                                    reporting: self.invocationsReporting.untagQueue,
                                    errorType: SimpleQueueError.self)
    }
}
