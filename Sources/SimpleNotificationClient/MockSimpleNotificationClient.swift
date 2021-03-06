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
// MockSimpleNotificationClient.swift
// SimpleNotificationClient
//

import Foundation
import SimpleNotificationModel
import SmokeAWSCore
import SmokeHTTPClient
import NIO

/**
 Mock Client for the SimpleNotification service by default returns the `__default` property of its return type.
 */
public struct MockSimpleNotificationClient: SimpleNotificationClientProtocol {
    let eventLoop: EventLoop
    let typedErrorProvider: (Swift.Error) -> SimpleNotificationError = { $0.asTypedError() }
    let addPermissionEventLoopFutureAsyncOverride: AddPermissionEventLoopFutureAsyncType?
    let checkIfPhoneNumberIsOptedOutEventLoopFutureAsyncOverride: CheckIfPhoneNumberIsOptedOutEventLoopFutureAsyncType?
    let confirmSubscriptionEventLoopFutureAsyncOverride: ConfirmSubscriptionEventLoopFutureAsyncType?
    let createPlatformApplicationEventLoopFutureAsyncOverride: CreatePlatformApplicationEventLoopFutureAsyncType?
    let createPlatformEndpointEventLoopFutureAsyncOverride: CreatePlatformEndpointEventLoopFutureAsyncType?
    let createTopicEventLoopFutureAsyncOverride: CreateTopicEventLoopFutureAsyncType?
    let deleteEndpointEventLoopFutureAsyncOverride: DeleteEndpointEventLoopFutureAsyncType?
    let deletePlatformApplicationEventLoopFutureAsyncOverride: DeletePlatformApplicationEventLoopFutureAsyncType?
    let deleteTopicEventLoopFutureAsyncOverride: DeleteTopicEventLoopFutureAsyncType?
    let getEndpointAttributesEventLoopFutureAsyncOverride: GetEndpointAttributesEventLoopFutureAsyncType?
    let getPlatformApplicationAttributesEventLoopFutureAsyncOverride: GetPlatformApplicationAttributesEventLoopFutureAsyncType?
    let getSMSAttributesEventLoopFutureAsyncOverride: GetSMSAttributesEventLoopFutureAsyncType?
    let getSubscriptionAttributesEventLoopFutureAsyncOverride: GetSubscriptionAttributesEventLoopFutureAsyncType?
    let getTopicAttributesEventLoopFutureAsyncOverride: GetTopicAttributesEventLoopFutureAsyncType?
    let listEndpointsByPlatformApplicationEventLoopFutureAsyncOverride: ListEndpointsByPlatformApplicationEventLoopFutureAsyncType?
    let listPhoneNumbersOptedOutEventLoopFutureAsyncOverride: ListPhoneNumbersOptedOutEventLoopFutureAsyncType?
    let listPlatformApplicationsEventLoopFutureAsyncOverride: ListPlatformApplicationsEventLoopFutureAsyncType?
    let listSubscriptionsEventLoopFutureAsyncOverride: ListSubscriptionsEventLoopFutureAsyncType?
    let listSubscriptionsByTopicEventLoopFutureAsyncOverride: ListSubscriptionsByTopicEventLoopFutureAsyncType?
    let listTagsForResourceEventLoopFutureAsyncOverride: ListTagsForResourceEventLoopFutureAsyncType?
    let listTopicsEventLoopFutureAsyncOverride: ListTopicsEventLoopFutureAsyncType?
    let optInPhoneNumberEventLoopFutureAsyncOverride: OptInPhoneNumberEventLoopFutureAsyncType?
    let publishEventLoopFutureAsyncOverride: PublishEventLoopFutureAsyncType?
    let removePermissionEventLoopFutureAsyncOverride: RemovePermissionEventLoopFutureAsyncType?
    let setEndpointAttributesEventLoopFutureAsyncOverride: SetEndpointAttributesEventLoopFutureAsyncType?
    let setPlatformApplicationAttributesEventLoopFutureAsyncOverride: SetPlatformApplicationAttributesEventLoopFutureAsyncType?
    let setSMSAttributesEventLoopFutureAsyncOverride: SetSMSAttributesEventLoopFutureAsyncType?
    let setSubscriptionAttributesEventLoopFutureAsyncOverride: SetSubscriptionAttributesEventLoopFutureAsyncType?
    let setTopicAttributesEventLoopFutureAsyncOverride: SetTopicAttributesEventLoopFutureAsyncType?
    let subscribeEventLoopFutureAsyncOverride: SubscribeEventLoopFutureAsyncType?
    let tagResourceEventLoopFutureAsyncOverride: TagResourceEventLoopFutureAsyncType?
    let unsubscribeEventLoopFutureAsyncOverride: UnsubscribeEventLoopFutureAsyncType?
    let untagResourceEventLoopFutureAsyncOverride: UntagResourceEventLoopFutureAsyncType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(
            eventLoop: EventLoop,
            addPermissionEventLoopFutureAsync: AddPermissionEventLoopFutureAsyncType? = nil,
            checkIfPhoneNumberIsOptedOutEventLoopFutureAsync: CheckIfPhoneNumberIsOptedOutEventLoopFutureAsyncType? = nil,
            confirmSubscriptionEventLoopFutureAsync: ConfirmSubscriptionEventLoopFutureAsyncType? = nil,
            createPlatformApplicationEventLoopFutureAsync: CreatePlatformApplicationEventLoopFutureAsyncType? = nil,
            createPlatformEndpointEventLoopFutureAsync: CreatePlatformEndpointEventLoopFutureAsyncType? = nil,
            createTopicEventLoopFutureAsync: CreateTopicEventLoopFutureAsyncType? = nil,
            deleteEndpointEventLoopFutureAsync: DeleteEndpointEventLoopFutureAsyncType? = nil,
            deletePlatformApplicationEventLoopFutureAsync: DeletePlatformApplicationEventLoopFutureAsyncType? = nil,
            deleteTopicEventLoopFutureAsync: DeleteTopicEventLoopFutureAsyncType? = nil,
            getEndpointAttributesEventLoopFutureAsync: GetEndpointAttributesEventLoopFutureAsyncType? = nil,
            getPlatformApplicationAttributesEventLoopFutureAsync: GetPlatformApplicationAttributesEventLoopFutureAsyncType? = nil,
            getSMSAttributesEventLoopFutureAsync: GetSMSAttributesEventLoopFutureAsyncType? = nil,
            getSubscriptionAttributesEventLoopFutureAsync: GetSubscriptionAttributesEventLoopFutureAsyncType? = nil,
            getTopicAttributesEventLoopFutureAsync: GetTopicAttributesEventLoopFutureAsyncType? = nil,
            listEndpointsByPlatformApplicationEventLoopFutureAsync: ListEndpointsByPlatformApplicationEventLoopFutureAsyncType? = nil,
            listPhoneNumbersOptedOutEventLoopFutureAsync: ListPhoneNumbersOptedOutEventLoopFutureAsyncType? = nil,
            listPlatformApplicationsEventLoopFutureAsync: ListPlatformApplicationsEventLoopFutureAsyncType? = nil,
            listSubscriptionsEventLoopFutureAsync: ListSubscriptionsEventLoopFutureAsyncType? = nil,
            listSubscriptionsByTopicEventLoopFutureAsync: ListSubscriptionsByTopicEventLoopFutureAsyncType? = nil,
            listTagsForResourceEventLoopFutureAsync: ListTagsForResourceEventLoopFutureAsyncType? = nil,
            listTopicsEventLoopFutureAsync: ListTopicsEventLoopFutureAsyncType? = nil,
            optInPhoneNumberEventLoopFutureAsync: OptInPhoneNumberEventLoopFutureAsyncType? = nil,
            publishEventLoopFutureAsync: PublishEventLoopFutureAsyncType? = nil,
            removePermissionEventLoopFutureAsync: RemovePermissionEventLoopFutureAsyncType? = nil,
            setEndpointAttributesEventLoopFutureAsync: SetEndpointAttributesEventLoopFutureAsyncType? = nil,
            setPlatformApplicationAttributesEventLoopFutureAsync: SetPlatformApplicationAttributesEventLoopFutureAsyncType? = nil,
            setSMSAttributesEventLoopFutureAsync: SetSMSAttributesEventLoopFutureAsyncType? = nil,
            setSubscriptionAttributesEventLoopFutureAsync: SetSubscriptionAttributesEventLoopFutureAsyncType? = nil,
            setTopicAttributesEventLoopFutureAsync: SetTopicAttributesEventLoopFutureAsyncType? = nil,
            subscribeEventLoopFutureAsync: SubscribeEventLoopFutureAsyncType? = nil,
            tagResourceEventLoopFutureAsync: TagResourceEventLoopFutureAsyncType? = nil,
            unsubscribeEventLoopFutureAsync: UnsubscribeEventLoopFutureAsyncType? = nil,
            untagResourceEventLoopFutureAsync: UntagResourceEventLoopFutureAsyncType? = nil) {
        self.eventLoop = eventLoop
        
        self.addPermissionEventLoopFutureAsyncOverride = addPermissionEventLoopFutureAsync
        self.checkIfPhoneNumberIsOptedOutEventLoopFutureAsyncOverride = checkIfPhoneNumberIsOptedOutEventLoopFutureAsync
        self.confirmSubscriptionEventLoopFutureAsyncOverride = confirmSubscriptionEventLoopFutureAsync
        self.createPlatformApplicationEventLoopFutureAsyncOverride = createPlatformApplicationEventLoopFutureAsync
        self.createPlatformEndpointEventLoopFutureAsyncOverride = createPlatformEndpointEventLoopFutureAsync
        self.createTopicEventLoopFutureAsyncOverride = createTopicEventLoopFutureAsync
        self.deleteEndpointEventLoopFutureAsyncOverride = deleteEndpointEventLoopFutureAsync
        self.deletePlatformApplicationEventLoopFutureAsyncOverride = deletePlatformApplicationEventLoopFutureAsync
        self.deleteTopicEventLoopFutureAsyncOverride = deleteTopicEventLoopFutureAsync
        self.getEndpointAttributesEventLoopFutureAsyncOverride = getEndpointAttributesEventLoopFutureAsync
        self.getPlatformApplicationAttributesEventLoopFutureAsyncOverride = getPlatformApplicationAttributesEventLoopFutureAsync
        self.getSMSAttributesEventLoopFutureAsyncOverride = getSMSAttributesEventLoopFutureAsync
        self.getSubscriptionAttributesEventLoopFutureAsyncOverride = getSubscriptionAttributesEventLoopFutureAsync
        self.getTopicAttributesEventLoopFutureAsyncOverride = getTopicAttributesEventLoopFutureAsync
        self.listEndpointsByPlatformApplicationEventLoopFutureAsyncOverride = listEndpointsByPlatformApplicationEventLoopFutureAsync
        self.listPhoneNumbersOptedOutEventLoopFutureAsyncOverride = listPhoneNumbersOptedOutEventLoopFutureAsync
        self.listPlatformApplicationsEventLoopFutureAsyncOverride = listPlatformApplicationsEventLoopFutureAsync
        self.listSubscriptionsEventLoopFutureAsyncOverride = listSubscriptionsEventLoopFutureAsync
        self.listSubscriptionsByTopicEventLoopFutureAsyncOverride = listSubscriptionsByTopicEventLoopFutureAsync
        self.listTagsForResourceEventLoopFutureAsyncOverride = listTagsForResourceEventLoopFutureAsync
        self.listTopicsEventLoopFutureAsyncOverride = listTopicsEventLoopFutureAsync
        self.optInPhoneNumberEventLoopFutureAsyncOverride = optInPhoneNumberEventLoopFutureAsync
        self.publishEventLoopFutureAsyncOverride = publishEventLoopFutureAsync
        self.removePermissionEventLoopFutureAsyncOverride = removePermissionEventLoopFutureAsync
        self.setEndpointAttributesEventLoopFutureAsyncOverride = setEndpointAttributesEventLoopFutureAsync
        self.setPlatformApplicationAttributesEventLoopFutureAsyncOverride = setPlatformApplicationAttributesEventLoopFutureAsync
        self.setSMSAttributesEventLoopFutureAsyncOverride = setSMSAttributesEventLoopFutureAsync
        self.setSubscriptionAttributesEventLoopFutureAsyncOverride = setSubscriptionAttributesEventLoopFutureAsync
        self.setTopicAttributesEventLoopFutureAsyncOverride = setTopicAttributesEventLoopFutureAsync
        self.subscribeEventLoopFutureAsyncOverride = subscribeEventLoopFutureAsync
        self.tagResourceEventLoopFutureAsyncOverride = tagResourceEventLoopFutureAsync
        self.unsubscribeEventLoopFutureAsyncOverride = unsubscribeEventLoopFutureAsync
        self.untagResourceEventLoopFutureAsyncOverride = untagResourceEventLoopFutureAsync
    }

