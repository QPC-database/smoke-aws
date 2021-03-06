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
// SimpleNotificationClientProtocol.swift
// SimpleNotificationClient
//

import Foundation
import SimpleNotificationModel
import SmokeAWSCore
import SmokeHTTPClient
import NIO

/**
 Client Protocol for the SimpleNotification service.
 */
public protocol SimpleNotificationClientProtocol {
    typealias AddPermissionEventLoopFutureAsyncType = (
            _ input: SimpleNotificationModel.AddPermissionInput) -> EventLoopFuture<Void>
    typealias CheckIfPhoneNumberIsOptedOutEventLoopFutureAsyncType = (
            _ input: SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutInput) -> EventLoopFuture<SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut>
    typealias ConfirmSubscriptionEventLoopFutureAsyncType = (
            _ input: SimpleNotificationModel.ConfirmSubscriptionInput) -> EventLoopFuture<SimpleNotificationModel.ConfirmSubscriptionResponseForConfirmSubscription>
    typealias CreatePlatformApplicationEventLoopFutureAsyncType = (
            _ input: SimpleNotificationModel.CreatePlatformApplicationInput) -> EventLoopFuture<SimpleNotificationModel.CreatePlatformApplicationResponseForCreatePlatformApplication>
    typealias CreatePlatformEndpointEventLoopFutureAsyncType = (
            _ input: SimpleNotificationModel.CreatePlatformEndpointInput) -> EventLoopFuture<SimpleNotificationModel.CreateEndpointResponseForCreatePlatformEndpoint>
    typealias CreateTopicEventLoopFutureAsyncType = (
            _ input: SimpleNotificationModel.CreateTopicInput) -> EventLoopFuture<SimpleNotificationModel.CreateTopicResponseForCreateTopic>
    typealias DeleteEndpointEventLoopFutureAsyncType = (
            _ input: SimpleNotificationModel.DeleteEndpointInput) -> EventLoopFuture<Void>
    typealias DeletePlatformApplicationEventLoopFutureAsyncType = (
            _ input: SimpleNotificationModel.DeletePlatformApplicationInput) -> EventLoopFuture<Void>
    typealias DeleteTopicEventLoopFutureAsyncType = (
            _ input: SimpleNotificationModel.DeleteTopicInput) -> EventLoopFuture<Void>
    typealias GetEndpointAttributesEventLoopFutureAsyncType = (
            _ input: SimpleNotificationModel.GetEndpointAttributesInput) -> EventLoopFuture<SimpleNotificationModel.GetEndpointAttributesResponseForGetEndpointAttributes>
    typealias GetPlatformApplicationAttributesEventLoopFutureAsyncType = (
            _ input: SimpleNotificationModel.GetPlatformApplicationAttributesInput) -> EventLoopFuture<SimpleNotificationModel.GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes>
    typealias GetSMSAttributesEventLoopFutureAsyncType = (
            _ input: SimpleNotificationModel.GetSMSAttributesInput) -> EventLoopFuture<SimpleNotificationModel.GetSMSAttributesResponseForGetSMSAttributes>
    typealias GetSubscriptionAttributesEventLoopFutureAsyncType = (
            _ input: SimpleNotificationModel.GetSubscriptionAttributesInput) -> EventLoopFuture<SimpleNotificationModel.GetSubscriptionAttributesResponseForGetSubscriptionAttributes>
    typealias GetTopicAttributesEventLoopFutureAsyncType = (
            _ input: SimpleNotificationModel.GetTopicAttributesInput) -> EventLoopFuture<SimpleNotificationModel.GetTopicAttributesResponseForGetTopicAttributes>
    typealias ListEndpointsByPlatformApplicationEventLoopFutureAsyncType = (
            _ input: SimpleNotificationModel.ListEndpointsByPlatformApplicationInput) -> EventLoopFuture<SimpleNotificationModel.ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication>
    typealias ListPhoneNumbersOptedOutEventLoopFutureAsyncType = (
            _ input: SimpleNotificationModel.ListPhoneNumbersOptedOutInput) -> EventLoopFuture<SimpleNotificationModel.ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut>
    typealias ListPlatformApplicationsEventLoopFutureAsyncType = (
            _ input: SimpleNotificationModel.ListPlatformApplicationsInput) -> EventLoopFuture<SimpleNotificationModel.ListPlatformApplicationsResponseForListPlatformApplications>
    typealias ListSubscriptionsEventLoopFutureAsyncType = (
            _ input: SimpleNotificationModel.ListSubscriptionsInput) -> EventLoopFuture<SimpleNotificationModel.ListSubscriptionsResponseForListSubscriptions>
    typealias ListSubscriptionsByTopicEventLoopFutureAsyncType = (
            _ input: SimpleNotificationModel.ListSubscriptionsByTopicInput) -> EventLoopFuture<SimpleNotificationModel.ListSubscriptionsByTopicResponseForListSubscriptionsByTopic>
    typealias ListTagsForResourceEventLoopFutureAsyncType = (
            _ input: SimpleNotificationModel.ListTagsForResourceRequest) -> EventLoopFuture<SimpleNotificationModel.ListTagsForResourceResponseForListTagsForResource>
    typealias ListTopicsEventLoopFutureAsyncType = (
            _ input: SimpleNotificationModel.ListTopicsInput) -> EventLoopFuture<SimpleNotificationModel.ListTopicsResponseForListTopics>
    typealias OptInPhoneNumberEventLoopFutureAsyncType = (
            _ input: SimpleNotificationModel.OptInPhoneNumberInput) -> EventLoopFuture<SimpleNotificationModel.OptInPhoneNumberResponseForOptInPhoneNumber>
    typealias PublishEventLoopFutureAsyncType = (
            _ input: SimpleNotificationModel.PublishInput) -> EventLoopFuture<SimpleNotificationModel.PublishResponseForPublish>
    typealias RemovePermissionEventLoopFutureAsyncType = (
            _ input: SimpleNotificationModel.RemovePermissionInput) -> EventLoopFuture<Void>
    typealias SetEndpointAttributesEventLoopFutureAsyncType = (
            _ input: SimpleNotificationModel.SetEndpointAttributesInput) -> EventLoopFuture<Void>
    typealias SetPlatformApplicationAttributesEventLoopFutureAsyncType = (
            _ input: SimpleNotificationModel.SetPlatformApplicationAttributesInput) -> EventLoopFuture<Void>
    typealias SetSMSAttributesEventLoopFutureAsyncType = (
            _ input: SimpleNotificationModel.SetSMSAttributesInput) -> EventLoopFuture<SimpleNotificationModel.SetSMSAttributesResponseForSetSMSAttributes>
    typealias SetSubscriptionAttributesEventLoopFutureAsyncType = (
            _ input: SimpleNotificationModel.SetSubscriptionAttributesInput) -> EventLoopFuture<Void>
    typealias SetTopicAttributesEventLoopFutureAsyncType = (
            _ input: SimpleNotificationModel.SetTopicAttributesInput) -> EventLoopFuture<Void>
    typealias SubscribeEventLoopFutureAsyncType = (
            _ input: SimpleNotificationModel.SubscribeInput) -> EventLoopFuture<SimpleNotificationModel.SubscribeResponseForSubscribe>
    typealias TagResourceEventLoopFutureAsyncType = (
            _ input: SimpleNotificationModel.TagResourceRequest) -> EventLoopFuture<SimpleNotificationModel.TagResourceResponseForTagResource>
    typealias UnsubscribeEventLoopFutureAsyncType = (
            _ input: SimpleNotificationModel.UnsubscribeInput) -> EventLoopFuture<Void>
    typealias UntagResourceEventLoopFutureAsyncType = (
            _ input: SimpleNotificationModel.UntagResourceRequest) -> EventLoopFuture<SimpleNotificationModel.UntagResourceResponseForUntagResource>

