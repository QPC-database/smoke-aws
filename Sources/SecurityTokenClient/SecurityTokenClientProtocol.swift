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
// SecurityTokenClientProtocol.swift
// SecurityTokenClient
//

import Foundation
import SecurityTokenModel
import SmokeAWSCore
import SmokeHTTPClient
import NIO

/**
 Client Protocol for the SecurityToken service.
 */
public protocol SecurityTokenClientProtocol {
    typealias AssumeRoleEventLoopFutureAsyncType = (
            _ input: SecurityTokenModel.AssumeRoleRequest) -> EventLoopFuture<SecurityTokenModel.AssumeRoleResponseForAssumeRole>
    typealias AssumeRoleWithSAMLEventLoopFutureAsyncType = (
            _ input: SecurityTokenModel.AssumeRoleWithSAMLRequest) -> EventLoopFuture<SecurityTokenModel.AssumeRoleWithSAMLResponseForAssumeRoleWithSAML>
    typealias AssumeRoleWithWebIdentityEventLoopFutureAsyncType = (
            _ input: SecurityTokenModel.AssumeRoleWithWebIdentityRequest) -> EventLoopFuture<SecurityTokenModel.AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity>
    typealias DecodeAuthorizationMessageEventLoopFutureAsyncType = (
            _ input: SecurityTokenModel.DecodeAuthorizationMessageRequest) -> EventLoopFuture<SecurityTokenModel.DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage>
    typealias GetAccessKeyInfoEventLoopFutureAsyncType = (
            _ input: SecurityTokenModel.GetAccessKeyInfoRequest) -> EventLoopFuture<SecurityTokenModel.GetAccessKeyInfoResponseForGetAccessKeyInfo>
    typealias GetCallerIdentityEventLoopFutureAsyncType = (
            _ input: SecurityTokenModel.GetCallerIdentityRequest) -> EventLoopFuture<SecurityTokenModel.GetCallerIdentityResponseForGetCallerIdentity>
    typealias GetFederationTokenEventLoopFutureAsyncType = (
            _ input: SecurityTokenModel.GetFederationTokenRequest) -> EventLoopFuture<SecurityTokenModel.GetFederationTokenResponseForGetFederationToken>
    typealias GetSessionTokenEventLoopFutureAsyncType = (
            _ input: SecurityTokenModel.GetSessionTokenRequest) -> EventLoopFuture<SecurityTokenModel.GetSessionTokenResponseForGetSessionToken>

    /**
     Invokes the AssumeRole operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AssumeRoleRequest object being passed to this operation.
     - Returns: A future to the AssumeRoleResponseForAssumeRole object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: expiredToken, malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    func assumeRole(
            input: SecurityTokenModel.AssumeRoleRequest) -> EventLoopFuture<SecurityTokenModel.AssumeRoleResponseForAssumeRole>

    /**
     Invokes the AssumeRoleWithSAML operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AssumeRoleWithSAMLRequest object being passed to this operation.
     - Returns: A future to the AssumeRoleWithSAMLResponseForAssumeRoleWithSAML object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: expiredToken, iDPRejectedClaim, invalidIdentityToken, malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    func assumeRoleWithSAML(
            input: SecurityTokenModel.AssumeRoleWithSAMLRequest) -> EventLoopFuture<SecurityTokenModel.AssumeRoleWithSAMLResponseForAssumeRoleWithSAML>

    /**
     Invokes the AssumeRoleWithWebIdentity operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AssumeRoleWithWebIdentityRequest object being passed to this operation.
     - Returns: A future to the AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: expiredToken, iDPCommunicationError, iDPRejectedClaim, invalidIdentityToken, malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    func assumeRoleWithWebIdentity(
            input: SecurityTokenModel.AssumeRoleWithWebIdentityRequest) -> EventLoopFuture<SecurityTokenModel.AssumeRoleWithWebIdentityResponseForAssumeRoleWithWebIdentity>

    /**
     Invokes the DecodeAuthorizationMessage operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DecodeAuthorizationMessageRequest object being passed to this operation.
     - Returns: A future to the DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidAuthorizationMessage.
     */
    func decodeAuthorizationMessage(
            input: SecurityTokenModel.DecodeAuthorizationMessageRequest) -> EventLoopFuture<SecurityTokenModel.DecodeAuthorizationMessageResponseForDecodeAuthorizationMessage>

    /**
     Invokes the GetAccessKeyInfo operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetAccessKeyInfoRequest object being passed to this operation.
     - Returns: A future to the GetAccessKeyInfoResponseForGetAccessKeyInfo object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getAccessKeyInfo(
            input: SecurityTokenModel.GetAccessKeyInfoRequest) -> EventLoopFuture<SecurityTokenModel.GetAccessKeyInfoResponseForGetAccessKeyInfo>

    /**
     Invokes the GetCallerIdentity operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetCallerIdentityRequest object being passed to this operation.
     - Returns: A future to the GetCallerIdentityResponseForGetCallerIdentity object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getCallerIdentity(
            input: SecurityTokenModel.GetCallerIdentityRequest) -> EventLoopFuture<SecurityTokenModel.GetCallerIdentityResponseForGetCallerIdentity>

    /**
     Invokes the GetFederationToken operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetFederationTokenRequest object being passed to this operation.
     - Returns: A future to the GetFederationTokenResponseForGetFederationToken object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: malformedPolicyDocument, packedPolicyTooLarge, regionDisabled.
     */
    func getFederationToken(
            input: SecurityTokenModel.GetFederationTokenRequest) -> EventLoopFuture<SecurityTokenModel.GetFederationTokenResponseForGetFederationToken>

    /**
     Invokes the GetSessionToken operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetSessionTokenRequest object being passed to this operation.
     - Returns: A future to the GetSessionTokenResponseForGetSessionToken object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: regionDisabled.
     */
    func getSessionToken(
            input: SecurityTokenModel.GetSessionTokenRequest) -> EventLoopFuture<SecurityTokenModel.GetSessionTokenResponseForGetSessionToken>
}