    /**
     Invokes the AddPermission operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AddPermissionInput object being passed to this operation.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    public func addPermission(
            input: SimpleNotificationModel.AddPermissionInput) -> EventLoopFuture<Void> {
        if let addPermissionEventLoopFutureAsyncOverride = addPermissionEventLoopFutureAsyncOverride {
            return addPermissionEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
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
        if let checkIfPhoneNumberIsOptedOutEventLoopFutureAsyncOverride = checkIfPhoneNumberIsOptedOutEventLoopFutureAsyncOverride {
            return checkIfPhoneNumberIsOptedOutEventLoopFutureAsyncOverride(input)
        }

        let result = CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut.__default
        
        let promise = self.eventLoop.makePromise(of: CheckIfPhoneNumberIsOptedOutResponseForCheckIfPhoneNumberIsOptedOut.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let confirmSubscriptionEventLoopFutureAsyncOverride = confirmSubscriptionEventLoopFutureAsyncOverride {
            return confirmSubscriptionEventLoopFutureAsyncOverride(input)
        }

        let result = ConfirmSubscriptionResponseForConfirmSubscription.__default
        
        let promise = self.eventLoop.makePromise(of: ConfirmSubscriptionResponseForConfirmSubscription.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let createPlatformApplicationEventLoopFutureAsyncOverride = createPlatformApplicationEventLoopFutureAsyncOverride {
            return createPlatformApplicationEventLoopFutureAsyncOverride(input)
        }

        let result = CreatePlatformApplicationResponseForCreatePlatformApplication.__default
        
        let promise = self.eventLoop.makePromise(of: CreatePlatformApplicationResponseForCreatePlatformApplication.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let createPlatformEndpointEventLoopFutureAsyncOverride = createPlatformEndpointEventLoopFutureAsyncOverride {
            return createPlatformEndpointEventLoopFutureAsyncOverride(input)
        }

        let result = CreateEndpointResponseForCreatePlatformEndpoint.__default
        
        let promise = self.eventLoop.makePromise(of: CreateEndpointResponseForCreatePlatformEndpoint.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let createTopicEventLoopFutureAsyncOverride = createTopicEventLoopFutureAsyncOverride {
            return createTopicEventLoopFutureAsyncOverride(input)
        }

        let result = CreateTopicResponseForCreateTopic.__default
        
        let promise = self.eventLoop.makePromise(of: CreateTopicResponseForCreateTopic.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DeleteEndpoint operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteEndpointInput object being passed to this operation.
           The possible errors are: authorizationError, internalError, invalidParameter.
     */
    public func deleteEndpoint(
            input: SimpleNotificationModel.DeleteEndpointInput) -> EventLoopFuture<Void> {
        if let deleteEndpointEventLoopFutureAsyncOverride = deleteEndpointEventLoopFutureAsyncOverride {
            return deleteEndpointEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the DeletePlatformApplication operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeletePlatformApplicationInput object being passed to this operation.
           The possible errors are: authorizationError, internalError, invalidParameter.
     */
    public func deletePlatformApplication(
            input: SimpleNotificationModel.DeletePlatformApplicationInput) -> EventLoopFuture<Void> {
        if let deletePlatformApplicationEventLoopFutureAsyncOverride = deletePlatformApplicationEventLoopFutureAsyncOverride {
            return deletePlatformApplicationEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the DeleteTopic operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteTopicInput object being passed to this operation.
           The possible errors are: authorizationError, concurrentAccess, internalError, invalidParameter, notFound, staleTag, tagPolicy.
     */
    public func deleteTopic(
            input: SimpleNotificationModel.DeleteTopicInput) -> EventLoopFuture<Void> {
        if let deleteTopicEventLoopFutureAsyncOverride = deleteTopicEventLoopFutureAsyncOverride {
            return deleteTopicEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
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
        if let getEndpointAttributesEventLoopFutureAsyncOverride = getEndpointAttributesEventLoopFutureAsyncOverride {
            return getEndpointAttributesEventLoopFutureAsyncOverride(input)
        }

        let result = GetEndpointAttributesResponseForGetEndpointAttributes.__default
        
        let promise = self.eventLoop.makePromise(of: GetEndpointAttributesResponseForGetEndpointAttributes.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let getPlatformApplicationAttributesEventLoopFutureAsyncOverride = getPlatformApplicationAttributesEventLoopFutureAsyncOverride {
            return getPlatformApplicationAttributesEventLoopFutureAsyncOverride(input)
        }

        let result = GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes.__default
        
        let promise = self.eventLoop.makePromise(of: GetPlatformApplicationAttributesResponseForGetPlatformApplicationAttributes.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let getSMSAttributesEventLoopFutureAsyncOverride = getSMSAttributesEventLoopFutureAsyncOverride {
            return getSMSAttributesEventLoopFutureAsyncOverride(input)
        }

        let result = GetSMSAttributesResponseForGetSMSAttributes.__default
        
        let promise = self.eventLoop.makePromise(of: GetSMSAttributesResponseForGetSMSAttributes.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let getSubscriptionAttributesEventLoopFutureAsyncOverride = getSubscriptionAttributesEventLoopFutureAsyncOverride {
            return getSubscriptionAttributesEventLoopFutureAsyncOverride(input)
        }

        let result = GetSubscriptionAttributesResponseForGetSubscriptionAttributes.__default
        
        let promise = self.eventLoop.makePromise(of: GetSubscriptionAttributesResponseForGetSubscriptionAttributes.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let getTopicAttributesEventLoopFutureAsyncOverride = getTopicAttributesEventLoopFutureAsyncOverride {
            return getTopicAttributesEventLoopFutureAsyncOverride(input)
        }

        let result = GetTopicAttributesResponseForGetTopicAttributes.__default
        
        let promise = self.eventLoop.makePromise(of: GetTopicAttributesResponseForGetTopicAttributes.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let listEndpointsByPlatformApplicationEventLoopFutureAsyncOverride = listEndpointsByPlatformApplicationEventLoopFutureAsyncOverride {
            return listEndpointsByPlatformApplicationEventLoopFutureAsyncOverride(input)
        }

        let result = ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication.__default
        
        let promise = self.eventLoop.makePromise(of: ListEndpointsByPlatformApplicationResponseForListEndpointsByPlatformApplication.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let listPhoneNumbersOptedOutEventLoopFutureAsyncOverride = listPhoneNumbersOptedOutEventLoopFutureAsyncOverride {
            return listPhoneNumbersOptedOutEventLoopFutureAsyncOverride(input)
        }

        let result = ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut.__default
        
        let promise = self.eventLoop.makePromise(of: ListPhoneNumbersOptedOutResponseForListPhoneNumbersOptedOut.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let listPlatformApplicationsEventLoopFutureAsyncOverride = listPlatformApplicationsEventLoopFutureAsyncOverride {
            return listPlatformApplicationsEventLoopFutureAsyncOverride(input)
        }

        let result = ListPlatformApplicationsResponseForListPlatformApplications.__default
        
        let promise = self.eventLoop.makePromise(of: ListPlatformApplicationsResponseForListPlatformApplications.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let listSubscriptionsEventLoopFutureAsyncOverride = listSubscriptionsEventLoopFutureAsyncOverride {
            return listSubscriptionsEventLoopFutureAsyncOverride(input)
        }

        let result = ListSubscriptionsResponseForListSubscriptions.__default
        
        let promise = self.eventLoop.makePromise(of: ListSubscriptionsResponseForListSubscriptions.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let listSubscriptionsByTopicEventLoopFutureAsyncOverride = listSubscriptionsByTopicEventLoopFutureAsyncOverride {
            return listSubscriptionsByTopicEventLoopFutureAsyncOverride(input)
        }

        let result = ListSubscriptionsByTopicResponseForListSubscriptionsByTopic.__default
        
        let promise = self.eventLoop.makePromise(of: ListSubscriptionsByTopicResponseForListSubscriptionsByTopic.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let listTagsForResourceEventLoopFutureAsyncOverride = listTagsForResourceEventLoopFutureAsyncOverride {
            return listTagsForResourceEventLoopFutureAsyncOverride(input)
        }

        let result = ListTagsForResourceResponseForListTagsForResource.__default
        
        let promise = self.eventLoop.makePromise(of: ListTagsForResourceResponseForListTagsForResource.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let listTopicsEventLoopFutureAsyncOverride = listTopicsEventLoopFutureAsyncOverride {
            return listTopicsEventLoopFutureAsyncOverride(input)
        }

        let result = ListTopicsResponseForListTopics.__default
        
        let promise = self.eventLoop.makePromise(of: ListTopicsResponseForListTopics.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let optInPhoneNumberEventLoopFutureAsyncOverride = optInPhoneNumberEventLoopFutureAsyncOverride {
            return optInPhoneNumberEventLoopFutureAsyncOverride(input)
        }

        let result = OptInPhoneNumberResponseForOptInPhoneNumber.__default
        
        let promise = self.eventLoop.makePromise(of: OptInPhoneNumberResponseForOptInPhoneNumber.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let publishEventLoopFutureAsyncOverride = publishEventLoopFutureAsyncOverride {
            return publishEventLoopFutureAsyncOverride(input)
        }

        let result = PublishResponseForPublish.__default
        
        let promise = self.eventLoop.makePromise(of: PublishResponseForPublish.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the RemovePermission operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RemovePermissionInput object being passed to this operation.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    public func removePermission(
            input: SimpleNotificationModel.RemovePermissionInput) -> EventLoopFuture<Void> {
        if let removePermissionEventLoopFutureAsyncOverride = removePermissionEventLoopFutureAsyncOverride {
            return removePermissionEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the SetEndpointAttributes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SetEndpointAttributesInput object being passed to this operation.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    public func setEndpointAttributes(
            input: SimpleNotificationModel.SetEndpointAttributesInput) -> EventLoopFuture<Void> {
        if let setEndpointAttributesEventLoopFutureAsyncOverride = setEndpointAttributesEventLoopFutureAsyncOverride {
            return setEndpointAttributesEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the SetPlatformApplicationAttributes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SetPlatformApplicationAttributesInput object being passed to this operation.
           The possible errors are: authorizationError, internalError, invalidParameter, notFound.
     */
    public func setPlatformApplicationAttributes(
            input: SimpleNotificationModel.SetPlatformApplicationAttributesInput) -> EventLoopFuture<Void> {
        if let setPlatformApplicationAttributesEventLoopFutureAsyncOverride = setPlatformApplicationAttributesEventLoopFutureAsyncOverride {
            return setPlatformApplicationAttributesEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
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
        if let setSMSAttributesEventLoopFutureAsyncOverride = setSMSAttributesEventLoopFutureAsyncOverride {
            return setSMSAttributesEventLoopFutureAsyncOverride(input)
        }

        let result = SetSMSAttributesResponseForSetSMSAttributes.__default
        
        let promise = self.eventLoop.makePromise(of: SetSMSAttributesResponseForSetSMSAttributes.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the SetSubscriptionAttributes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SetSubscriptionAttributesInput object being passed to this operation.
           The possible errors are: authorizationError, filterPolicyLimitExceeded, internalError, invalidParameter, notFound.
     */
    public func setSubscriptionAttributes(
            input: SimpleNotificationModel.SetSubscriptionAttributesInput) -> EventLoopFuture<Void> {
        if let setSubscriptionAttributesEventLoopFutureAsyncOverride = setSubscriptionAttributesEventLoopFutureAsyncOverride {
            return setSubscriptionAttributesEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the SetTopicAttributes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SetTopicAttributesInput object being passed to this operation.
           The possible errors are: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    public func setTopicAttributes(
            input: SimpleNotificationModel.SetTopicAttributesInput) -> EventLoopFuture<Void> {
        if let setTopicAttributesEventLoopFutureAsyncOverride = setTopicAttributesEventLoopFutureAsyncOverride {
            return setTopicAttributesEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
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
        if let subscribeEventLoopFutureAsyncOverride = subscribeEventLoopFutureAsyncOverride {
            return subscribeEventLoopFutureAsyncOverride(input)
        }

        let result = SubscribeResponseForSubscribe.__default
        
        let promise = self.eventLoop.makePromise(of: SubscribeResponseForSubscribe.self)
        promise.succeed(result)
        
        return promise.futureResult
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
        if let tagResourceEventLoopFutureAsyncOverride = tagResourceEventLoopFutureAsyncOverride {
            return tagResourceEventLoopFutureAsyncOverride(input)
        }

        let result = TagResourceResponseForTagResource.__default
        
        let promise = self.eventLoop.makePromise(of: TagResourceResponseForTagResource.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the Unsubscribe operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UnsubscribeInput object being passed to this operation.
           The possible errors are: authorizationError, internalError, invalidParameter, invalidSecurity, notFound.
     */
    public func unsubscribe(
            input: SimpleNotificationModel.UnsubscribeInput) -> EventLoopFuture<Void> {
        if let unsubscribeEventLoopFutureAsyncOverride = unsubscribeEventLoopFutureAsyncOverride {
            return unsubscribeEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
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
        if let untagResourceEventLoopFutureAsyncOverride = untagResourceEventLoopFutureAsyncOverride {
            return untagResourceEventLoopFutureAsyncOverride(input)
        }

        let result = UntagResourceResponseForUntagResource.__default
        
        let promise = self.eventLoop.makePromise(of: UntagResourceResponseForUntagResource.self)
        promise.succeed(result)
        
        return promise.futureResult
    }
}
