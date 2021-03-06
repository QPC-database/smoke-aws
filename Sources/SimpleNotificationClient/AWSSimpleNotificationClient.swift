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
// AWSSimpleNotificationClient.swift
// SimpleNotificationClient
//

import Foundation
import SimpleNotificationModel
import SmokeAWSCore
import SmokeHTTPClient
import NIO
import SmokeAWSHttp
import NIO
import NIOHTTP1
import AsyncHTTPClient
import Logging

public enum SimpleNotificationClientError: Swift.Error {
    case invalidEndpoint(String)
    case unsupportedPayload
    case unknownError(String?)
}

 extension SimpleNotificationError: ConvertableError {
    public static func asUnrecognizedError(error: Swift.Error) -> SimpleNotificationError {
        return error.asUnrecognizedSimpleNotificationError()
    }

    func isRetriable() -> Bool? {
        switch self {
        case .filterPolicyLimitExceeded, .kMSThrottling, .subscriptionLimitExceeded, .throttled, .topicLimitExceeded:
            return true
        default:
            return nil
        }
    }
}

private extension SmokeHTTPClient.HTTPClientError {
    func isRetriable() -> Bool {
        if let typedError = self.cause as? SimpleNotificationError, let isRetriable = typedError.isRetriable() {
            return isRetriable
        } else {
            return self.isRetriableAccordingToCategory
        }
    }
}

/**
 AWS Client for the SimpleNotification service.
 */
public struct AWSSimpleNotificationClient<InvocationReportingType: HTTPClientCoreInvocationReporting>: SimpleNotificationClientProtocol, AWSQueryClientProtocol {
    let httpClient: HTTPOperationsClient
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

    let operationsReporting: SimpleNotificationOperationsReporting
    let invocationsReporting: SimpleNotificationInvocationsReporting<InvocationReportingType>
    