    /**
     Invokes the AddPermission operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AddPermissionInput object being passed to this operation.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    func addPermission(
            input: SimpleNotificationModel.AddPermissionInput) -> EventLoopFuture<Void>

    /**
     Invokes the CheckIfPhoneNumberIsOptedOut operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CheckIfPhoneNumberIsOptedOutInput object being passed to this operation.
     - Returns: A future to the CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, throttled.
     */
    func checkIfPhoneNumberIsOptedOut(
            input: SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutInput) -> EventLoopFuture<SimpleNotificationModel.CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut>

    /**
     Invokes the ConfirmSubscription operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ConfirmSubscriptionInput object being passed to this operation.
     - Returns: A future to the ConfirmSubscriptionResponseForConfirmSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, notFound, subscriptionLimitExceeded.
     */
    func confirmSubscription(
            input: SimpleNotificationModel.ConfirmSubscriptionInput) -> EventLoopFuture<SimpleNotificationModel.ConfirmSubscriptionResponseForConfirmSubscription>

    /**
     Invokes the CreatePlatformApplication operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreatePlatformApplicationInput object being passed to this operation.
     - Returns: A future to the CreatePlatformApplicationResponseForCreatePlatformApplication object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter.
     */
    func createPlatformApplication(
            input: SimpleNotificationModel.CreatePlatformApplicationInput) -> EventLoopFuture<SimpleNotificationModel.CreatePlatformApplicationResponseForCreatePlatformApplication>

