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
// MockSecurityTokenClient.swift
// SecurityTokenClient
//

import Foundation
import SecurityTokenModel
import SmokeAWSCore
import SmokeHTTPClient
import NIO

/**
 Mock Client for the SecurityToken service by default returns the `__default` property of its return type.
 */
public struct MockSecurityTokenClient: SecurityTokenClientProtocol {
    let eventLoop: EventLoop
    let typedErrorProvider: (Swift.Error) -> SecurityTokenError = { $0.asTypedError() }
    let assumeRoleEventLoopFutureAsyncOverride: AssumeRoleEventLoopFutureAsyncType?
    let assumeRoleWithSAMLEventLoopFutureAsyncOverride: AssumeRoleWithSAMLEventLoopFutureAsyncType?
    let assumeRoleWithWebIdentityEventLoopFutureAsyncOverride: AssumeRoleWithWebIdentityEventLoopFutureAsyncType?
    let decodeAuthorizationMessageEventLoopFutureAsyncOverride: DecodeAuthorizationMessageEventLoopFutureAsyncType?
    let getAccessKeyInfoEventLoopFutureAsyncOverride: GetAccessKeyInfoEventLoopFutureAsyncType?
    let getCallerIdentityEventLoopFutureAsyncOverride: GetCallerIdentityEventLoopFutureAsyncType?
    let getFederationTokenEventLoopFutureAsyncOverride: GetFederationTokenEventLoopFutureAsyncType?
    let getSessionTokenEventLoopFutureAsyncOverride: GetSessionTokenEventLoopFutureAsyncType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(
            eventLoop: EventLoop,
            assumeRoleEventLoopFutureAsync: AssumeRoleEventLoopFutureAsyncType? = nil,
            assumeRoleWithSAMLEventLoopFutureAsync: AssumeRoleWithSAMLEventLoopFutureAsyncType? = nil,
            assumeRoleWithWebIdentityEventLoopFutureAsync: AssumeRoleWithWebIdentityEventLoopFutureAsyncType? = nil,
            decodeAuthorizationMessageEventLoopFutureAsync: DecodeAuthorizationMessageEventLoopFutureAsyncType? = nil,
            getAccessKeyInfoEventLoopFutureAsync: GetAccessKeyInfoEventLoopFutureAsyncType? = nil,
            getCallerIdentityEventLoopFutureAsync: GetCallerIdentityEventLoopFutureAsyncType? = nil,
            getFederationTokenEventLoopFutureAsync: GetFederationTokenEventLoopFutureAsyncType? = nil,
            getSessionTokenEventLoopFutureAsync: GetSessionTokenEventLoopFutureAsyncType? = nil) {
        self.eventLoop = eventLoop
        
        self.assumeRoleEventLoopFutureAsyncOverride = assumeRoleEventLoopFutureAsync
        self.assumeRoleWithSAMLEventLoopFutureAsyncOverride = assumeRoleWithSAMLEventLoopFutureAsync
        self.assumeRoleWithWebIdentityEventLoopFutureAsyncOverride = assumeRoleWithWebIdentityEventLoopFutureAsync
        self.decodeAuthorizationMessageEventLoopFutureAsyncOverride = decodeAuthorizationMessageEventLoopFutureAsync
        self.getAccessKeyInfoEventLoopFutureAsyncOverride = getAccessKeyInfoEventLoopFutureAsync
        self.getCallerIdentityEventLoopFutureAsyncOverride = getCallerIdentityEventLoopFutureAsync
        self.getFederationTokenEventLoopFutureAsyncOverride = getFederationTokenEventLoopFutureAsync
        self.getSessionTokenEventLoopFutureAsyncOverride = getSessionTokenEventLoopFutureAsync
    }