    public init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                reporting: InvocationReportingType,
                endpointHostName: String,
                endpointPort: Int = 443,
                requiresTLS: Bool? = nil,
                service: String = "sns",
                contentType: String = "application/octet-stream",
                apiVersion: String = "2010-03-31",
                connectionTimeoutSeconds: Int64 = 10,
                retryConfiguration: HTTPClientRetryConfiguration = .default,
                eventLoopProvider: HTTPClient.EventLoopGroupProvider = .createNew,
                reportingConfiguration: SmokeAWSClientReportingConfiguration<SimpleNotificationModelOperations>
                    = SmokeAWSClientReportingConfiguration<SimpleNotificationModelOperations>() ) {
        self.eventLoopGroup = AWSClientHelper.getEventLoop(eventLoopGroupProvider: eventLoopProvider)
        let useTLS = requiresTLS ?? AWSHTTPClientDelegate.requiresTLS(forEndpointPort: endpointPort)
        let clientDelegate = XMLAWSHttpClientDelegate<SimpleNotificationError>(requiresTLS: useTLS)

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
        self.target = nil
        self.credentialsProvider = credentialsProvider
        self.retryConfiguration = retryConfiguration
        self.reporting = reporting
        self.retryOnErrorProvider = { error in error.isRetriable() }
        self.apiVersion = apiVersion
        self.operationsReporting = SimpleNotificationOperationsReporting(clientName: "AWSSimpleNotificationClient", reportingConfiguration: reportingConfiguration)
        self.invocationsReporting = SimpleNotificationInvocationsReporting(reporting: reporting, operationsReporting: self.operationsReporting)
    }
    
    internal init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                reporting: InvocationReportingType,
                httpClient: HTTPOperationsClient,
                service: String,
                apiVersion: String,
                eventLoopGroup: EventLoopGroup,
                retryOnErrorProvider: @escaping (SmokeHTTPClient.HTTPClientError) -> Bool,
                retryConfiguration: HTTPClientRetryConfiguration,
                operationsReporting: SimpleNotificationOperationsReporting) {
        self.eventLoopGroup = eventLoopGroup
        self.httpClient = httpClient
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
        self.invocationsReporting = SimpleNotificationInvocationsReporting(reporting: reporting, operationsReporting: self.operationsReporting)
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
     Invokes the AddPermission operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AddPermissionInput object being passed to this operation.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    public func addPermission(
            input: SimpleNotificationModel.AddPermissionInput) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: AddPermissionOperationHTTPRequestInput(encodable: input),
                                    action: SimpleNotificationModelOperations.addPermission.rawValue,
                                    reporting: self.invocationsReporting.addPermission)
    }

    /**
     Invokes the CheckIfPhoneNumberIsOptedOut operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CheckIfPhoneNumberIsOptedOutInput object being passed to this operation.
     - Returns: A future to the CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, throttled.
     */
    public func checkIfPhoneNumberIsOptedOut(
            input: SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutInput) -> EventLoopFuture<SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CheckIfPhoneNumberIsOptedOutOperationHTTPRequestInput(encodable: input),
                                 action: SimpleNotificationModelOperations.checkIfPhoneNumberIsOptedOut.rawValue,
                                 reporting: self.invocationsReporting.checkIfPhoneNumberIsOptedOut)
    }

    /**
     Invokes the ConfirmSubscription operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ConfirmSubscriptionInput object being passed to this operation.
     - Returns: A future to the ConfirmSubscriptionResponseForConfirmSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, notFound, subscriptionLimitExceeded.
     */
    public func confirmSubscription(
            input: SimpleNotificationModel.ConfirmSubscriptionInput) -> EventLoopFuture<SimpleNotificationModel.ConfirmSubscriptionResponseForConfirmSubscription> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ConfirmSubscriptionOperationHTTPRequestInput(encodable: input),
                                 action: SimpleNotificationModelOperations.confirmSubscription.rawValue,
                                 reporting: self.invocationsReporting.confirmSubscription)
    }

    /**
     Invokes the CreatePlatformApplication operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreatePlatformApplicationInput object being passed to this operation.
     - Returns: A future to the CreatePlatformApplicationResponseForCreatePlatformApplication object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter.
     */
    public func createPlatformApplication(
            input: SimpleNotificationModel.CreatePlatformApplicationInput) -> EventLoopFuture<SimpleNotificationModel.CreatePlatformApplicationResponseForCreatePlatformApplication> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreatePlatformApplicationOperationHTTPRequestInput(encodable: input),
                                 action: SimpleNotificationModelOperations.createPlatformApplication.rawValue,
                                 reporting: self.invocationsReporting.createPlatformApplication)
    }

    /**
     Invokes the CreatePlatformEndpoint operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreatePlatformEndpointInput object being passed to this operation.
     - Returns: A future to the CreateEndpointResponseForCreatePlatformEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    public func createPlatformEndpoint(
            input: SimpleNotificationModel.CreatePlatformEndpointInput) -> EventLoopFuture<SimpleNotificationModel.CreateEndpointResponseForCreatePlatformEndpoint> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreatePlatformEndpointOperationHTTPRequestInput(encodable: input),
                                 action: SimpleNotificationModelOperations.createPlatformEndpoint.rawValue,
                                 reporting: self.invocationsReporting.createPlatformEndpoint)
    }

    /**
     Invokes the CreateTopic operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateTopicInput object being passed to this operation.
     - Returns: A future to the CreateTopicResponseForCreateTopic object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationError, concurrentAccess, internalError, invalidParameter, invalidSecurity, staleTag, tagLimitExceeded, tagPolicy, topicLimitExceeded.
     */
    public func createTopic(
            input: SimpleNotificationModel.CreateTopicInput) -> EventLoopFuture<SimpleNotificationModel.CreateTopicResponseForCreateTopic> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateTopicOperationHTTPRequestInput(encodable: input),
                                 action: SimpleNotificationModelOperations.createTopic.rawValue,
                                 reporting: self.invocationsReporting.createTopic)
    }

    /**
     Invokes the DeleteEndpoint operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteEndpointInput object being passed to this operation.
           The possible errors are: authorizationError, internalError, invalidParameter.
     */
    public func deleteEndpoint(
            input: SimpleNotificationModel.DeleteEndpointInput) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: DeleteEndpointOperationHTTPRequestInput(encodable: input),
                                    action: SimpleNotificationModelOperations.deleteEndpoint.rawValue,
                                    reporting: self.invocationsReporting.deleteEndpoint)
    }

    /**
     Invokes the DeletePlatformApplication operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeletePlatformApplicationInput object being passed to this operation.
           The possible errors are: authorizationError, internalError, invalidParameter.
     */
    public func deletePlatformApplication(
            input: SimpleNotificationModel.DeletePlatformApplicationInput) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: DeletePlatformApplicationOperationHTTPRequestInput(encodable: input),
                                    action: SimpleNotificationModelOperations.deletePlatformApplication.rawValue,
                                    reporting: self.invocationsReporting.deletePlatformApplication)
    }

    /**
     Invokes the DeleteTopic operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteTopicInput object being passed to this operation.
           The possible errors are: authorizationError, concurrentAccess, internalError, invalidParameter, notFound, staleTag, tagPolicy.
     */
    public func deleteTopic(
            input: SimpleNotificationModel.DeleteTopicInput) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: DeleteTopicOperationHTTPRequestInput(encodable: input),
                                    action: SimpleNotificationModelOperations.deleteTopic.rawValue,
                                    reporting: self.invocationsReporting.deleteTopic)
    }

    /**
     Invokes the GetEndpointAttributes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetEndpointAttributesInput object being passed to this operation.
     - Returns: A future to the GetEndpointAttributesResponseForGetEndpointAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    public func getEndpointAttributes(
            input: SimpleNotificationModel.GetEndpointAttributesInput) -> EventLoopFuture<SimpleNotificationModel.GetEndpointAttributesResponseForGetEndpointAttributes> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: GetEndpointAttributesOperationHTTPRequestInput(encodable: input),
                                 action: SimpleNotificationModelOperations.getEndpointAttributes.rawValue,
                                 reporting: self.invocationsReporting.getEndpointAttributes)
    }

    /**
     Invokes the GetPlatformApplicationAttributes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetPlatformApplicationAttributesInput object being passed to this operation.
     - Returns: A future to the GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    public func getPlatformApplicationAttributes(
            input: SimpleNotificationModel.GetPlatformApplicationAttributesInput) -> EventLoopFuture<SimpleNotificationModel.GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: GetPlatformApplicationAttributesOperationHTTPRequestInput(encodable: input),
                                 action: SimpleNotificationModelOperations.getPlatformApplicationAttributes.rawValue,
                                 reporting: self.invocationsReporting.getPlatformApplicationAttributes)
    }

    /**
     Invokes the GetSMSAttributes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetSMSAttributesInput object being passed to this operation.
     - Returns: A future to the GetSMSAttributesResponseForGetSMSAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, throttled.
     */
    public func getSMSAttributes(
            input: SimpleNotificationModel.GetSMSAttributesInput) -> EventLoopFuture<SimpleNotificationModel.GetSMSAttributesResponseForGetSMSAttributes> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: GetSMSAttributesOperationHTTPRequestInput(encodable: input),
                                 action: SimpleNotificationModelOperations.getSMSAttributes.rawValue,
                                 reporting: self.invocationsReporting.getSMSAttributes)
    }

    /**
     Invokes the GetSubscriptionAttributes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetSubscriptionAttributesInput object being passed to this operation.
     - Returns: A future to the GetSubscriptionAttributesResponseForGetSubscriptionAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    public func getSubscriptionAttributes(
            input: SimpleNotificationModel.GetSubscriptionAttributesInput) -> EventLoopFuture<SimpleNotificationModel.GetSubscriptionAttributesResponseForGetSubscriptionAttributes> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: GetSubscriptionAttributesOperationHTTPRequestInput(encodable: input),
                                 action: SimpleNotificationModelOperations.getSubscriptionAttributes.rawValue,
                                 reporting: self.invocationsReporting.getSubscriptionAttributes)
    }

    /**
     Invokes the GetTopicAttributes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetTopicAttributesInput object being passed to this operation.
     - Returns: A future to the GetTopicAttributesResponseForGetTopicAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    public func getTopicAttributes(
            input: SimpleNotificationModel.GetTopicAttributesInput) -> EventLoopFuture<SimpleNotificationModel.GetTopicAttributesResponseForGetTopicAttributes> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: GetTopicAttributesOperationHTTPRequestInput(encodable: input),
                                 action: SimpleNotificationModelOperations.getTopicAttributes.rawValue,
                                 reporting: self.invocationsReporting.getTopicAttributes)
    }

    /**
     Invokes the ListEndpointsByPlatformApplication operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListEndpointsByPlatformApplicationInput object being passed to this operation.
     - Returns: A future to the ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    public func listEndpointsByPlatformApplication(
            input: SimpleNotificationModel.ListEndpointsByPlatformApplicationInput) -> EventLoopFuture<SimpleNotificationModel.ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ListEndpointsByPlatformApplicationOperationHTTPRequestInput(encodable: input),
                                 action: SimpleNotificationModelOperations.listEndpointsByPlatformApplication.rawValue,
                                 reporting: self.invocationsReporting.listEndpointsByPlatformApplication)
    }

    /**
     Invokes the ListPhoneNumbersOptedOut operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListPhoneNumbersOptedOutInput object being passed to this operation.
     - Returns: A future to the ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, throttled.
     */
    public func listPhoneNumbersOptedOut(
            input: SimpleNotificationModel.ListPhoneNumbersOptedOutInput) -> EventLoopFuture<SimpleNotificationModel.ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ListPhoneNumbersOptedOutOperationHTTPRequestInput(encodable: input),
                                 action: SimpleNotificationModelOperations.listPhoneNumbersOptedOut.rawValue,
                                 reporting: self.invocationsReporting.listPhoneNumbersOptedOut)
    }

    /**
     Invokes the ListPlatformApplications operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListPlatformApplicationsInput object being passed to this operation.
     - Returns: A future to the ListPlatformApplicationsResponseForListPlatformApplications object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter.
     */
    public func listPlatformApplications(
            input: SimpleNotificationModel.ListPlatformApplicationsInput) -> EventLoopFuture<SimpleNotificationModel.ListPlatformApplicationsResponseForListPlatformApplications> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ListPlatformApplicationsOperationHTTPRequestInput(encodable: input),
                                 action: SimpleNotificationModelOperations.listPlatformApplications.rawValue,
                                 reporting: self.invocationsReporting.listPlatformApplications)
    }

    /**
     Invokes the ListSubscriptions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListSubscriptionsInput object being passed to this operation.
     - Returns: A future to the ListSubscriptionsResponseForListSubscriptions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter.
     */
    public func listSubscriptions(
            input: SimpleNotificationModel.ListSubscriptionsInput) -> EventLoopFuture<SimpleNotificationModel.ListSubscriptionsResponseForListSubscriptions> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ListSubscriptionsOperationHTTPRequestInput(encodable: input),
                                 action: SimpleNotificationModelOperations.listSubscriptions.rawValue,
                                 reporting: self.invocationsReporting.listSubscriptions)
    }

    /**
     Invokes the ListSubscriptionsByTopic operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListSubscriptionsByTopicInput object being passed to this operation.
     - Returns: A future to the ListSubscriptionsByTopicResponseForListSubscriptionsByTopic object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    public func listSubscriptionsByTopic(
            input: SimpleNotificationModel.ListSubscriptionsByTopicInput) -> EventLoopFuture<SimpleNotificationModel.ListSubscriptionsByTopicResponseForListSubscriptionsByTopic> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ListSubscriptionsByTopicOperationHTTPRequestInput(encodable: input),
                                 action: SimpleNotificationModelOperations.listSubscriptionsByTopic.rawValue,
                                 reporting: self.invocationsReporting.listSubscriptionsByTopic)
    }

    /**
     Invokes the ListTagsForResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
     - Returns: A future to the ListTagsForResourceResponseForListTagsForResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, tagPolicy.
     */
    public func listTagsForResource(
            input: SimpleNotificationModel.ListTagsForResourceRequest) -> EventLoopFuture<SimpleNotificationModel.ListTagsForResourceResponseForListTagsForResource> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ListTagsForResourceOperationHTTPRequestInput(encodable: input),
                                 action: SimpleNotificationModelOperations.listTagsForResource.rawValue,
                                 reporting: self.invocationsReporting.listTagsForResource)
    }

    /**
     Invokes the ListTopics operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListTopicsInput object being passed to this operation.
     - Returns: A future to the ListTopicsResponseForListTopics object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter.
     */
    public func listTopics(
            input: SimpleNotificationModel.ListTopicsInput) -> EventLoopFuture<SimpleNotificationModel.ListTopicsResponseForListTopics> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ListTopicsOperationHTTPRequestInput(encodable: input),
                                 action: SimpleNotificationModelOperations.listTopics.rawValue,
                                 reporting: self.invocationsReporting.listTopics)
    }

    /**
     Invokes the OptInPhoneNumber operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated OptInPhoneNumberInput object being passed to this operation.
     - Returns: A future to the OptInPhoneNumberResponseForOptInPhoneNumber object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, throttled.
     */
    public func optInPhoneNumber(
            input: SimpleNotificationModel.OptInPhoneNumberInput) -> EventLoopFuture<SimpleNotificationModel.OptInPhoneNumberResponseForOptInPhoneNumber> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: OptInPhoneNumberOperationHTTPRequestInput(encodable: input),
                                 action: SimpleNotificationModelOperations.optInPhoneNumber.rawValue,
                                 reporting: self.invocationsReporting.optInPhoneNumber)
    }

    /**
     Invokes the Publish operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PublishInput object being passed to this operation.
     - Returns: A future to the PublishResponseForPublish object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationError, endpointDisabled, internalError, invalidParameter, invalidParameterValue, invalidSecurity, kMSAccessDenied, kMSDisabled, kMSInvalidState, kMSNotFound, kMSOptInRequired, kMSThrottling, notFound, platformApplicationDisabled.
     */
    public func publish(
            input: SimpleNotificationModel.PublishInput) -> EventLoopFuture<SimpleNotificationModel.PublishResponseForPublish> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: PublishOperationHTTPRequestInput(encodable: input),
                                 action: SimpleNotificationModelOperations.publish.rawValue,
                                 reporting: self.invocationsReporting.publish)
    }

    /**
     Invokes the RemovePermission operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RemovePermissionInput object being passed to this operation.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    public func removePermission(
            input: SimpleNotificationModel.RemovePermissionInput) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: RemovePermissionOperationHTTPRequestInput(encodable: input),
                                    action: SimpleNotificationModelOperations.removePermission.rawValue,
                                    reporting: self.invocationsReporting.removePermission)
    }

    /**
     Invokes the SetEndpointAttributes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SetEndpointAttributesInput object being passed to this operation.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    public func setEndpointAttributes(
            input: SimpleNotificationModel.SetEndpointAttributesInput) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: SetEndpointAttributesOperationHTTPRequestInput(encodable: input),
                                    action: SimpleNotificationModelOperations.setEndpointAttributes.rawValue,
                                    reporting: self.invocationsReporting.setEndpointAttributes)
    }

    /**
     Invokes the SetPlatformApplicationAttributes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SetPlatformApplicationAttributesInput object being passed to this operation.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    public func setPlatformApplicationAttributes(
            input: SimpleNotificationModel.SetPlatformApplicationAttributesInput) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: SetPlatformApplicationAttributesOperationHTTPRequestInput(encodable: input),
                                    action: SimpleNotificationModelOperations.setPlatformApplicationAttributes.rawValue,
                                    reporting: self.invocationsReporting.setPlatformApplicationAttributes)
    }

    /**
     Invokes the SetSMSAttributes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SetSMSAttributesInput object being passed to this operation.
     - Returns: A future to the SetSMSAttributesResponseForSetSMSAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, throttled.
     */
    public func setSMSAttributes(
            input: SimpleNotificationModel.SetSMSAttributesInput) -> EventLoopFuture<SimpleNotificationModel.SetSMSAttributesResponseForSetSMSAttributes> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: SetSMSAttributesOperationHTTPRequestInput(encodable: input),
                                 action: SimpleNotificationModelOperations.setSMSAttributes.rawValue,
                                 reporting: self.invocationsReporting.setSMSAttributes)
    }

    /**
     Invokes the SetSubscriptionAttributes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SetSubscriptionAttributesInput object being passed to this operation.
           The possible errors are: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, notFound.
     */
    public func setSubscriptionAttributes(
            input: SimpleNotificationModel.SetSubscriptionAttributesInput) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: SetSubscriptionAttributesOperationHTTPRequestInput(encodable: input),
                                    action: SimpleNotificationModelOperations.setSubscriptionAttributes.rawValue,
                                    reporting: self.invocationsReporting.setSubscriptionAttributes)
    }

    /**
     Invokes the SetTopicAttributes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SetTopicAttributesInput object being passed to this operation.
           The possible errors are: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    public func setTopicAttributes(
            input: SimpleNotificationModel.SetTopicAttributesInput) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: SetTopicAttributesOperationHTTPRequestInput(encodable: input),
                                    action: SimpleNotificationModelOperations.setTopicAttributes.rawValue,
                                    reporting: self.invocationsReporting.setTopicAttributes)
    }

    /**
     Invokes the Subscribe operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SubscribeInput object being passed to this operation.
     - Returns: A future to the SubscribeResponseForSubscribe object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, invalidSecurity, notFound, subscriptionLimitExceeded.
     */
    public func subscribe(
            input: SimpleNotificationModel.SubscribeInput) -> EventLoopFuture<SimpleNotificationModel.SubscribeResponseForSubscribe> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: SubscribeOperationHTTPRequestInput(encodable: input),
                                 action: SimpleNotificationModelOperations.subscribe.rawValue,
                                 reporting: self.invocationsReporting.subscribe)
    }

    /**
     Invokes the TagResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
     - Returns: A future to the TagResourceResponseForTagResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, staleTag, tagLimitExceeded, tagPolicy.
     */
    public func tagResource(
            input: SimpleNotificationModel.TagResourceRequest) -> EventLoopFuture<SimpleNotificationModel.TagResourceResponseForTagResource> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: TagResourceOperationHTTPRequestInput(encodable: input),
                                 action: SimpleNotificationModelOperations.tagResource.rawValue,
                                 reporting: self.invocationsReporting.tagResource)
    }

    /**
     Invokes the Unsubscribe operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UnsubscribeInput object being passed to this operation.
           The possible errors are: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    public func unsubscribe(
            input: SimpleNotificationModel.UnsubscribeInput) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: UnsubscribeOperationHTTPRequestInput(encodable: input),
                                    action: SimpleNotificationModelOperations.unsubscribe.rawValue,
                                    reporting: self.invocationsReporting.unsubscribe)
    }

    /**
     Invokes the UntagResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UntagResourceRequest object being passed to this operation.
     - Returns: A future to the UntagResourceResponseForUntagResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, staleTag, tagLimitExceeded, tagPolicy.
     */
    public func untagResource(
            input: SimpleNotificationModel.UntagResourceRequest) -> EventLoopFuture<SimpleNotificationModel.UntagResourceResponseForUntagResource> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: UntagResourceOperationHTTPRequestInput(encodable: input),
                                 action: SimpleNotificationModelOperations.untagResource.rawValue,
                                 reporting: self.invocationsReporting.untagResource)
    }
}