    /**
     Invokes the CreatePlatformEndpoint operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreatePlatformEndpointInput object being passed to this operation.
     - Returns: A future to the CreateEndpointResponseForCreatePlatformEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    func createPlatformEndpoint(
            input: SimpleNotificationModel.CreatePlatformEndpointInput) -> EventLoopFuture<SimpleNotificationModel.CreateEndpointResponseForCreatePlatformEndpoint>

    /**
     Invokes the CreateTopic operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateTopicInput object being passed to this operation.
     - Returns: A future to the CreateTopicResponseForCreateTopic object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationError, concurrentAccess, internalError, invalidParameter, invalidSecurity, staleTag, tagLimitExceeded, tagPolicy, topicLimitExceeded.
     */
    func createTopic(
            input: SimpleNotificationModel.CreateTopicInput) -> EventLoopFuture<SimpleNotificationModel.CreateTopicResponseForCreateTopic>

    /**
     Invokes the DeleteEndpoint operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteEndpointInput object being passed to this operation.
           The possible errors are: authorizationError, internalError, invalidParameter.
     */
    func deleteEndpoint(
            input: SimpleNotificationModel.DeleteEndpointInput) -> EventLoopFuture<Void>

    /**
     Invokes the DeletePlatformApplication operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeletePlatformApplicationInput object being passed to this operation.
           The possible errors are: authorizationError, internalError, invalidParameter.
     */
    func deletePlatformApplication(
            input: SimpleNotificationModel.DeletePlatformApplicationInput) -> EventLoopFuture<Void>

    /**
     Invokes the DeleteTopic operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteTopicInput object being passed to this operation.
           The possible errors are: authorizationError, concurrentAccess, internalError, invalidParameter, notFound, staleTag, tagPolicy.
     */
    func deleteTopic(
            input: SimpleNotificationModel.DeleteTopicInput) -> EventLoopFuture<Void>

    /**
     Invokes the GetEndpointAttributes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetEndpointAttributesInput object being passed to this operation.
     - Returns: A future to the GetEndpointAttributesResponseForGetEndpointAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    func getEndpointAttributes(
            input: SimpleNotificationModel.GetEndpointAttributesInput) -> EventLoopFuture<SimpleNotificationModel.GetEndpointAttributesResponseForGetEndpointAttributes>

    /**
     Invokes the GetPlatformApplicationAttributes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetPlatformApplicationAttributesInput object being passed to this operation.
     - Returns: A future to the GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    func getPlatformApplicationAttributes(
            input: SimpleNotificationModel.GetPlatformApplicationAttributesInput) -> EventLoopFuture<SimpleNotificationModel.GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes>

    /**
     Invokes the GetSMSAttributes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetSMSAttributesInput object being passed to this operation.
     - Returns: A future to the GetSMSAttributesResponseForGetSMSAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, throttled.
     */
    func getSMSAttributes(
            input: SimpleNotificationModel.GetSMSAttributesInput) -> EventLoopFuture<SimpleNotificationModel.GetSMSAttributesResponseForGetSMSAttributes>