    /**
     Invokes the AssumeRole operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AssumeRoleRequest object being passed to this operation.
     - Returns: A future to the AssumeRoleResponseForAssumeRole object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: expiredToken, malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    public func assumeRole(
            input: SecurityTokenModel.AssumeRoleRequest) -> EventLoopFuture<SecurityTokenModel.AssumeRoleResponseForAssumeRole> {
        if let assumeRoleEventLoopFutureAsyncOverride = assumeRoleEventLoopFutureAsyncOverride {
            return assumeRoleEventLoopFutureAsyncOverride(input)
        }

        let result = AssumeRoleResponseForAssumeRole.__default
        
        let promise = self.eventLoop.makePromise(of: AssumeRoleResponseForAssumeRole.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the AssumeRoleWithSAML operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AssumeRoleWithSAMLRequest object being passed to this operation.
     - Returns: A future to the AssumeRoleWithSAMLResponseForAssumeRoleWithSAML object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: expiredToken, iDPRejectedClaim, invalidIdentityToken, malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    public func assumeRoleWithSAML(
            input: SecurityTokenModel.AssumeRoleWithSAMLRequest) -> EventLoopFuture<SecurityTokenModel.AssumeRoleWithSAMLResponseForAssumeRoleWithSAML> {
        if let assumeRoleWithSAMLEventLoopFutureAsyncOverride = assumeRoleWithSAMLEventLoopFutureAsyncOverride {
            return assumeRoleWithSAMLEventLoopFutureAsyncOverride(input)
        }

        let result = AssumeRoleWithSAMLResponseForAssumeRoleWithSAML.__default
        
        let promise = self.eventLoop.makePromise(of: AssumeRoleWithSAMLResponseForAssumeRoleWithSAML.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the AssumeRoleWithWebIdentity operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AssumeRoleWithWebIdentityRequest object being passed to this operation.
     - Returns: A future to the AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: expiredToken, iDPCommunicationError, iDPRejectedClaim, invalidIdentityToken, malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    public func assumeRoleWithWebIdentity(
            input: SecurityTokenModel.AssumeRoleWithWebIdentityRequest) -> EventLoopFuture<SecurityTokenModel.AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity> {
        if let assumeRoleWithWebIdentityEventLoopFutureAsyncOverride = assumeRoleWithWebIdentityEventLoopFutureAsyncOverride {
            return assumeRoleWithWebIdentityEventLoopFutureAsyncOverride(input)
        }

        let result = AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity.__default
        
        let promise = self.eventLoop.makePromise(of: AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DecodeAuthorizationMessage operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DecodeAuthorizationMessageRequest object being passed to this operation.
     - Returns: A future to the DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidAuthorizationMessage.
     */
    public func decodeAuthorizationMessage(
            input: SecurityTokenModel.DecodeAuthorizationMessageRequest) -> EventLoopFuture<SecurityTokenModel.DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage> {
        if let decodeAuthorizationMessageEventLoopFutureAsyncOverride = decodeAuthorizationMessageEventLoopFutureAsyncOverride {
            return decodeAuthorizationMessageEventLoopFutureAsyncOverride(input)
        }

        let result = DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage.__default
        
        let promise = self.eventLoop.makePromise(of: DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the GetAccessKeyInfo operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetAccessKeyInfoRequest object being passed to this operation.
     - Returns: A future to the GetAccessKeyInfoResponseForGetAccessKeyInfo object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getAccessKeyInfo(
            input: SecurityTokenModel.GetAccessKeyInfoRequest) -> EventLoopFuture<SecurityTokenModel.GetAccessKeyInfoResponseForGetAccessKeyInfo> {
        if let getAccessKeyInfoEventLoopFutureAsyncOverride = getAccessKeyInfoEventLoopFutureAsyncOverride {
            return getAccessKeyInfoEventLoopFutureAsyncOverride(input)
        }

        let result = GetAccessKeyInfoResponseForGetAccessKeyInfo.__default
        
        let promise = self.eventLoop.makePromise(of: GetAccessKeyInfoResponseForGetAccessKeyInfo.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the GetCallerIdentity operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetCallerIdentityRequest object being passed to this operation.
     - Returns: A future to the GetCallerIdentityResponseForGetCallerIdentity object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getCallerIdentity(
            input: SecurityTokenModel.GetCallerIdentityRequest) -> EventLoopFuture<SecurityTokenModel.GetCallerIdentityResponseForGetCallerIdentity> {
        if let getCallerIdentityEventLoopFutureAsyncOverride = getCallerIdentityEventLoopFutureAsyncOverride {
            return getCallerIdentityEventLoopFutureAsyncOverride(input)
        }

        let result = GetCallerIdentityResponseForGetCallerIdentity.__default
        
        let promise = self.eventLoop.makePromise(of: GetCallerIdentityResponseForGetCallerIdentity.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the GetFederationToken operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetFederationTokenRequest object being passed to this operation.
     - Returns: A future to the GetFederationTokenResponseForGetFederationToken object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    public func getFederationToken(
            input: SecurityTokenModel.GetFederationTokenRequest) -> EventLoopFuture<SecurityTokenModel.GetFederationTokenResponseForGetFederationToken> {
        if let getFederationTokenEventLoopFutureAsyncOverride = getFederationTokenEventLoopFutureAsyncOverride {
            return getFederationTokenEventLoopFutureAsyncOverride(input)
        }

        let result = GetFederationTokenResponseForGetFederationToken.__default
        
        let promise = self.eventLoop.makePromise(of: GetFederationTokenResponseForGetFederationToken.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the GetSessionToken operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetSessionTokenRequest object being passed to this operation.
     - Returns: A future to the GetSessionTokenResponseForGetSessionToken object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: regionDisabled.
     */
    public func getSessionToken(
            input: SecurityTokenModel.GetSessionTokenRequest) -> EventLoopFuture<SecurityTokenModel.GetSessionTokenResponseForGetSessionToken> {
        if let getSessionTokenEventLoopFutureAsyncOverride = getSessionTokenEventLoopFutureAsyncOverride {
            return getSessionTokenEventLoopFutureAsyncOverride(input)
        }

        let result = GetSessionTokenResponseForGetSessionToken.__default
        
        let promise = self.eventLoop.makePromise(of: GetSessionTokenResponseForGetSessionToken.self)
        promise.succeed(result)
        
        return promise.futureResult
    }
}