    /**
     Invokes the GetSubscriptionAttributes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetSubscriptionAttributesInput object being passed to this operation.
     - Returns: A future to the GetSubscriptionAttributesResponseForGetSubscriptionAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    func getSubscriptionAttributes(
            input: SimpleNotificationModel.GetSubscriptionAttributesInput) -> EventLoopFuture<SimpleNotificationModel.GetSubscriptionAttributesResponseForGetSubscriptionAttributes>

    /**
     Invokes the GetTopicAttributes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetTopicAttributesInput object being passed to this operation.
     - Returns: A future to the GetTopicAttributesResponseForGetTopicAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    func getTopicAttributes(
            input: SimpleNotificationModel.GetTopicAttributesInput) -> EventLoopFuture<SimpleNotificationModel.GetTopicAttributesResponseForGetTopicAttributes>

    /**
     Invokes the ListEndpointsByPlatformApplication operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListEndpointsByPlatformApplicationInput object being passed to this operation.
     - Returns: A future to the ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    func listEndpointsByPlatformApplication(
            input: SimpleNotificationModel.ListEndpointsByPlatformApplicationInput) -> EventLoopFuture<SimpleNotificationModel.ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication>

    /**
     Invokes the ListPhoneNumbersOptedOut operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListPhoneNumbersOptedOutInput object being passed to this operation.
     - Returns: A future to the ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, throttled.
     */
    func listPhoneNumbersOptedOut(
            input: SimpleNotificationModel.ListPhoneNumbersOptedOutInput) -> EventLoopFuture<SimpleNotificationModel.ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut>

    /**
     Invokes the ListPlatformApplications operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListPlatformApplicationsInput object being passed to this operation.
     - Returns: A future to the ListPlatformApplicationsResponseForListPlatformApplications object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter.
     */
    func listPlatformApplications(
            input: SimpleNotificationModel.ListPlatformApplicationsInput) -> EventLoopFuture<SimpleNotificationModel.ListPlatformApplicationsResponseForListPlatformApplications>

    /**
     Invokes the ListSubscriptions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListSubscriptionsInput object being passed to this operation.
     - Returns: A future to the ListSubscriptionsResponseForListSubscriptions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter.
     */
    func listSubscriptions(
            input: SimpleNotificationModel.ListSubscriptionsInput) -> EventLoopFuture<SimpleNotificationModel.ListSubscriptionsResponseForListSubscriptions>

    /**
     Invokes the ListSubscriptionsByTopic operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListSubscriptionsByTopicInput object being passed to this operation.
     - Returns: A future to the ListSubscriptionsByTopicResponseForListSubscriptionsByTopic object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    func listSubscriptionsByTopic(
            input: SimpleNotificationModel.ListSubscriptionsByTopicInput) -> EventLoopFuture<SimpleNotificationModel.ListSubscriptionsByTopicResponseForListSubscriptionsByTopic>

    /**
     Invokes the ListTagsForResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListTagsForResourceRequest object being passed to this operation.
     - Returns: A future to the ListTagsForResourceResponseForListTagsForResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, tagPolicy.
     */
    func listTagsForResource(
            input: SimpleNotificationModel.ListTagsForResourceRequest) -> EventLoopFuture<SimpleNotificationModel.ListTagsForResourceResponseForListTagsForResource>

    /**
     Invokes the ListTopics operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListTopicsInput object being passed to this operation.
     - Returns: A future to the ListTopicsResponseForListTopics object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter.
     */
    func listTopics(
            input: SimpleNotificationModel.ListTopicsInput) -> EventLoopFuture<SimpleNotificationModel.ListTopicsResponseForListTopics>

    /**
     Invokes the OptInPhoneNumber operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated OptInPhoneNumberInput object being passed to this operation.
     - Returns: A future to the OptInPhoneNumberResponseForOptInPhoneNumber object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, throttled.
     */
    func optInPhoneNumber(
            input: SimpleNotificationModel.OptInPhoneNumberInput) -> EventLoopFuture<SimpleNotificationModel.OptInPhoneNumberResponseForOptInPhoneNumber>

    /**
     Invokes the Publish operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PublishInput object being passed to this operation.
     - Returns: A future to the PublishResponseForPublish object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationError, endpointDisabled, internalError, invalidParameter, invalidParameterValue, invalidSecurity, kMSAccessDenied, kMSDisabled, kMSInvalidState, kMSNotFound, kMSOptInRequired, kMSThrottling, notFound, platformApplicationDisabled.
     */
    func publish(
            input: SimpleNotificationModel.PublishInput) -> EventLoopFuture<SimpleNotificationModel.PublishResponseForPublish>

    /**
     Invokes the RemovePermission operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RemovePermissionInput object being passed to this operation.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    func removePermission(
            input: SimpleNotificationModel.RemovePermissionInput) -> EventLoopFuture<Void>

    /**
     Invokes the SetEndpointAttributes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SetEndpointAttributesInput object being passed to this operation.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    func setEndpointAttributes(
            input: SimpleNotificationModel.SetEndpointAttributesInput) -> EventLoopFuture<Void>

    /**
     Invokes the SetPlatformApplicationAttributes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SetPlatformApplicationAttributesInput object being passed to this operation.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    func setPlatformApplicationAttributes(
            input: SimpleNotificationModel.SetPlatformApplicationAttributesInput) -> EventLoopFuture<Void>

    /**
     Invokes the SetSMSAttributes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SetSMSAttributesInput object being passed to this operation.
     - Returns: A future to the SetSMSAttributesResponseForSetSMSAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationError, internalError, invalidParameter, throttled.
     */
    func setSMSAttributes(
            input: SimpleNotificationModel.SetSMSAttributesInput) -> EventLoopFuture<SimpleNotificationModel.SetSMSAttributesResponseForSetSMSAttributes>

    /**
     Invokes the SetSubscriptionAttributes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SetSubscriptionAttributesInput object being passed to this operation.
           The possible errors are: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, notFound.
     */
    func setSubscriptionAttributes(
            input: SimpleNotificationModel.SetSubscriptionAttributesInput) -> EventLoopFuture<Void>

    /**
     Invokes the SetTopicAttributes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SetTopicAttributesInput object being passed to this operation.
           The possible errors are: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    func setTopicAttributes(
            input: SimpleNotificationModel.SetTopicAttributesInput) -> EventLoopFuture<Void>

    /**
     Invokes the Subscribe operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SubscribeInput object being passed to this operation.
     - Returns: A future to the SubscribeResponseForSubscribe object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, invalidSecurity, notFound, subscriptionLimitExceeded.
     */
    func subscribe(
            input: SimpleNotificationModel.SubscribeInput) -> EventLoopFuture<SimpleNotificationModel.SubscribeResponseForSubscribe>

    /**
     Invokes the TagResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated TagResourceRequest object being passed to this operation.
     - Returns: A future to the TagResourceResponseForTagResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, staleTag, tagLimitExceeded, tagPolicy.
     */
    func tagResource(
            input: SimpleNotificationModel.TagResourceRequest) -> EventLoopFuture<SimpleNotificationModel.TagResourceResponseForTagResource>

    /**
     Invokes the Unsubscribe operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UnsubscribeInput object being passed to this operation.
           The possible errors are: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    func unsubscribe(
            input: SimpleNotificationModel.UnsubscribeInput) -> EventLoopFuture<Void>

    /**
     Invokes the UntagResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UntagResourceRequest object being passed to this operation.
     - Returns: A future to the UntagResourceResponseForUntagResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationError, concurrentAccess, invalidParameter, resourceNotFound, staleTag, tagLimitExceeded, tagPolicy.
     */
    func untagResource(
            input: SimpleNotificationModel.UntagResourceRequest) -> EventLoopFuture<SimpleNotificationModel.UntagResourceResponseForUntagResource>
}
