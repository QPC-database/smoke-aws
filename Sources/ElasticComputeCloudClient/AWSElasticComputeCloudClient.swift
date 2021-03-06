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
// AWSElasticComputeCloudClient.swift
// ElasticComputeCloudClient
//

import Foundation
import ElasticComputeCloudModel
import SmokeAWSCore
import SmokeHTTPClient
import NIO
import SmokeAWSHttp
import NIO
import NIOHTTP1
import AsyncHTTPClient
import Logging

public enum ElasticComputeCloudClientError: Swift.Error {
    case invalidEndpoint(String)
    case unsupportedPayload
    case unknownError(String?)
}

 extension ElasticComputeCloudError: ConvertableError {
    public static func asUnrecognizedError(error: Swift.Error) -> ElasticComputeCloudError {
        return error.asUnrecognizedElasticComputeCloudError()
    }
}

/**
 AWS Client for the ElasticComputeCloud service.
 */
public struct AWSElasticComputeCloudClient<InvocationReportingType: HTTPClientCoreInvocationReporting>: ElasticComputeCloudClientProtocol, AWSQueryClientProtocol {
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

    let operationsReporting: ElasticComputeCloudOperationsReporting
    let invocationsReporting: ElasticComputeCloudInvocationsReporting<InvocationReportingType>
    
    public init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                reporting: InvocationReportingType,
                endpointHostName: String,
                endpointPort: Int = 443,
                requiresTLS: Bool? = nil,
                service: String = "ec2",
                contentType: String = "application/octet-stream",
                apiVersion: String = "2016-11-15",
                connectionTimeoutSeconds: Int64 = 10,
                retryConfiguration: HTTPClientRetryConfiguration = .default,
                eventLoopProvider: HTTPClient.EventLoopGroupProvider = .createNew,
                reportingConfiguration: SmokeAWSClientReportingConfiguration<ElasticComputeCloudModelOperations>
                    = SmokeAWSClientReportingConfiguration<ElasticComputeCloudModelOperations>() ) {
        self.eventLoopGroup = AWSClientHelper.getEventLoop(eventLoopGroupProvider: eventLoopProvider)
        let useTLS = requiresTLS ?? AWSHTTPClientDelegate.requiresTLS(forEndpointPort: endpointPort)
        let clientDelegate = XMLAWSHttpClientDelegate<ElasticComputeCloudError>(requiresTLS: useTLS,
            outputListDecodingStrategy: .collapseListUsingItemTag("item"), 
            inputQueryKeyEncodeTransformStrategy: .capitalizeFirstCharacter)

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
        self.operationsReporting = ElasticComputeCloudOperationsReporting(clientName: "AWSElasticComputeCloudClient", reportingConfiguration: reportingConfiguration)
        self.invocationsReporting = ElasticComputeCloudInvocationsReporting(reporting: reporting, operationsReporting: self.operationsReporting)
    }
    
    internal init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                reporting: InvocationReportingType,
                httpClient: HTTPOperationsClient,
                service: String,
                apiVersion: String,
                eventLoopGroup: EventLoopGroup,
                retryOnErrorProvider: @escaping (SmokeHTTPClient.HTTPClientError) -> Bool,
                retryConfiguration: HTTPClientRetryConfiguration,
                operationsReporting: ElasticComputeCloudOperationsReporting) {
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
        self.invocationsReporting = ElasticComputeCloudInvocationsReporting(reporting: reporting, operationsReporting: self.operationsReporting)
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
     Invokes the AcceptReservedInstancesExchangeQuote operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AcceptReservedInstancesExchangeQuoteRequest object being passed to this operation.
     - Returns: A future to the AcceptReservedInstancesExchangeQuoteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func acceptReservedInstancesExchangeQuote(
            input: ElasticComputeCloudModel.AcceptReservedInstancesExchangeQuoteRequest) -> EventLoopFuture<ElasticComputeCloudModel.AcceptReservedInstancesExchangeQuoteResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: AcceptReservedInstancesExchangeQuoteOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.acceptReservedInstancesExchangeQuote.rawValue,
                                 reporting: self.invocationsReporting.acceptReservedInstancesExchangeQuote,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the AcceptTransitGatewayMulticastDomainAssociations operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AcceptTransitGatewayMulticastDomainAssociationsRequest object being passed to this operation.
     - Returns: A future to the AcceptTransitGatewayMulticastDomainAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func acceptTransitGatewayMulticastDomainAssociations(
            input: ElasticComputeCloudModel.AcceptTransitGatewayMulticastDomainAssociationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.AcceptTransitGatewayMulticastDomainAssociationsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: AcceptTransitGatewayMulticastDomainAssociationsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.acceptTransitGatewayMulticastDomainAssociations.rawValue,
                                 reporting: self.invocationsReporting.acceptTransitGatewayMulticastDomainAssociations,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the AcceptTransitGatewayPeeringAttachment operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AcceptTransitGatewayPeeringAttachmentRequest object being passed to this operation.
     - Returns: A future to the AcceptTransitGatewayPeeringAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func acceptTransitGatewayPeeringAttachment(
            input: ElasticComputeCloudModel.AcceptTransitGatewayPeeringAttachmentRequest) -> EventLoopFuture<ElasticComputeCloudModel.AcceptTransitGatewayPeeringAttachmentResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: AcceptTransitGatewayPeeringAttachmentOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.acceptTransitGatewayPeeringAttachment.rawValue,
                                 reporting: self.invocationsReporting.acceptTransitGatewayPeeringAttachment,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the AcceptTransitGatewayVpcAttachment operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AcceptTransitGatewayVpcAttachmentRequest object being passed to this operation.
     - Returns: A future to the AcceptTransitGatewayVpcAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func acceptTransitGatewayVpcAttachment(
            input: ElasticComputeCloudModel.AcceptTransitGatewayVpcAttachmentRequest) -> EventLoopFuture<ElasticComputeCloudModel.AcceptTransitGatewayVpcAttachmentResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: AcceptTransitGatewayVpcAttachmentOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.acceptTransitGatewayVpcAttachment.rawValue,
                                 reporting: self.invocationsReporting.acceptTransitGatewayVpcAttachment,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the AcceptVpcEndpointConnections operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AcceptVpcEndpointConnectionsRequest object being passed to this operation.
     - Returns: A future to the AcceptVpcEndpointConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func acceptVpcEndpointConnections(
            input: ElasticComputeCloudModel.AcceptVpcEndpointConnectionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.AcceptVpcEndpointConnectionsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: AcceptVpcEndpointConnectionsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.acceptVpcEndpointConnections.rawValue,
                                 reporting: self.invocationsReporting.acceptVpcEndpointConnections,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the AcceptVpcPeeringConnection operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AcceptVpcPeeringConnectionRequest object being passed to this operation.
     - Returns: A future to the AcceptVpcPeeringConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func acceptVpcPeeringConnection(
            input: ElasticComputeCloudModel.AcceptVpcPeeringConnectionRequest) -> EventLoopFuture<ElasticComputeCloudModel.AcceptVpcPeeringConnectionResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: AcceptVpcPeeringConnectionOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.acceptVpcPeeringConnection.rawValue,
                                 reporting: self.invocationsReporting.acceptVpcPeeringConnection,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the AdvertiseByoipCidr operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AdvertiseByoipCidrRequest object being passed to this operation.
     - Returns: A future to the AdvertiseByoipCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func advertiseByoipCidr(
            input: ElasticComputeCloudModel.AdvertiseByoipCidrRequest) -> EventLoopFuture<ElasticComputeCloudModel.AdvertiseByoipCidrResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: AdvertiseByoipCidrOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.advertiseByoipCidr.rawValue,
                                 reporting: self.invocationsReporting.advertiseByoipCidr,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the AllocateAddress operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AllocateAddressRequest object being passed to this operation.
     - Returns: A future to the AllocateAddressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func allocateAddress(
            input: ElasticComputeCloudModel.AllocateAddressRequest) -> EventLoopFuture<ElasticComputeCloudModel.AllocateAddressResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: AllocateAddressOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.allocateAddress.rawValue,
                                 reporting: self.invocationsReporting.allocateAddress,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the AllocateHosts operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AllocateHostsRequest object being passed to this operation.
     - Returns: A future to the AllocateHostsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func allocateHosts(
            input: ElasticComputeCloudModel.AllocateHostsRequest) -> EventLoopFuture<ElasticComputeCloudModel.AllocateHostsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: AllocateHostsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.allocateHosts.rawValue,
                                 reporting: self.invocationsReporting.allocateHosts,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ApplySecurityGroupsToClientVpnTargetNetwork operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ApplySecurityGroupsToClientVpnTargetNetworkRequest object being passed to this operation.
     - Returns: A future to the ApplySecurityGroupsToClientVpnTargetNetworkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func applySecurityGroupsToClientVpnTargetNetwork(
            input: ElasticComputeCloudModel.ApplySecurityGroupsToClientVpnTargetNetworkRequest) -> EventLoopFuture<ElasticComputeCloudModel.ApplySecurityGroupsToClientVpnTargetNetworkResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ApplySecurityGroupsToClientVpnTargetNetworkOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.applySecurityGroupsToClientVpnTargetNetwork.rawValue,
                                 reporting: self.invocationsReporting.applySecurityGroupsToClientVpnTargetNetwork,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the AssignIpv6Addresses operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AssignIpv6AddressesRequest object being passed to this operation.
     - Returns: A future to the AssignIpv6AddressesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func assignIpv6Addresses(
            input: ElasticComputeCloudModel.AssignIpv6AddressesRequest) -> EventLoopFuture<ElasticComputeCloudModel.AssignIpv6AddressesResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: AssignIpv6AddressesOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.assignIpv6Addresses.rawValue,
                                 reporting: self.invocationsReporting.assignIpv6Addresses,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the AssignPrivateIpAddresses operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AssignPrivateIpAddressesRequest object being passed to this operation.
     - Returns: A future to the AssignPrivateIpAddressesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func assignPrivateIpAddresses(
            input: ElasticComputeCloudModel.AssignPrivateIpAddressesRequest) -> EventLoopFuture<ElasticComputeCloudModel.AssignPrivateIpAddressesResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: AssignPrivateIpAddressesOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.assignPrivateIpAddresses.rawValue,
                                 reporting: self.invocationsReporting.assignPrivateIpAddresses,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the AssociateAddress operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AssociateAddressRequest object being passed to this operation.
     - Returns: A future to the AssociateAddressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func associateAddress(
            input: ElasticComputeCloudModel.AssociateAddressRequest) -> EventLoopFuture<ElasticComputeCloudModel.AssociateAddressResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: AssociateAddressOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.associateAddress.rawValue,
                                 reporting: self.invocationsReporting.associateAddress,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the AssociateClientVpnTargetNetwork operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AssociateClientVpnTargetNetworkRequest object being passed to this operation.
     - Returns: A future to the AssociateClientVpnTargetNetworkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func associateClientVpnTargetNetwork(
            input: ElasticComputeCloudModel.AssociateClientVpnTargetNetworkRequest) -> EventLoopFuture<ElasticComputeCloudModel.AssociateClientVpnTargetNetworkResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: AssociateClientVpnTargetNetworkOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.associateClientVpnTargetNetwork.rawValue,
                                 reporting: self.invocationsReporting.associateClientVpnTargetNetwork,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the AssociateDhcpOptions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AssociateDhcpOptionsRequest object being passed to this operation.
     */
    public func associateDhcpOptions(
            input: ElasticComputeCloudModel.AssociateDhcpOptionsRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: AssociateDhcpOptionsOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.associateDhcpOptions.rawValue,
                                    reporting: self.invocationsReporting.associateDhcpOptions,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the AssociateEnclaveCertificateIamRole operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AssociateEnclaveCertificateIamRoleRequest object being passed to this operation.
     - Returns: A future to the AssociateEnclaveCertificateIamRoleResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func associateEnclaveCertificateIamRole(
            input: ElasticComputeCloudModel.AssociateEnclaveCertificateIamRoleRequest) -> EventLoopFuture<ElasticComputeCloudModel.AssociateEnclaveCertificateIamRoleResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: AssociateEnclaveCertificateIamRoleOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.associateEnclaveCertificateIamRole.rawValue,
                                 reporting: self.invocationsReporting.associateEnclaveCertificateIamRole,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the AssociateIamInstanceProfile operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AssociateIamInstanceProfileRequest object being passed to this operation.
     - Returns: A future to the AssociateIamInstanceProfileResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func associateIamInstanceProfile(
            input: ElasticComputeCloudModel.AssociateIamInstanceProfileRequest) -> EventLoopFuture<ElasticComputeCloudModel.AssociateIamInstanceProfileResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: AssociateIamInstanceProfileOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.associateIamInstanceProfile.rawValue,
                                 reporting: self.invocationsReporting.associateIamInstanceProfile,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the AssociateRouteTable operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AssociateRouteTableRequest object being passed to this operation.
     - Returns: A future to the AssociateRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func associateRouteTable(
            input: ElasticComputeCloudModel.AssociateRouteTableRequest) -> EventLoopFuture<ElasticComputeCloudModel.AssociateRouteTableResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: AssociateRouteTableOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.associateRouteTable.rawValue,
                                 reporting: self.invocationsReporting.associateRouteTable,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the AssociateSubnetCidrBlock operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AssociateSubnetCidrBlockRequest object being passed to this operation.
     - Returns: A future to the AssociateSubnetCidrBlockResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func associateSubnetCidrBlock(
            input: ElasticComputeCloudModel.AssociateSubnetCidrBlockRequest) -> EventLoopFuture<ElasticComputeCloudModel.AssociateSubnetCidrBlockResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: AssociateSubnetCidrBlockOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.associateSubnetCidrBlock.rawValue,
                                 reporting: self.invocationsReporting.associateSubnetCidrBlock,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the AssociateTransitGatewayMulticastDomain operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AssociateTransitGatewayMulticastDomainRequest object being passed to this operation.
     - Returns: A future to the AssociateTransitGatewayMulticastDomainResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func associateTransitGatewayMulticastDomain(
            input: ElasticComputeCloudModel.AssociateTransitGatewayMulticastDomainRequest) -> EventLoopFuture<ElasticComputeCloudModel.AssociateTransitGatewayMulticastDomainResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: AssociateTransitGatewayMulticastDomainOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.associateTransitGatewayMulticastDomain.rawValue,
                                 reporting: self.invocationsReporting.associateTransitGatewayMulticastDomain,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the AssociateTransitGatewayRouteTable operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AssociateTransitGatewayRouteTableRequest object being passed to this operation.
     - Returns: A future to the AssociateTransitGatewayRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func associateTransitGatewayRouteTable(
            input: ElasticComputeCloudModel.AssociateTransitGatewayRouteTableRequest) -> EventLoopFuture<ElasticComputeCloudModel.AssociateTransitGatewayRouteTableResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: AssociateTransitGatewayRouteTableOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.associateTransitGatewayRouteTable.rawValue,
                                 reporting: self.invocationsReporting.associateTransitGatewayRouteTable,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the AssociateVpcCidrBlock operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AssociateVpcCidrBlockRequest object being passed to this operation.
     - Returns: A future to the AssociateVpcCidrBlockResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func associateVpcCidrBlock(
            input: ElasticComputeCloudModel.AssociateVpcCidrBlockRequest) -> EventLoopFuture<ElasticComputeCloudModel.AssociateVpcCidrBlockResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: AssociateVpcCidrBlockOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.associateVpcCidrBlock.rawValue,
                                 reporting: self.invocationsReporting.associateVpcCidrBlock,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the AttachClassicLinkVpc operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AttachClassicLinkVpcRequest object being passed to this operation.
     - Returns: A future to the AttachClassicLinkVpcResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func attachClassicLinkVpc(
            input: ElasticComputeCloudModel.AttachClassicLinkVpcRequest) -> EventLoopFuture<ElasticComputeCloudModel.AttachClassicLinkVpcResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: AttachClassicLinkVpcOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.attachClassicLinkVpc.rawValue,
                                 reporting: self.invocationsReporting.attachClassicLinkVpc,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the AttachInternetGateway operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AttachInternetGatewayRequest object being passed to this operation.
     */
    public func attachInternetGateway(
            input: ElasticComputeCloudModel.AttachInternetGatewayRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: AttachInternetGatewayOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.attachInternetGateway.rawValue,
                                    reporting: self.invocationsReporting.attachInternetGateway,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the AttachNetworkInterface operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AttachNetworkInterfaceRequest object being passed to this operation.
     - Returns: A future to the AttachNetworkInterfaceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func attachNetworkInterface(
            input: ElasticComputeCloudModel.AttachNetworkInterfaceRequest) -> EventLoopFuture<ElasticComputeCloudModel.AttachNetworkInterfaceResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: AttachNetworkInterfaceOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.attachNetworkInterface.rawValue,
                                 reporting: self.invocationsReporting.attachNetworkInterface,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the AttachVolume operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AttachVolumeRequest object being passed to this operation.
     - Returns: A future to the VolumeAttachment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func attachVolume(
            input: ElasticComputeCloudModel.AttachVolumeRequest) -> EventLoopFuture<ElasticComputeCloudModel.VolumeAttachment> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: AttachVolumeOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.attachVolume.rawValue,
                                 reporting: self.invocationsReporting.attachVolume,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the AttachVpnGateway operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AttachVpnGatewayRequest object being passed to this operation.
     - Returns: A future to the AttachVpnGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func attachVpnGateway(
            input: ElasticComputeCloudModel.AttachVpnGatewayRequest) -> EventLoopFuture<ElasticComputeCloudModel.AttachVpnGatewayResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: AttachVpnGatewayOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.attachVpnGateway.rawValue,
                                 reporting: self.invocationsReporting.attachVpnGateway,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the AuthorizeClientVpnIngress operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AuthorizeClientVpnIngressRequest object being passed to this operation.
     - Returns: A future to the AuthorizeClientVpnIngressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func authorizeClientVpnIngress(
            input: ElasticComputeCloudModel.AuthorizeClientVpnIngressRequest) -> EventLoopFuture<ElasticComputeCloudModel.AuthorizeClientVpnIngressResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: AuthorizeClientVpnIngressOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.authorizeClientVpnIngress.rawValue,
                                 reporting: self.invocationsReporting.authorizeClientVpnIngress,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the AuthorizeSecurityGroupEgress operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AuthorizeSecurityGroupEgressRequest object being passed to this operation.
     */
    public func authorizeSecurityGroupEgress(
            input: ElasticComputeCloudModel.AuthorizeSecurityGroupEgressRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: AuthorizeSecurityGroupEgressOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.authorizeSecurityGroupEgress.rawValue,
                                    reporting: self.invocationsReporting.authorizeSecurityGroupEgress,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the AuthorizeSecurityGroupIngress operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AuthorizeSecurityGroupIngressRequest object being passed to this operation.
     */
    public func authorizeSecurityGroupIngress(
            input: ElasticComputeCloudModel.AuthorizeSecurityGroupIngressRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: AuthorizeSecurityGroupIngressOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.authorizeSecurityGroupIngress.rawValue,
                                    reporting: self.invocationsReporting.authorizeSecurityGroupIngress,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the BundleInstance operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated BundleInstanceRequest object being passed to this operation.
     - Returns: A future to the BundleInstanceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func bundleInstance(
            input: ElasticComputeCloudModel.BundleInstanceRequest) -> EventLoopFuture<ElasticComputeCloudModel.BundleInstanceResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: BundleInstanceOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.bundleInstance.rawValue,
                                 reporting: self.invocationsReporting.bundleInstance,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CancelBundleTask operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CancelBundleTaskRequest object being passed to this operation.
     - Returns: A future to the CancelBundleTaskResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func cancelBundleTask(
            input: ElasticComputeCloudModel.CancelBundleTaskRequest) -> EventLoopFuture<ElasticComputeCloudModel.CancelBundleTaskResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CancelBundleTaskOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.cancelBundleTask.rawValue,
                                 reporting: self.invocationsReporting.cancelBundleTask,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CancelCapacityReservation operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CancelCapacityReservationRequest object being passed to this operation.
     - Returns: A future to the CancelCapacityReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func cancelCapacityReservation(
            input: ElasticComputeCloudModel.CancelCapacityReservationRequest) -> EventLoopFuture<ElasticComputeCloudModel.CancelCapacityReservationResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CancelCapacityReservationOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.cancelCapacityReservation.rawValue,
                                 reporting: self.invocationsReporting.cancelCapacityReservation,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CancelConversionTask operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CancelConversionRequest object being passed to this operation.
     */
    public func cancelConversionTask(
            input: ElasticComputeCloudModel.CancelConversionRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: CancelConversionTaskOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.cancelConversionTask.rawValue,
                                    reporting: self.invocationsReporting.cancelConversionTask,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CancelExportTask operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CancelExportTaskRequest object being passed to this operation.
     */
    public func cancelExportTask(
            input: ElasticComputeCloudModel.CancelExportTaskRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: CancelExportTaskOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.cancelExportTask.rawValue,
                                    reporting: self.invocationsReporting.cancelExportTask,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CancelImportTask operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CancelImportTaskRequest object being passed to this operation.
     - Returns: A future to the CancelImportTaskResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func cancelImportTask(
            input: ElasticComputeCloudModel.CancelImportTaskRequest) -> EventLoopFuture<ElasticComputeCloudModel.CancelImportTaskResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CancelImportTaskOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.cancelImportTask.rawValue,
                                 reporting: self.invocationsReporting.cancelImportTask,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CancelReservedInstancesListing operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CancelReservedInstancesListingRequest object being passed to this operation.
     - Returns: A future to the CancelReservedInstancesListingResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func cancelReservedInstancesListing(
            input: ElasticComputeCloudModel.CancelReservedInstancesListingRequest) -> EventLoopFuture<ElasticComputeCloudModel.CancelReservedInstancesListingResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CancelReservedInstancesListingOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.cancelReservedInstancesListing.rawValue,
                                 reporting: self.invocationsReporting.cancelReservedInstancesListing,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CancelSpotFleetRequests operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CancelSpotFleetRequestsRequest object being passed to this operation.
     - Returns: A future to the CancelSpotFleetRequestsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func cancelSpotFleetRequests(
            input: ElasticComputeCloudModel.CancelSpotFleetRequestsRequest) -> EventLoopFuture<ElasticComputeCloudModel.CancelSpotFleetRequestsResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CancelSpotFleetRequestsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.cancelSpotFleetRequests.rawValue,
                                 reporting: self.invocationsReporting.cancelSpotFleetRequests,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CancelSpotInstanceRequests operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CancelSpotInstanceRequestsRequest object being passed to this operation.
     - Returns: A future to the CancelSpotInstanceRequestsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func cancelSpotInstanceRequests(
            input: ElasticComputeCloudModel.CancelSpotInstanceRequestsRequest) -> EventLoopFuture<ElasticComputeCloudModel.CancelSpotInstanceRequestsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CancelSpotInstanceRequestsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.cancelSpotInstanceRequests.rawValue,
                                 reporting: self.invocationsReporting.cancelSpotInstanceRequests,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ConfirmProductInstance operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ConfirmProductInstanceRequest object being passed to this operation.
     - Returns: A future to the ConfirmProductInstanceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func confirmProductInstance(
            input: ElasticComputeCloudModel.ConfirmProductInstanceRequest) -> EventLoopFuture<ElasticComputeCloudModel.ConfirmProductInstanceResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ConfirmProductInstanceOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.confirmProductInstance.rawValue,
                                 reporting: self.invocationsReporting.confirmProductInstance,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CopyFpgaImage operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CopyFpgaImageRequest object being passed to this operation.
     - Returns: A future to the CopyFpgaImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func copyFpgaImage(
            input: ElasticComputeCloudModel.CopyFpgaImageRequest) -> EventLoopFuture<ElasticComputeCloudModel.CopyFpgaImageResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CopyFpgaImageOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.copyFpgaImage.rawValue,
                                 reporting: self.invocationsReporting.copyFpgaImage,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CopyImage operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CopyImageRequest object being passed to this operation.
     - Returns: A future to the CopyImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func copyImage(
            input: ElasticComputeCloudModel.CopyImageRequest) -> EventLoopFuture<ElasticComputeCloudModel.CopyImageResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CopyImageOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.copyImage.rawValue,
                                 reporting: self.invocationsReporting.copyImage,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CopySnapshot operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CopySnapshotRequest object being passed to this operation.
     - Returns: A future to the CopySnapshotResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func copySnapshot(
            input: ElasticComputeCloudModel.CopySnapshotRequest) -> EventLoopFuture<ElasticComputeCloudModel.CopySnapshotResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CopySnapshotOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.copySnapshot.rawValue,
                                 reporting: self.invocationsReporting.copySnapshot,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateCapacityReservation operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateCapacityReservationRequest object being passed to this operation.
     - Returns: A future to the CreateCapacityReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createCapacityReservation(
            input: ElasticComputeCloudModel.CreateCapacityReservationRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateCapacityReservationResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateCapacityReservationOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createCapacityReservation.rawValue,
                                 reporting: self.invocationsReporting.createCapacityReservation,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateCarrierGateway operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateCarrierGatewayRequest object being passed to this operation.
     - Returns: A future to the CreateCarrierGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createCarrierGateway(
            input: ElasticComputeCloudModel.CreateCarrierGatewayRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateCarrierGatewayResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateCarrierGatewayOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createCarrierGateway.rawValue,
                                 reporting: self.invocationsReporting.createCarrierGateway,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateClientVpnEndpoint operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateClientVpnEndpointRequest object being passed to this operation.
     - Returns: A future to the CreateClientVpnEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createClientVpnEndpoint(
            input: ElasticComputeCloudModel.CreateClientVpnEndpointRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateClientVpnEndpointResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateClientVpnEndpointOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createClientVpnEndpoint.rawValue,
                                 reporting: self.invocationsReporting.createClientVpnEndpoint,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateClientVpnRoute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateClientVpnRouteRequest object being passed to this operation.
     - Returns: A future to the CreateClientVpnRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createClientVpnRoute(
            input: ElasticComputeCloudModel.CreateClientVpnRouteRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateClientVpnRouteResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateClientVpnRouteOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createClientVpnRoute.rawValue,
                                 reporting: self.invocationsReporting.createClientVpnRoute,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateCustomerGateway operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateCustomerGatewayRequest object being passed to this operation.
     - Returns: A future to the CreateCustomerGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createCustomerGateway(
            input: ElasticComputeCloudModel.CreateCustomerGatewayRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateCustomerGatewayResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateCustomerGatewayOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createCustomerGateway.rawValue,
                                 reporting: self.invocationsReporting.createCustomerGateway,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateDefaultSubnet operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateDefaultSubnetRequest object being passed to this operation.
     - Returns: A future to the CreateDefaultSubnetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createDefaultSubnet(
            input: ElasticComputeCloudModel.CreateDefaultSubnetRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateDefaultSubnetResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateDefaultSubnetOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createDefaultSubnet.rawValue,
                                 reporting: self.invocationsReporting.createDefaultSubnet,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateDefaultVpc operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateDefaultVpcRequest object being passed to this operation.
     - Returns: A future to the CreateDefaultVpcResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createDefaultVpc(
            input: ElasticComputeCloudModel.CreateDefaultVpcRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateDefaultVpcResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateDefaultVpcOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createDefaultVpc.rawValue,
                                 reporting: self.invocationsReporting.createDefaultVpc,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateDhcpOptions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateDhcpOptionsRequest object being passed to this operation.
     - Returns: A future to the CreateDhcpOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createDhcpOptions(
            input: ElasticComputeCloudModel.CreateDhcpOptionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateDhcpOptionsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateDhcpOptionsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createDhcpOptions.rawValue,
                                 reporting: self.invocationsReporting.createDhcpOptions,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateEgressOnlyInternetGateway operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateEgressOnlyInternetGatewayRequest object being passed to this operation.
     - Returns: A future to the CreateEgressOnlyInternetGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createEgressOnlyInternetGateway(
            input: ElasticComputeCloudModel.CreateEgressOnlyInternetGatewayRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateEgressOnlyInternetGatewayResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateEgressOnlyInternetGatewayOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createEgressOnlyInternetGateway.rawValue,
                                 reporting: self.invocationsReporting.createEgressOnlyInternetGateway,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateFleet operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateFleetRequest object being passed to this operation.
     - Returns: A future to the CreateFleetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createFleet(
            input: ElasticComputeCloudModel.CreateFleetRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateFleetResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateFleetOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createFleet.rawValue,
                                 reporting: self.invocationsReporting.createFleet,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateFlowLogs operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateFlowLogsRequest object being passed to this operation.
     - Returns: A future to the CreateFlowLogsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createFlowLogs(
            input: ElasticComputeCloudModel.CreateFlowLogsRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateFlowLogsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateFlowLogsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createFlowLogs.rawValue,
                                 reporting: self.invocationsReporting.createFlowLogs,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateFpgaImage operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateFpgaImageRequest object being passed to this operation.
     - Returns: A future to the CreateFpgaImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createFpgaImage(
            input: ElasticComputeCloudModel.CreateFpgaImageRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateFpgaImageResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateFpgaImageOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createFpgaImage.rawValue,
                                 reporting: self.invocationsReporting.createFpgaImage,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateImage operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateImageRequest object being passed to this operation.
     - Returns: A future to the CreateImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createImage(
            input: ElasticComputeCloudModel.CreateImageRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateImageResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateImageOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createImage.rawValue,
                                 reporting: self.invocationsReporting.createImage,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateInstanceExportTask operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateInstanceExportTaskRequest object being passed to this operation.
     - Returns: A future to the CreateInstanceExportTaskResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createInstanceExportTask(
            input: ElasticComputeCloudModel.CreateInstanceExportTaskRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateInstanceExportTaskResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateInstanceExportTaskOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createInstanceExportTask.rawValue,
                                 reporting: self.invocationsReporting.createInstanceExportTask,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateInternetGateway operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateInternetGatewayRequest object being passed to this operation.
     - Returns: A future to the CreateInternetGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createInternetGateway(
            input: ElasticComputeCloudModel.CreateInternetGatewayRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateInternetGatewayResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateInternetGatewayOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createInternetGateway.rawValue,
                                 reporting: self.invocationsReporting.createInternetGateway,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateKeyPair operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateKeyPairRequest object being passed to this operation.
     - Returns: A future to the KeyPair object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createKeyPair(
            input: ElasticComputeCloudModel.CreateKeyPairRequest) -> EventLoopFuture<ElasticComputeCloudModel.KeyPair> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateKeyPairOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createKeyPair.rawValue,
                                 reporting: self.invocationsReporting.createKeyPair,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateLaunchTemplate operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateLaunchTemplateRequest object being passed to this operation.
     - Returns: A future to the CreateLaunchTemplateResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createLaunchTemplate(
            input: ElasticComputeCloudModel.CreateLaunchTemplateRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateLaunchTemplateResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateLaunchTemplateOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createLaunchTemplate.rawValue,
                                 reporting: self.invocationsReporting.createLaunchTemplate,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateLaunchTemplateVersion operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateLaunchTemplateVersionRequest object being passed to this operation.
     - Returns: A future to the CreateLaunchTemplateVersionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createLaunchTemplateVersion(
            input: ElasticComputeCloudModel.CreateLaunchTemplateVersionRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateLaunchTemplateVersionResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateLaunchTemplateVersionOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createLaunchTemplateVersion.rawValue,
                                 reporting: self.invocationsReporting.createLaunchTemplateVersion,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateLocalGatewayRoute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateLocalGatewayRouteRequest object being passed to this operation.
     - Returns: A future to the CreateLocalGatewayRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createLocalGatewayRoute(
            input: ElasticComputeCloudModel.CreateLocalGatewayRouteRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateLocalGatewayRouteResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateLocalGatewayRouteOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createLocalGatewayRoute.rawValue,
                                 reporting: self.invocationsReporting.createLocalGatewayRoute,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateLocalGatewayRouteTableVpcAssociation operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateLocalGatewayRouteTableVpcAssociationRequest object being passed to this operation.
     - Returns: A future to the CreateLocalGatewayRouteTableVpcAssociationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createLocalGatewayRouteTableVpcAssociation(
            input: ElasticComputeCloudModel.CreateLocalGatewayRouteTableVpcAssociationRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateLocalGatewayRouteTableVpcAssociationResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateLocalGatewayRouteTableVpcAssociationOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createLocalGatewayRouteTableVpcAssociation.rawValue,
                                 reporting: self.invocationsReporting.createLocalGatewayRouteTableVpcAssociation,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateManagedPrefixList operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateManagedPrefixListRequest object being passed to this operation.
     - Returns: A future to the CreateManagedPrefixListResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createManagedPrefixList(
            input: ElasticComputeCloudModel.CreateManagedPrefixListRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateManagedPrefixListResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateManagedPrefixListOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createManagedPrefixList.rawValue,
                                 reporting: self.invocationsReporting.createManagedPrefixList,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateNatGateway operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateNatGatewayRequest object being passed to this operation.
     - Returns: A future to the CreateNatGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createNatGateway(
            input: ElasticComputeCloudModel.CreateNatGatewayRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateNatGatewayResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateNatGatewayOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createNatGateway.rawValue,
                                 reporting: self.invocationsReporting.createNatGateway,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateNetworkAcl operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateNetworkAclRequest object being passed to this operation.
     - Returns: A future to the CreateNetworkAclResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createNetworkAcl(
            input: ElasticComputeCloudModel.CreateNetworkAclRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateNetworkAclResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateNetworkAclOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createNetworkAcl.rawValue,
                                 reporting: self.invocationsReporting.createNetworkAcl,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateNetworkAclEntry operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateNetworkAclEntryRequest object being passed to this operation.
     */
    public func createNetworkAclEntry(
            input: ElasticComputeCloudModel.CreateNetworkAclEntryRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: CreateNetworkAclEntryOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.createNetworkAclEntry.rawValue,
                                    reporting: self.invocationsReporting.createNetworkAclEntry,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateNetworkInsightsPath operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateNetworkInsightsPathRequest object being passed to this operation.
     - Returns: A future to the CreateNetworkInsightsPathResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createNetworkInsightsPath(
            input: ElasticComputeCloudModel.CreateNetworkInsightsPathRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateNetworkInsightsPathResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateNetworkInsightsPathOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createNetworkInsightsPath.rawValue,
                                 reporting: self.invocationsReporting.createNetworkInsightsPath,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateNetworkInterface operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateNetworkInterfaceRequest object being passed to this operation.
     - Returns: A future to the CreateNetworkInterfaceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createNetworkInterface(
            input: ElasticComputeCloudModel.CreateNetworkInterfaceRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateNetworkInterfaceResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateNetworkInterfaceOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createNetworkInterface.rawValue,
                                 reporting: self.invocationsReporting.createNetworkInterface,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateNetworkInterfacePermission operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateNetworkInterfacePermissionRequest object being passed to this operation.
     - Returns: A future to the CreateNetworkInterfacePermissionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createNetworkInterfacePermission(
            input: ElasticComputeCloudModel.CreateNetworkInterfacePermissionRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateNetworkInterfacePermissionResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateNetworkInterfacePermissionOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createNetworkInterfacePermission.rawValue,
                                 reporting: self.invocationsReporting.createNetworkInterfacePermission,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreatePlacementGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreatePlacementGroupRequest object being passed to this operation.
     - Returns: A future to the CreatePlacementGroupResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createPlacementGroup(
            input: ElasticComputeCloudModel.CreatePlacementGroupRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreatePlacementGroupResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreatePlacementGroupOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createPlacementGroup.rawValue,
                                 reporting: self.invocationsReporting.createPlacementGroup,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateReservedInstancesListing operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateReservedInstancesListingRequest object being passed to this operation.
     - Returns: A future to the CreateReservedInstancesListingResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createReservedInstancesListing(
            input: ElasticComputeCloudModel.CreateReservedInstancesListingRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateReservedInstancesListingResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateReservedInstancesListingOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createReservedInstancesListing.rawValue,
                                 reporting: self.invocationsReporting.createReservedInstancesListing,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateRoute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateRouteRequest object being passed to this operation.
     - Returns: A future to the CreateRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createRoute(
            input: ElasticComputeCloudModel.CreateRouteRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateRouteResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateRouteOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createRoute.rawValue,
                                 reporting: self.invocationsReporting.createRoute,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateRouteTable operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateRouteTableRequest object being passed to this operation.
     - Returns: A future to the CreateRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createRouteTable(
            input: ElasticComputeCloudModel.CreateRouteTableRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateRouteTableResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateRouteTableOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createRouteTable.rawValue,
                                 reporting: self.invocationsReporting.createRouteTable,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateSecurityGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateSecurityGroupRequest object being passed to this operation.
     - Returns: A future to the CreateSecurityGroupResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createSecurityGroup(
            input: ElasticComputeCloudModel.CreateSecurityGroupRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateSecurityGroupResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateSecurityGroupOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createSecurityGroup.rawValue,
                                 reporting: self.invocationsReporting.createSecurityGroup,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateSnapshot operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateSnapshotRequest object being passed to this operation.
     - Returns: A future to the Snapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createSnapshot(
            input: ElasticComputeCloudModel.CreateSnapshotRequest) -> EventLoopFuture<ElasticComputeCloudModel.Snapshot> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateSnapshotOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createSnapshot.rawValue,
                                 reporting: self.invocationsReporting.createSnapshot,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateSnapshots operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateSnapshotsRequest object being passed to this operation.
     - Returns: A future to the CreateSnapshotsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createSnapshots(
            input: ElasticComputeCloudModel.CreateSnapshotsRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateSnapshotsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateSnapshotsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createSnapshots.rawValue,
                                 reporting: self.invocationsReporting.createSnapshots,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateSpotDatafeedSubscription operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateSpotDatafeedSubscriptionRequest object being passed to this operation.
     - Returns: A future to the CreateSpotDatafeedSubscriptionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createSpotDatafeedSubscription(
            input: ElasticComputeCloudModel.CreateSpotDatafeedSubscriptionRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateSpotDatafeedSubscriptionResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateSpotDatafeedSubscriptionOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createSpotDatafeedSubscription.rawValue,
                                 reporting: self.invocationsReporting.createSpotDatafeedSubscription,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateSubnet operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateSubnetRequest object being passed to this operation.
     - Returns: A future to the CreateSubnetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createSubnet(
            input: ElasticComputeCloudModel.CreateSubnetRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateSubnetResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateSubnetOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createSubnet.rawValue,
                                 reporting: self.invocationsReporting.createSubnet,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateTags operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateTagsRequest object being passed to this operation.
     */
    public func createTags(
            input: ElasticComputeCloudModel.CreateTagsRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: CreateTagsOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.createTags.rawValue,
                                    reporting: self.invocationsReporting.createTags,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateTrafficMirrorFilter operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateTrafficMirrorFilterRequest object being passed to this operation.
     - Returns: A future to the CreateTrafficMirrorFilterResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createTrafficMirrorFilter(
            input: ElasticComputeCloudModel.CreateTrafficMirrorFilterRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateTrafficMirrorFilterResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateTrafficMirrorFilterOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createTrafficMirrorFilter.rawValue,
                                 reporting: self.invocationsReporting.createTrafficMirrorFilter,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateTrafficMirrorFilterRule operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateTrafficMirrorFilterRuleRequest object being passed to this operation.
     - Returns: A future to the CreateTrafficMirrorFilterRuleResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createTrafficMirrorFilterRule(
            input: ElasticComputeCloudModel.CreateTrafficMirrorFilterRuleRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateTrafficMirrorFilterRuleResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateTrafficMirrorFilterRuleOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createTrafficMirrorFilterRule.rawValue,
                                 reporting: self.invocationsReporting.createTrafficMirrorFilterRule,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateTrafficMirrorSession operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateTrafficMirrorSessionRequest object being passed to this operation.
     - Returns: A future to the CreateTrafficMirrorSessionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createTrafficMirrorSession(
            input: ElasticComputeCloudModel.CreateTrafficMirrorSessionRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateTrafficMirrorSessionResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateTrafficMirrorSessionOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createTrafficMirrorSession.rawValue,
                                 reporting: self.invocationsReporting.createTrafficMirrorSession,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateTrafficMirrorTarget operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateTrafficMirrorTargetRequest object being passed to this operation.
     - Returns: A future to the CreateTrafficMirrorTargetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createTrafficMirrorTarget(
            input: ElasticComputeCloudModel.CreateTrafficMirrorTargetRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateTrafficMirrorTargetResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateTrafficMirrorTargetOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createTrafficMirrorTarget.rawValue,
                                 reporting: self.invocationsReporting.createTrafficMirrorTarget,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateTransitGateway operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateTransitGatewayRequest object being passed to this operation.
     - Returns: A future to the CreateTransitGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createTransitGateway(
            input: ElasticComputeCloudModel.CreateTransitGatewayRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateTransitGatewayResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateTransitGatewayOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createTransitGateway.rawValue,
                                 reporting: self.invocationsReporting.createTransitGateway,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateTransitGatewayConnect operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateTransitGatewayConnectRequest object being passed to this operation.
     - Returns: A future to the CreateTransitGatewayConnectResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createTransitGatewayConnect(
            input: ElasticComputeCloudModel.CreateTransitGatewayConnectRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateTransitGatewayConnectResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateTransitGatewayConnectOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createTransitGatewayConnect.rawValue,
                                 reporting: self.invocationsReporting.createTransitGatewayConnect,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateTransitGatewayConnectPeer operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateTransitGatewayConnectPeerRequest object being passed to this operation.
     - Returns: A future to the CreateTransitGatewayConnectPeerResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createTransitGatewayConnectPeer(
            input: ElasticComputeCloudModel.CreateTransitGatewayConnectPeerRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateTransitGatewayConnectPeerResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateTransitGatewayConnectPeerOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createTransitGatewayConnectPeer.rawValue,
                                 reporting: self.invocationsReporting.createTransitGatewayConnectPeer,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateTransitGatewayMulticastDomain operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateTransitGatewayMulticastDomainRequest object being passed to this operation.
     - Returns: A future to the CreateTransitGatewayMulticastDomainResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createTransitGatewayMulticastDomain(
            input: ElasticComputeCloudModel.CreateTransitGatewayMulticastDomainRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateTransitGatewayMulticastDomainResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateTransitGatewayMulticastDomainOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createTransitGatewayMulticastDomain.rawValue,
                                 reporting: self.invocationsReporting.createTransitGatewayMulticastDomain,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateTransitGatewayPeeringAttachment operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateTransitGatewayPeeringAttachmentRequest object being passed to this operation.
     - Returns: A future to the CreateTransitGatewayPeeringAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createTransitGatewayPeeringAttachment(
            input: ElasticComputeCloudModel.CreateTransitGatewayPeeringAttachmentRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateTransitGatewayPeeringAttachmentResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateTransitGatewayPeeringAttachmentOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createTransitGatewayPeeringAttachment.rawValue,
                                 reporting: self.invocationsReporting.createTransitGatewayPeeringAttachment,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateTransitGatewayPrefixListReference operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateTransitGatewayPrefixListReferenceRequest object being passed to this operation.
     - Returns: A future to the CreateTransitGatewayPrefixListReferenceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createTransitGatewayPrefixListReference(
            input: ElasticComputeCloudModel.CreateTransitGatewayPrefixListReferenceRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateTransitGatewayPrefixListReferenceResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateTransitGatewayPrefixListReferenceOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createTransitGatewayPrefixListReference.rawValue,
                                 reporting: self.invocationsReporting.createTransitGatewayPrefixListReference,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateTransitGatewayRoute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateTransitGatewayRouteRequest object being passed to this operation.
     - Returns: A future to the CreateTransitGatewayRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createTransitGatewayRoute(
            input: ElasticComputeCloudModel.CreateTransitGatewayRouteRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateTransitGatewayRouteResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateTransitGatewayRouteOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createTransitGatewayRoute.rawValue,
                                 reporting: self.invocationsReporting.createTransitGatewayRoute,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateTransitGatewayRouteTable operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateTransitGatewayRouteTableRequest object being passed to this operation.
     - Returns: A future to the CreateTransitGatewayRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createTransitGatewayRouteTable(
            input: ElasticComputeCloudModel.CreateTransitGatewayRouteTableRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateTransitGatewayRouteTableResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateTransitGatewayRouteTableOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createTransitGatewayRouteTable.rawValue,
                                 reporting: self.invocationsReporting.createTransitGatewayRouteTable,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateTransitGatewayVpcAttachment operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateTransitGatewayVpcAttachmentRequest object being passed to this operation.
     - Returns: A future to the CreateTransitGatewayVpcAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createTransitGatewayVpcAttachment(
            input: ElasticComputeCloudModel.CreateTransitGatewayVpcAttachmentRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateTransitGatewayVpcAttachmentResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateTransitGatewayVpcAttachmentOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createTransitGatewayVpcAttachment.rawValue,
                                 reporting: self.invocationsReporting.createTransitGatewayVpcAttachment,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateVolume operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateVolumeRequest object being passed to this operation.
     - Returns: A future to the Volume object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createVolume(
            input: ElasticComputeCloudModel.CreateVolumeRequest) -> EventLoopFuture<ElasticComputeCloudModel.Volume> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateVolumeOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createVolume.rawValue,
                                 reporting: self.invocationsReporting.createVolume,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateVpc operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateVpcRequest object being passed to this operation.
     - Returns: A future to the CreateVpcResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createVpc(
            input: ElasticComputeCloudModel.CreateVpcRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateVpcResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateVpcOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createVpc.rawValue,
                                 reporting: self.invocationsReporting.createVpc,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateVpcEndpoint operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateVpcEndpointRequest object being passed to this operation.
     - Returns: A future to the CreateVpcEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createVpcEndpoint(
            input: ElasticComputeCloudModel.CreateVpcEndpointRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateVpcEndpointResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateVpcEndpointOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createVpcEndpoint.rawValue,
                                 reporting: self.invocationsReporting.createVpcEndpoint,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateVpcEndpointConnectionNotification operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateVpcEndpointConnectionNotificationRequest object being passed to this operation.
     - Returns: A future to the CreateVpcEndpointConnectionNotificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createVpcEndpointConnectionNotification(
            input: ElasticComputeCloudModel.CreateVpcEndpointConnectionNotificationRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateVpcEndpointConnectionNotificationResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateVpcEndpointConnectionNotificationOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createVpcEndpointConnectionNotification.rawValue,
                                 reporting: self.invocationsReporting.createVpcEndpointConnectionNotification,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateVpcEndpointServiceConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateVpcEndpointServiceConfigurationRequest object being passed to this operation.
     - Returns: A future to the CreateVpcEndpointServiceConfigurationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createVpcEndpointServiceConfiguration(
            input: ElasticComputeCloudModel.CreateVpcEndpointServiceConfigurationRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateVpcEndpointServiceConfigurationResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateVpcEndpointServiceConfigurationOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createVpcEndpointServiceConfiguration.rawValue,
                                 reporting: self.invocationsReporting.createVpcEndpointServiceConfiguration,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateVpcPeeringConnection operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateVpcPeeringConnectionRequest object being passed to this operation.
     - Returns: A future to the CreateVpcPeeringConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createVpcPeeringConnection(
            input: ElasticComputeCloudModel.CreateVpcPeeringConnectionRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateVpcPeeringConnectionResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateVpcPeeringConnectionOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createVpcPeeringConnection.rawValue,
                                 reporting: self.invocationsReporting.createVpcPeeringConnection,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateVpnConnection operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateVpnConnectionRequest object being passed to this operation.
     - Returns: A future to the CreateVpnConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createVpnConnection(
            input: ElasticComputeCloudModel.CreateVpnConnectionRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateVpnConnectionResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateVpnConnectionOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createVpnConnection.rawValue,
                                 reporting: self.invocationsReporting.createVpnConnection,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateVpnConnectionRoute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateVpnConnectionRouteRequest object being passed to this operation.
     */
    public func createVpnConnectionRoute(
            input: ElasticComputeCloudModel.CreateVpnConnectionRouteRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: CreateVpnConnectionRouteOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.createVpnConnectionRoute.rawValue,
                                    reporting: self.invocationsReporting.createVpnConnectionRoute,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the CreateVpnGateway operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateVpnGatewayRequest object being passed to this operation.
     - Returns: A future to the CreateVpnGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func createVpnGateway(
            input: ElasticComputeCloudModel.CreateVpnGatewayRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateVpnGatewayResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateVpnGatewayOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.createVpnGateway.rawValue,
                                 reporting: self.invocationsReporting.createVpnGateway,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteCarrierGateway operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteCarrierGatewayRequest object being passed to this operation.
     - Returns: A future to the DeleteCarrierGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteCarrierGateway(
            input: ElasticComputeCloudModel.DeleteCarrierGatewayRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteCarrierGatewayResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeleteCarrierGatewayOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.deleteCarrierGateway.rawValue,
                                 reporting: self.invocationsReporting.deleteCarrierGateway,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteClientVpnEndpoint operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteClientVpnEndpointRequest object being passed to this operation.
     - Returns: A future to the DeleteClientVpnEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteClientVpnEndpoint(
            input: ElasticComputeCloudModel.DeleteClientVpnEndpointRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteClientVpnEndpointResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeleteClientVpnEndpointOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.deleteClientVpnEndpoint.rawValue,
                                 reporting: self.invocationsReporting.deleteClientVpnEndpoint,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteClientVpnRoute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteClientVpnRouteRequest object being passed to this operation.
     - Returns: A future to the DeleteClientVpnRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteClientVpnRoute(
            input: ElasticComputeCloudModel.DeleteClientVpnRouteRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteClientVpnRouteResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeleteClientVpnRouteOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.deleteClientVpnRoute.rawValue,
                                 reporting: self.invocationsReporting.deleteClientVpnRoute,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteCustomerGateway operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteCustomerGatewayRequest object being passed to this operation.
     */
    public func deleteCustomerGateway(
            input: ElasticComputeCloudModel.DeleteCustomerGatewayRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: DeleteCustomerGatewayOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.deleteCustomerGateway.rawValue,
                                    reporting: self.invocationsReporting.deleteCustomerGateway,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteDhcpOptions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteDhcpOptionsRequest object being passed to this operation.
     */
    public func deleteDhcpOptions(
            input: ElasticComputeCloudModel.DeleteDhcpOptionsRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: DeleteDhcpOptionsOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.deleteDhcpOptions.rawValue,
                                    reporting: self.invocationsReporting.deleteDhcpOptions,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteEgressOnlyInternetGateway operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteEgressOnlyInternetGatewayRequest object being passed to this operation.
     - Returns: A future to the DeleteEgressOnlyInternetGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteEgressOnlyInternetGateway(
            input: ElasticComputeCloudModel.DeleteEgressOnlyInternetGatewayRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteEgressOnlyInternetGatewayResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeleteEgressOnlyInternetGatewayOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.deleteEgressOnlyInternetGateway.rawValue,
                                 reporting: self.invocationsReporting.deleteEgressOnlyInternetGateway,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteFleets operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteFleetsRequest object being passed to this operation.
     - Returns: A future to the DeleteFleetsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteFleets(
            input: ElasticComputeCloudModel.DeleteFleetsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteFleetsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeleteFleetsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.deleteFleets.rawValue,
                                 reporting: self.invocationsReporting.deleteFleets,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteFlowLogs operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteFlowLogsRequest object being passed to this operation.
     - Returns: A future to the DeleteFlowLogsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteFlowLogs(
            input: ElasticComputeCloudModel.DeleteFlowLogsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteFlowLogsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeleteFlowLogsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.deleteFlowLogs.rawValue,
                                 reporting: self.invocationsReporting.deleteFlowLogs,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteFpgaImage operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteFpgaImageRequest object being passed to this operation.
     - Returns: A future to the DeleteFpgaImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteFpgaImage(
            input: ElasticComputeCloudModel.DeleteFpgaImageRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteFpgaImageResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeleteFpgaImageOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.deleteFpgaImage.rawValue,
                                 reporting: self.invocationsReporting.deleteFpgaImage,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteInternetGateway operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteInternetGatewayRequest object being passed to this operation.
     */
    public func deleteInternetGateway(
            input: ElasticComputeCloudModel.DeleteInternetGatewayRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: DeleteInternetGatewayOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.deleteInternetGateway.rawValue,
                                    reporting: self.invocationsReporting.deleteInternetGateway,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteKeyPair operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteKeyPairRequest object being passed to this operation.
     */
    public func deleteKeyPair(
            input: ElasticComputeCloudModel.DeleteKeyPairRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: DeleteKeyPairOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.deleteKeyPair.rawValue,
                                    reporting: self.invocationsReporting.deleteKeyPair,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteLaunchTemplate operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteLaunchTemplateRequest object being passed to this operation.
     - Returns: A future to the DeleteLaunchTemplateResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteLaunchTemplate(
            input: ElasticComputeCloudModel.DeleteLaunchTemplateRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteLaunchTemplateResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeleteLaunchTemplateOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.deleteLaunchTemplate.rawValue,
                                 reporting: self.invocationsReporting.deleteLaunchTemplate,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteLaunchTemplateVersions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteLaunchTemplateVersionsRequest object being passed to this operation.
     - Returns: A future to the DeleteLaunchTemplateVersionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteLaunchTemplateVersions(
            input: ElasticComputeCloudModel.DeleteLaunchTemplateVersionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteLaunchTemplateVersionsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeleteLaunchTemplateVersionsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.deleteLaunchTemplateVersions.rawValue,
                                 reporting: self.invocationsReporting.deleteLaunchTemplateVersions,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteLocalGatewayRoute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteLocalGatewayRouteRequest object being passed to this operation.
     - Returns: A future to the DeleteLocalGatewayRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteLocalGatewayRoute(
            input: ElasticComputeCloudModel.DeleteLocalGatewayRouteRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteLocalGatewayRouteResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeleteLocalGatewayRouteOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.deleteLocalGatewayRoute.rawValue,
                                 reporting: self.invocationsReporting.deleteLocalGatewayRoute,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteLocalGatewayRouteTableVpcAssociation operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteLocalGatewayRouteTableVpcAssociationRequest object being passed to this operation.
     - Returns: A future to the DeleteLocalGatewayRouteTableVpcAssociationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteLocalGatewayRouteTableVpcAssociation(
            input: ElasticComputeCloudModel.DeleteLocalGatewayRouteTableVpcAssociationRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteLocalGatewayRouteTableVpcAssociationResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeleteLocalGatewayRouteTableVpcAssociationOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.deleteLocalGatewayRouteTableVpcAssociation.rawValue,
                                 reporting: self.invocationsReporting.deleteLocalGatewayRouteTableVpcAssociation,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteManagedPrefixList operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteManagedPrefixListRequest object being passed to this operation.
     - Returns: A future to the DeleteManagedPrefixListResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteManagedPrefixList(
            input: ElasticComputeCloudModel.DeleteManagedPrefixListRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteManagedPrefixListResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeleteManagedPrefixListOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.deleteManagedPrefixList.rawValue,
                                 reporting: self.invocationsReporting.deleteManagedPrefixList,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteNatGateway operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteNatGatewayRequest object being passed to this operation.
     - Returns: A future to the DeleteNatGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteNatGateway(
            input: ElasticComputeCloudModel.DeleteNatGatewayRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteNatGatewayResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeleteNatGatewayOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.deleteNatGateway.rawValue,
                                 reporting: self.invocationsReporting.deleteNatGateway,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteNetworkAcl operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteNetworkAclRequest object being passed to this operation.
     */
    public func deleteNetworkAcl(
            input: ElasticComputeCloudModel.DeleteNetworkAclRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: DeleteNetworkAclOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.deleteNetworkAcl.rawValue,
                                    reporting: self.invocationsReporting.deleteNetworkAcl,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteNetworkAclEntry operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteNetworkAclEntryRequest object being passed to this operation.
     */
    public func deleteNetworkAclEntry(
            input: ElasticComputeCloudModel.DeleteNetworkAclEntryRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: DeleteNetworkAclEntryOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.deleteNetworkAclEntry.rawValue,
                                    reporting: self.invocationsReporting.deleteNetworkAclEntry,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteNetworkInsightsAnalysis operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteNetworkInsightsAnalysisRequest object being passed to this operation.
     - Returns: A future to the DeleteNetworkInsightsAnalysisResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteNetworkInsightsAnalysis(
            input: ElasticComputeCloudModel.DeleteNetworkInsightsAnalysisRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteNetworkInsightsAnalysisResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeleteNetworkInsightsAnalysisOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.deleteNetworkInsightsAnalysis.rawValue,
                                 reporting: self.invocationsReporting.deleteNetworkInsightsAnalysis,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteNetworkInsightsPath operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteNetworkInsightsPathRequest object being passed to this operation.
     - Returns: A future to the DeleteNetworkInsightsPathResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteNetworkInsightsPath(
            input: ElasticComputeCloudModel.DeleteNetworkInsightsPathRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteNetworkInsightsPathResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeleteNetworkInsightsPathOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.deleteNetworkInsightsPath.rawValue,
                                 reporting: self.invocationsReporting.deleteNetworkInsightsPath,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteNetworkInterface operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteNetworkInterfaceRequest object being passed to this operation.
     */
    public func deleteNetworkInterface(
            input: ElasticComputeCloudModel.DeleteNetworkInterfaceRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: DeleteNetworkInterfaceOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.deleteNetworkInterface.rawValue,
                                    reporting: self.invocationsReporting.deleteNetworkInterface,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteNetworkInterfacePermission operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteNetworkInterfacePermissionRequest object being passed to this operation.
     - Returns: A future to the DeleteNetworkInterfacePermissionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteNetworkInterfacePermission(
            input: ElasticComputeCloudModel.DeleteNetworkInterfacePermissionRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteNetworkInterfacePermissionResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeleteNetworkInterfacePermissionOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.deleteNetworkInterfacePermission.rawValue,
                                 reporting: self.invocationsReporting.deleteNetworkInterfacePermission,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeletePlacementGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeletePlacementGroupRequest object being passed to this operation.
     */
    public func deletePlacementGroup(
            input: ElasticComputeCloudModel.DeletePlacementGroupRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: DeletePlacementGroupOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.deletePlacementGroup.rawValue,
                                    reporting: self.invocationsReporting.deletePlacementGroup,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteQueuedReservedInstances operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteQueuedReservedInstancesRequest object being passed to this operation.
     - Returns: A future to the DeleteQueuedReservedInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteQueuedReservedInstances(
            input: ElasticComputeCloudModel.DeleteQueuedReservedInstancesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteQueuedReservedInstancesResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeleteQueuedReservedInstancesOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.deleteQueuedReservedInstances.rawValue,
                                 reporting: self.invocationsReporting.deleteQueuedReservedInstances,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteRoute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteRouteRequest object being passed to this operation.
     */
    public func deleteRoute(
            input: ElasticComputeCloudModel.DeleteRouteRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: DeleteRouteOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.deleteRoute.rawValue,
                                    reporting: self.invocationsReporting.deleteRoute,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteRouteTable operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteRouteTableRequest object being passed to this operation.
     */
    public func deleteRouteTable(
            input: ElasticComputeCloudModel.DeleteRouteTableRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: DeleteRouteTableOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.deleteRouteTable.rawValue,
                                    reporting: self.invocationsReporting.deleteRouteTable,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteSecurityGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteSecurityGroupRequest object being passed to this operation.
     */
    public func deleteSecurityGroup(
            input: ElasticComputeCloudModel.DeleteSecurityGroupRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: DeleteSecurityGroupOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.deleteSecurityGroup.rawValue,
                                    reporting: self.invocationsReporting.deleteSecurityGroup,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteSnapshot operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteSnapshotRequest object being passed to this operation.
     */
    public func deleteSnapshot(
            input: ElasticComputeCloudModel.DeleteSnapshotRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: DeleteSnapshotOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.deleteSnapshot.rawValue,
                                    reporting: self.invocationsReporting.deleteSnapshot,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteSpotDatafeedSubscription operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteSpotDatafeedSubscriptionRequest object being passed to this operation.
     */
    public func deleteSpotDatafeedSubscription(
            input: ElasticComputeCloudModel.DeleteSpotDatafeedSubscriptionRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: DeleteSpotDatafeedSubscriptionOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.deleteSpotDatafeedSubscription.rawValue,
                                    reporting: self.invocationsReporting.deleteSpotDatafeedSubscription,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteSubnet operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteSubnetRequest object being passed to this operation.
     */
    public func deleteSubnet(
            input: ElasticComputeCloudModel.DeleteSubnetRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: DeleteSubnetOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.deleteSubnet.rawValue,
                                    reporting: self.invocationsReporting.deleteSubnet,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteTags operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteTagsRequest object being passed to this operation.
     */
    public func deleteTags(
            input: ElasticComputeCloudModel.DeleteTagsRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: DeleteTagsOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.deleteTags.rawValue,
                                    reporting: self.invocationsReporting.deleteTags,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteTrafficMirrorFilter operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteTrafficMirrorFilterRequest object being passed to this operation.
     - Returns: A future to the DeleteTrafficMirrorFilterResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteTrafficMirrorFilter(
            input: ElasticComputeCloudModel.DeleteTrafficMirrorFilterRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteTrafficMirrorFilterResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeleteTrafficMirrorFilterOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.deleteTrafficMirrorFilter.rawValue,
                                 reporting: self.invocationsReporting.deleteTrafficMirrorFilter,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteTrafficMirrorFilterRule operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteTrafficMirrorFilterRuleRequest object being passed to this operation.
     - Returns: A future to the DeleteTrafficMirrorFilterRuleResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteTrafficMirrorFilterRule(
            input: ElasticComputeCloudModel.DeleteTrafficMirrorFilterRuleRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteTrafficMirrorFilterRuleResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeleteTrafficMirrorFilterRuleOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.deleteTrafficMirrorFilterRule.rawValue,
                                 reporting: self.invocationsReporting.deleteTrafficMirrorFilterRule,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteTrafficMirrorSession operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteTrafficMirrorSessionRequest object being passed to this operation.
     - Returns: A future to the DeleteTrafficMirrorSessionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteTrafficMirrorSession(
            input: ElasticComputeCloudModel.DeleteTrafficMirrorSessionRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteTrafficMirrorSessionResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeleteTrafficMirrorSessionOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.deleteTrafficMirrorSession.rawValue,
                                 reporting: self.invocationsReporting.deleteTrafficMirrorSession,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteTrafficMirrorTarget operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteTrafficMirrorTargetRequest object being passed to this operation.
     - Returns: A future to the DeleteTrafficMirrorTargetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteTrafficMirrorTarget(
            input: ElasticComputeCloudModel.DeleteTrafficMirrorTargetRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteTrafficMirrorTargetResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeleteTrafficMirrorTargetOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.deleteTrafficMirrorTarget.rawValue,
                                 reporting: self.invocationsReporting.deleteTrafficMirrorTarget,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteTransitGateway operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteTransitGatewayRequest object being passed to this operation.
     - Returns: A future to the DeleteTransitGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteTransitGateway(
            input: ElasticComputeCloudModel.DeleteTransitGatewayRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteTransitGatewayResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeleteTransitGatewayOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.deleteTransitGateway.rawValue,
                                 reporting: self.invocationsReporting.deleteTransitGateway,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteTransitGatewayConnect operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteTransitGatewayConnectRequest object being passed to this operation.
     - Returns: A future to the DeleteTransitGatewayConnectResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteTransitGatewayConnect(
            input: ElasticComputeCloudModel.DeleteTransitGatewayConnectRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteTransitGatewayConnectResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeleteTransitGatewayConnectOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.deleteTransitGatewayConnect.rawValue,
                                 reporting: self.invocationsReporting.deleteTransitGatewayConnect,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteTransitGatewayConnectPeer operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteTransitGatewayConnectPeerRequest object being passed to this operation.
     - Returns: A future to the DeleteTransitGatewayConnectPeerResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteTransitGatewayConnectPeer(
            input: ElasticComputeCloudModel.DeleteTransitGatewayConnectPeerRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteTransitGatewayConnectPeerResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeleteTransitGatewayConnectPeerOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.deleteTransitGatewayConnectPeer.rawValue,
                                 reporting: self.invocationsReporting.deleteTransitGatewayConnectPeer,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteTransitGatewayMulticastDomain operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteTransitGatewayMulticastDomainRequest object being passed to this operation.
     - Returns: A future to the DeleteTransitGatewayMulticastDomainResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteTransitGatewayMulticastDomain(
            input: ElasticComputeCloudModel.DeleteTransitGatewayMulticastDomainRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteTransitGatewayMulticastDomainResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeleteTransitGatewayMulticastDomainOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.deleteTransitGatewayMulticastDomain.rawValue,
                                 reporting: self.invocationsReporting.deleteTransitGatewayMulticastDomain,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteTransitGatewayPeeringAttachment operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteTransitGatewayPeeringAttachmentRequest object being passed to this operation.
     - Returns: A future to the DeleteTransitGatewayPeeringAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteTransitGatewayPeeringAttachment(
            input: ElasticComputeCloudModel.DeleteTransitGatewayPeeringAttachmentRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteTransitGatewayPeeringAttachmentResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeleteTransitGatewayPeeringAttachmentOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.deleteTransitGatewayPeeringAttachment.rawValue,
                                 reporting: self.invocationsReporting.deleteTransitGatewayPeeringAttachment,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteTransitGatewayPrefixListReference operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteTransitGatewayPrefixListReferenceRequest object being passed to this operation.
     - Returns: A future to the DeleteTransitGatewayPrefixListReferenceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteTransitGatewayPrefixListReference(
            input: ElasticComputeCloudModel.DeleteTransitGatewayPrefixListReferenceRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteTransitGatewayPrefixListReferenceResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeleteTransitGatewayPrefixListReferenceOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.deleteTransitGatewayPrefixListReference.rawValue,
                                 reporting: self.invocationsReporting.deleteTransitGatewayPrefixListReference,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteTransitGatewayRoute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteTransitGatewayRouteRequest object being passed to this operation.
     - Returns: A future to the DeleteTransitGatewayRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteTransitGatewayRoute(
            input: ElasticComputeCloudModel.DeleteTransitGatewayRouteRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteTransitGatewayRouteResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeleteTransitGatewayRouteOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.deleteTransitGatewayRoute.rawValue,
                                 reporting: self.invocationsReporting.deleteTransitGatewayRoute,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteTransitGatewayRouteTable operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteTransitGatewayRouteTableRequest object being passed to this operation.
     - Returns: A future to the DeleteTransitGatewayRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteTransitGatewayRouteTable(
            input: ElasticComputeCloudModel.DeleteTransitGatewayRouteTableRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteTransitGatewayRouteTableResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeleteTransitGatewayRouteTableOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.deleteTransitGatewayRouteTable.rawValue,
                                 reporting: self.invocationsReporting.deleteTransitGatewayRouteTable,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteTransitGatewayVpcAttachment operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteTransitGatewayVpcAttachmentRequest object being passed to this operation.
     - Returns: A future to the DeleteTransitGatewayVpcAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteTransitGatewayVpcAttachment(
            input: ElasticComputeCloudModel.DeleteTransitGatewayVpcAttachmentRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteTransitGatewayVpcAttachmentResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeleteTransitGatewayVpcAttachmentOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.deleteTransitGatewayVpcAttachment.rawValue,
                                 reporting: self.invocationsReporting.deleteTransitGatewayVpcAttachment,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteVolume operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteVolumeRequest object being passed to this operation.
     */
    public func deleteVolume(
            input: ElasticComputeCloudModel.DeleteVolumeRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: DeleteVolumeOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.deleteVolume.rawValue,
                                    reporting: self.invocationsReporting.deleteVolume,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteVpc operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteVpcRequest object being passed to this operation.
     */
    public func deleteVpc(
            input: ElasticComputeCloudModel.DeleteVpcRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: DeleteVpcOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.deleteVpc.rawValue,
                                    reporting: self.invocationsReporting.deleteVpc,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteVpcEndpointConnectionNotifications operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteVpcEndpointConnectionNotificationsRequest object being passed to this operation.
     - Returns: A future to the DeleteVpcEndpointConnectionNotificationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteVpcEndpointConnectionNotifications(
            input: ElasticComputeCloudModel.DeleteVpcEndpointConnectionNotificationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteVpcEndpointConnectionNotificationsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeleteVpcEndpointConnectionNotificationsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.deleteVpcEndpointConnectionNotifications.rawValue,
                                 reporting: self.invocationsReporting.deleteVpcEndpointConnectionNotifications,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteVpcEndpointServiceConfigurations operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteVpcEndpointServiceConfigurationsRequest object being passed to this operation.
     - Returns: A future to the DeleteVpcEndpointServiceConfigurationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteVpcEndpointServiceConfigurations(
            input: ElasticComputeCloudModel.DeleteVpcEndpointServiceConfigurationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteVpcEndpointServiceConfigurationsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeleteVpcEndpointServiceConfigurationsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.deleteVpcEndpointServiceConfigurations.rawValue,
                                 reporting: self.invocationsReporting.deleteVpcEndpointServiceConfigurations,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteVpcEndpoints operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteVpcEndpointsRequest object being passed to this operation.
     - Returns: A future to the DeleteVpcEndpointsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteVpcEndpoints(
            input: ElasticComputeCloudModel.DeleteVpcEndpointsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteVpcEndpointsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeleteVpcEndpointsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.deleteVpcEndpoints.rawValue,
                                 reporting: self.invocationsReporting.deleteVpcEndpoints,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteVpcPeeringConnection operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteVpcPeeringConnectionRequest object being passed to this operation.
     - Returns: A future to the DeleteVpcPeeringConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deleteVpcPeeringConnection(
            input: ElasticComputeCloudModel.DeleteVpcPeeringConnectionRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteVpcPeeringConnectionResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeleteVpcPeeringConnectionOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.deleteVpcPeeringConnection.rawValue,
                                 reporting: self.invocationsReporting.deleteVpcPeeringConnection,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteVpnConnection operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteVpnConnectionRequest object being passed to this operation.
     */
    public func deleteVpnConnection(
            input: ElasticComputeCloudModel.DeleteVpnConnectionRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: DeleteVpnConnectionOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.deleteVpnConnection.rawValue,
                                    reporting: self.invocationsReporting.deleteVpnConnection,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteVpnConnectionRoute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteVpnConnectionRouteRequest object being passed to this operation.
     */
    public func deleteVpnConnectionRoute(
            input: ElasticComputeCloudModel.DeleteVpnConnectionRouteRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: DeleteVpnConnectionRouteOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.deleteVpnConnectionRoute.rawValue,
                                    reporting: self.invocationsReporting.deleteVpnConnectionRoute,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeleteVpnGateway operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteVpnGatewayRequest object being passed to this operation.
     */
    public func deleteVpnGateway(
            input: ElasticComputeCloudModel.DeleteVpnGatewayRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: DeleteVpnGatewayOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.deleteVpnGateway.rawValue,
                                    reporting: self.invocationsReporting.deleteVpnGateway,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeprovisionByoipCidr operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeprovisionByoipCidrRequest object being passed to this operation.
     - Returns: A future to the DeprovisionByoipCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deprovisionByoipCidr(
            input: ElasticComputeCloudModel.DeprovisionByoipCidrRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeprovisionByoipCidrResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeprovisionByoipCidrOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.deprovisionByoipCidr.rawValue,
                                 reporting: self.invocationsReporting.deprovisionByoipCidr,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeregisterImage operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeregisterImageRequest object being passed to this operation.
     */
    public func deregisterImage(
            input: ElasticComputeCloudModel.DeregisterImageRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: DeregisterImageOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.deregisterImage.rawValue,
                                    reporting: self.invocationsReporting.deregisterImage,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeregisterInstanceEventNotificationAttributes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeregisterInstanceEventNotificationAttributesRequest object being passed to this operation.
     - Returns: A future to the DeregisterInstanceEventNotificationAttributesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deregisterInstanceEventNotificationAttributes(
            input: ElasticComputeCloudModel.DeregisterInstanceEventNotificationAttributesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeregisterInstanceEventNotificationAttributesResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeregisterInstanceEventNotificationAttributesOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.deregisterInstanceEventNotificationAttributes.rawValue,
                                 reporting: self.invocationsReporting.deregisterInstanceEventNotificationAttributes,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeregisterTransitGatewayMulticastGroupMembers operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeregisterTransitGatewayMulticastGroupMembersRequest object being passed to this operation.
     - Returns: A future to the DeregisterTransitGatewayMulticastGroupMembersResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deregisterTransitGatewayMulticastGroupMembers(
            input: ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupMembersRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupMembersResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeregisterTransitGatewayMulticastGroupMembersOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.deregisterTransitGatewayMulticastGroupMembers.rawValue,
                                 reporting: self.invocationsReporting.deregisterTransitGatewayMulticastGroupMembers,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DeregisterTransitGatewayMulticastGroupSources operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeregisterTransitGatewayMulticastGroupSourcesRequest object being passed to this operation.
     - Returns: A future to the DeregisterTransitGatewayMulticastGroupSourcesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func deregisterTransitGatewayMulticastGroupSources(
            input: ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupSourcesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupSourcesResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeregisterTransitGatewayMulticastGroupSourcesOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.deregisterTransitGatewayMulticastGroupSources.rawValue,
                                 reporting: self.invocationsReporting.deregisterTransitGatewayMulticastGroupSources,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeAccountAttributes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeAccountAttributesRequest object being passed to this operation.
     - Returns: A future to the DescribeAccountAttributesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeAccountAttributes(
            input: ElasticComputeCloudModel.DescribeAccountAttributesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeAccountAttributesResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeAccountAttributesOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeAccountAttributes.rawValue,
                                 reporting: self.invocationsReporting.describeAccountAttributes,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeAddresses operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeAddressesRequest object being passed to this operation.
     - Returns: A future to the DescribeAddressesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeAddresses(
            input: ElasticComputeCloudModel.DescribeAddressesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeAddressesResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeAddressesOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeAddresses.rawValue,
                                 reporting: self.invocationsReporting.describeAddresses,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeAddressesAttribute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeAddressesAttributeRequest object being passed to this operation.
     - Returns: A future to the DescribeAddressesAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeAddressesAttribute(
            input: ElasticComputeCloudModel.DescribeAddressesAttributeRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeAddressesAttributeResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeAddressesAttributeOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeAddressesAttribute.rawValue,
                                 reporting: self.invocationsReporting.describeAddressesAttribute,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeAggregateIdFormat operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeAggregateIdFormatRequest object being passed to this operation.
     - Returns: A future to the DescribeAggregateIdFormatResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeAggregateIdFormat(
            input: ElasticComputeCloudModel.DescribeAggregateIdFormatRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeAggregateIdFormatResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeAggregateIdFormatOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeAggregateIdFormat.rawValue,
                                 reporting: self.invocationsReporting.describeAggregateIdFormat,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeAvailabilityZones operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeAvailabilityZonesRequest object being passed to this operation.
     - Returns: A future to the DescribeAvailabilityZonesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeAvailabilityZones(
            input: ElasticComputeCloudModel.DescribeAvailabilityZonesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeAvailabilityZonesResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeAvailabilityZonesOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeAvailabilityZones.rawValue,
                                 reporting: self.invocationsReporting.describeAvailabilityZones,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeBundleTasks operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeBundleTasksRequest object being passed to this operation.
     - Returns: A future to the DescribeBundleTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeBundleTasks(
            input: ElasticComputeCloudModel.DescribeBundleTasksRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeBundleTasksResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeBundleTasksOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeBundleTasks.rawValue,
                                 reporting: self.invocationsReporting.describeBundleTasks,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeByoipCidrs operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeByoipCidrsRequest object being passed to this operation.
     - Returns: A future to the DescribeByoipCidrsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeByoipCidrs(
            input: ElasticComputeCloudModel.DescribeByoipCidrsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeByoipCidrsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeByoipCidrsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeByoipCidrs.rawValue,
                                 reporting: self.invocationsReporting.describeByoipCidrs,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeCapacityReservations operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeCapacityReservationsRequest object being passed to this operation.
     - Returns: A future to the DescribeCapacityReservationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeCapacityReservations(
            input: ElasticComputeCloudModel.DescribeCapacityReservationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeCapacityReservationsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeCapacityReservationsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeCapacityReservations.rawValue,
                                 reporting: self.invocationsReporting.describeCapacityReservations,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeCarrierGateways operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeCarrierGatewaysRequest object being passed to this operation.
     - Returns: A future to the DescribeCarrierGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeCarrierGateways(
            input: ElasticComputeCloudModel.DescribeCarrierGatewaysRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeCarrierGatewaysResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeCarrierGatewaysOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeCarrierGateways.rawValue,
                                 reporting: self.invocationsReporting.describeCarrierGateways,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeClassicLinkInstances operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeClassicLinkInstancesRequest object being passed to this operation.
     - Returns: A future to the DescribeClassicLinkInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeClassicLinkInstances(
            input: ElasticComputeCloudModel.DescribeClassicLinkInstancesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeClassicLinkInstancesResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeClassicLinkInstancesOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeClassicLinkInstances.rawValue,
                                 reporting: self.invocationsReporting.describeClassicLinkInstances,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeClientVpnAuthorizationRules operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeClientVpnAuthorizationRulesRequest object being passed to this operation.
     - Returns: A future to the DescribeClientVpnAuthorizationRulesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeClientVpnAuthorizationRules(
            input: ElasticComputeCloudModel.DescribeClientVpnAuthorizationRulesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeClientVpnAuthorizationRulesResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeClientVpnAuthorizationRulesOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeClientVpnAuthorizationRules.rawValue,
                                 reporting: self.invocationsReporting.describeClientVpnAuthorizationRules,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeClientVpnConnections operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeClientVpnConnectionsRequest object being passed to this operation.
     - Returns: A future to the DescribeClientVpnConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeClientVpnConnections(
            input: ElasticComputeCloudModel.DescribeClientVpnConnectionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeClientVpnConnectionsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeClientVpnConnectionsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeClientVpnConnections.rawValue,
                                 reporting: self.invocationsReporting.describeClientVpnConnections,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeClientVpnEndpoints operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeClientVpnEndpointsRequest object being passed to this operation.
     - Returns: A future to the DescribeClientVpnEndpointsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeClientVpnEndpoints(
            input: ElasticComputeCloudModel.DescribeClientVpnEndpointsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeClientVpnEndpointsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeClientVpnEndpointsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeClientVpnEndpoints.rawValue,
                                 reporting: self.invocationsReporting.describeClientVpnEndpoints,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeClientVpnRoutes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeClientVpnRoutesRequest object being passed to this operation.
     - Returns: A future to the DescribeClientVpnRoutesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeClientVpnRoutes(
            input: ElasticComputeCloudModel.DescribeClientVpnRoutesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeClientVpnRoutesResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeClientVpnRoutesOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeClientVpnRoutes.rawValue,
                                 reporting: self.invocationsReporting.describeClientVpnRoutes,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeClientVpnTargetNetworks operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeClientVpnTargetNetworksRequest object being passed to this operation.
     - Returns: A future to the DescribeClientVpnTargetNetworksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeClientVpnTargetNetworks(
            input: ElasticComputeCloudModel.DescribeClientVpnTargetNetworksRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeClientVpnTargetNetworksResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeClientVpnTargetNetworksOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeClientVpnTargetNetworks.rawValue,
                                 reporting: self.invocationsReporting.describeClientVpnTargetNetworks,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeCoipPools operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeCoipPoolsRequest object being passed to this operation.
     - Returns: A future to the DescribeCoipPoolsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeCoipPools(
            input: ElasticComputeCloudModel.DescribeCoipPoolsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeCoipPoolsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeCoipPoolsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeCoipPools.rawValue,
                                 reporting: self.invocationsReporting.describeCoipPools,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeConversionTasks operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeConversionTasksRequest object being passed to this operation.
     - Returns: A future to the DescribeConversionTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeConversionTasks(
            input: ElasticComputeCloudModel.DescribeConversionTasksRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeConversionTasksResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeConversionTasksOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeConversionTasks.rawValue,
                                 reporting: self.invocationsReporting.describeConversionTasks,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeCustomerGateways operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeCustomerGatewaysRequest object being passed to this operation.
     - Returns: A future to the DescribeCustomerGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeCustomerGateways(
            input: ElasticComputeCloudModel.DescribeCustomerGatewaysRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeCustomerGatewaysResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeCustomerGatewaysOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeCustomerGateways.rawValue,
                                 reporting: self.invocationsReporting.describeCustomerGateways,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeDhcpOptions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeDhcpOptionsRequest object being passed to this operation.
     - Returns: A future to the DescribeDhcpOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeDhcpOptions(
            input: ElasticComputeCloudModel.DescribeDhcpOptionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeDhcpOptionsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeDhcpOptionsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeDhcpOptions.rawValue,
                                 reporting: self.invocationsReporting.describeDhcpOptions,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeEgressOnlyInternetGateways operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeEgressOnlyInternetGatewaysRequest object being passed to this operation.
     - Returns: A future to the DescribeEgressOnlyInternetGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeEgressOnlyInternetGateways(
            input: ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeEgressOnlyInternetGatewaysOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeEgressOnlyInternetGateways.rawValue,
                                 reporting: self.invocationsReporting.describeEgressOnlyInternetGateways,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeElasticGpus operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeElasticGpusRequest object being passed to this operation.
     - Returns: A future to the DescribeElasticGpusResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeElasticGpus(
            input: ElasticComputeCloudModel.DescribeElasticGpusRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeElasticGpusResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeElasticGpusOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeElasticGpus.rawValue,
                                 reporting: self.invocationsReporting.describeElasticGpus,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeExportImageTasks operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeExportImageTasksRequest object being passed to this operation.
     - Returns: A future to the DescribeExportImageTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeExportImageTasks(
            input: ElasticComputeCloudModel.DescribeExportImageTasksRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeExportImageTasksResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeExportImageTasksOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeExportImageTasks.rawValue,
                                 reporting: self.invocationsReporting.describeExportImageTasks,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeExportTasks operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeExportTasksRequest object being passed to this operation.
     - Returns: A future to the DescribeExportTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeExportTasks(
            input: ElasticComputeCloudModel.DescribeExportTasksRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeExportTasksResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeExportTasksOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeExportTasks.rawValue,
                                 reporting: self.invocationsReporting.describeExportTasks,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeFastSnapshotRestores operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeFastSnapshotRestoresRequest object being passed to this operation.
     - Returns: A future to the DescribeFastSnapshotRestoresResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeFastSnapshotRestores(
            input: ElasticComputeCloudModel.DescribeFastSnapshotRestoresRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeFastSnapshotRestoresResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeFastSnapshotRestoresOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeFastSnapshotRestores.rawValue,
                                 reporting: self.invocationsReporting.describeFastSnapshotRestores,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeFleetHistory operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeFleetHistoryRequest object being passed to this operation.
     - Returns: A future to the DescribeFleetHistoryResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeFleetHistory(
            input: ElasticComputeCloudModel.DescribeFleetHistoryRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeFleetHistoryResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeFleetHistoryOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeFleetHistory.rawValue,
                                 reporting: self.invocationsReporting.describeFleetHistory,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeFleetInstances operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeFleetInstancesRequest object being passed to this operation.
     - Returns: A future to the DescribeFleetInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeFleetInstances(
            input: ElasticComputeCloudModel.DescribeFleetInstancesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeFleetInstancesResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeFleetInstancesOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeFleetInstances.rawValue,
                                 reporting: self.invocationsReporting.describeFleetInstances,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeFleets operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeFleetsRequest object being passed to this operation.
     - Returns: A future to the DescribeFleetsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeFleets(
            input: ElasticComputeCloudModel.DescribeFleetsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeFleetsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeFleetsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeFleets.rawValue,
                                 reporting: self.invocationsReporting.describeFleets,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeFlowLogs operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeFlowLogsRequest object being passed to this operation.
     - Returns: A future to the DescribeFlowLogsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeFlowLogs(
            input: ElasticComputeCloudModel.DescribeFlowLogsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeFlowLogsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeFlowLogsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeFlowLogs.rawValue,
                                 reporting: self.invocationsReporting.describeFlowLogs,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeFpgaImageAttribute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeFpgaImageAttributeRequest object being passed to this operation.
     - Returns: A future to the DescribeFpgaImageAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeFpgaImageAttribute(
            input: ElasticComputeCloudModel.DescribeFpgaImageAttributeRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeFpgaImageAttributeResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeFpgaImageAttributeOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeFpgaImageAttribute.rawValue,
                                 reporting: self.invocationsReporting.describeFpgaImageAttribute,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeFpgaImages operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeFpgaImagesRequest object being passed to this operation.
     - Returns: A future to the DescribeFpgaImagesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeFpgaImages(
            input: ElasticComputeCloudModel.DescribeFpgaImagesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeFpgaImagesResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeFpgaImagesOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeFpgaImages.rawValue,
                                 reporting: self.invocationsReporting.describeFpgaImages,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeHostReservationOfferings operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeHostReservationOfferingsRequest object being passed to this operation.
     - Returns: A future to the DescribeHostReservationOfferingsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeHostReservationOfferings(
            input: ElasticComputeCloudModel.DescribeHostReservationOfferingsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeHostReservationOfferingsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeHostReservationOfferingsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeHostReservationOfferings.rawValue,
                                 reporting: self.invocationsReporting.describeHostReservationOfferings,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeHostReservations operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeHostReservationsRequest object being passed to this operation.
     - Returns: A future to the DescribeHostReservationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeHostReservations(
            input: ElasticComputeCloudModel.DescribeHostReservationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeHostReservationsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeHostReservationsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeHostReservations.rawValue,
                                 reporting: self.invocationsReporting.describeHostReservations,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeHosts operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeHostsRequest object being passed to this operation.
     - Returns: A future to the DescribeHostsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeHosts(
            input: ElasticComputeCloudModel.DescribeHostsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeHostsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeHostsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeHosts.rawValue,
                                 reporting: self.invocationsReporting.describeHosts,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeIamInstanceProfileAssociations operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeIamInstanceProfileAssociationsRequest object being passed to this operation.
     - Returns: A future to the DescribeIamInstanceProfileAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeIamInstanceProfileAssociations(
            input: ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeIamInstanceProfileAssociationsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeIamInstanceProfileAssociations.rawValue,
                                 reporting: self.invocationsReporting.describeIamInstanceProfileAssociations,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeIdFormat operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeIdFormatRequest object being passed to this operation.
     - Returns: A future to the DescribeIdFormatResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeIdFormat(
            input: ElasticComputeCloudModel.DescribeIdFormatRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeIdFormatResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeIdFormatOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeIdFormat.rawValue,
                                 reporting: self.invocationsReporting.describeIdFormat,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeIdentityIdFormat operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeIdentityIdFormatRequest object being passed to this operation.
     - Returns: A future to the DescribeIdentityIdFormatResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeIdentityIdFormat(
            input: ElasticComputeCloudModel.DescribeIdentityIdFormatRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeIdentityIdFormatResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeIdentityIdFormatOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeIdentityIdFormat.rawValue,
                                 reporting: self.invocationsReporting.describeIdentityIdFormat,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeImageAttribute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeImageAttributeRequest object being passed to this operation.
     - Returns: A future to the ImageAttribute object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeImageAttribute(
            input: ElasticComputeCloudModel.DescribeImageAttributeRequest) -> EventLoopFuture<ElasticComputeCloudModel.ImageAttribute> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeImageAttributeOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeImageAttribute.rawValue,
                                 reporting: self.invocationsReporting.describeImageAttribute,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeImages operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeImagesRequest object being passed to this operation.
     - Returns: A future to the DescribeImagesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeImages(
            input: ElasticComputeCloudModel.DescribeImagesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeImagesResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeImagesOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeImages.rawValue,
                                 reporting: self.invocationsReporting.describeImages,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeImportImageTasks operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeImportImageTasksRequest object being passed to this operation.
     - Returns: A future to the DescribeImportImageTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeImportImageTasks(
            input: ElasticComputeCloudModel.DescribeImportImageTasksRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeImportImageTasksResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeImportImageTasksOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeImportImageTasks.rawValue,
                                 reporting: self.invocationsReporting.describeImportImageTasks,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeImportSnapshotTasks operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeImportSnapshotTasksRequest object being passed to this operation.
     - Returns: A future to the DescribeImportSnapshotTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeImportSnapshotTasks(
            input: ElasticComputeCloudModel.DescribeImportSnapshotTasksRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeImportSnapshotTasksResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeImportSnapshotTasksOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeImportSnapshotTasks.rawValue,
                                 reporting: self.invocationsReporting.describeImportSnapshotTasks,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeInstanceAttribute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeInstanceAttributeRequest object being passed to this operation.
     - Returns: A future to the InstanceAttribute object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeInstanceAttribute(
            input: ElasticComputeCloudModel.DescribeInstanceAttributeRequest) -> EventLoopFuture<ElasticComputeCloudModel.InstanceAttribute> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeInstanceAttributeOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeInstanceAttribute.rawValue,
                                 reporting: self.invocationsReporting.describeInstanceAttribute,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeInstanceCreditSpecifications operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeInstanceCreditSpecificationsRequest object being passed to this operation.
     - Returns: A future to the DescribeInstanceCreditSpecificationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeInstanceCreditSpecifications(
            input: ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeInstanceCreditSpecificationsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeInstanceCreditSpecifications.rawValue,
                                 reporting: self.invocationsReporting.describeInstanceCreditSpecifications,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeInstanceEventNotificationAttributes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeInstanceEventNotificationAttributesRequest object being passed to this operation.
     - Returns: A future to the DescribeInstanceEventNotificationAttributesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeInstanceEventNotificationAttributes(
            input: ElasticComputeCloudModel.DescribeInstanceEventNotificationAttributesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeInstanceEventNotificationAttributesResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeInstanceEventNotificationAttributesOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeInstanceEventNotificationAttributes.rawValue,
                                 reporting: self.invocationsReporting.describeInstanceEventNotificationAttributes,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeInstanceStatus operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeInstanceStatusRequest object being passed to this operation.
     - Returns: A future to the DescribeInstanceStatusResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeInstanceStatus(
            input: ElasticComputeCloudModel.DescribeInstanceStatusRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeInstanceStatusResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeInstanceStatusOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeInstanceStatus.rawValue,
                                 reporting: self.invocationsReporting.describeInstanceStatus,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeInstanceTypeOfferings operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeInstanceTypeOfferingsRequest object being passed to this operation.
     - Returns: A future to the DescribeInstanceTypeOfferingsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeInstanceTypeOfferings(
            input: ElasticComputeCloudModel.DescribeInstanceTypeOfferingsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeInstanceTypeOfferingsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeInstanceTypeOfferingsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeInstanceTypeOfferings.rawValue,
                                 reporting: self.invocationsReporting.describeInstanceTypeOfferings,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeInstanceTypes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeInstanceTypesRequest object being passed to this operation.
     - Returns: A future to the DescribeInstanceTypesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeInstanceTypes(
            input: ElasticComputeCloudModel.DescribeInstanceTypesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeInstanceTypesResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeInstanceTypesOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeInstanceTypes.rawValue,
                                 reporting: self.invocationsReporting.describeInstanceTypes,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeInstances operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeInstancesRequest object being passed to this operation.
     - Returns: A future to the DescribeInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeInstances(
            input: ElasticComputeCloudModel.DescribeInstancesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeInstancesResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeInstancesOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeInstances.rawValue,
                                 reporting: self.invocationsReporting.describeInstances,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeInternetGateways operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeInternetGatewaysRequest object being passed to this operation.
     - Returns: A future to the DescribeInternetGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeInternetGateways(
            input: ElasticComputeCloudModel.DescribeInternetGatewaysRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeInternetGatewaysResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeInternetGatewaysOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeInternetGateways.rawValue,
                                 reporting: self.invocationsReporting.describeInternetGateways,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeIpv6Pools operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeIpv6PoolsRequest object being passed to this operation.
     - Returns: A future to the DescribeIpv6PoolsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeIpv6Pools(
            input: ElasticComputeCloudModel.DescribeIpv6PoolsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeIpv6PoolsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeIpv6PoolsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeIpv6Pools.rawValue,
                                 reporting: self.invocationsReporting.describeIpv6Pools,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeKeyPairs operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeKeyPairsRequest object being passed to this operation.
     - Returns: A future to the DescribeKeyPairsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeKeyPairs(
            input: ElasticComputeCloudModel.DescribeKeyPairsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeKeyPairsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeKeyPairsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeKeyPairs.rawValue,
                                 reporting: self.invocationsReporting.describeKeyPairs,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeLaunchTemplateVersions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeLaunchTemplateVersionsRequest object being passed to this operation.
     - Returns: A future to the DescribeLaunchTemplateVersionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeLaunchTemplateVersions(
            input: ElasticComputeCloudModel.DescribeLaunchTemplateVersionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeLaunchTemplateVersionsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeLaunchTemplateVersionsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeLaunchTemplateVersions.rawValue,
                                 reporting: self.invocationsReporting.describeLaunchTemplateVersions,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeLaunchTemplates operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeLaunchTemplatesRequest object being passed to this operation.
     - Returns: A future to the DescribeLaunchTemplatesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeLaunchTemplates(
            input: ElasticComputeCloudModel.DescribeLaunchTemplatesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeLaunchTemplatesResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeLaunchTemplatesOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeLaunchTemplates.rawValue,
                                 reporting: self.invocationsReporting.describeLaunchTemplates,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequest object being passed to this operation.
     - Returns: A future to the DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeLocalGatewayRouteTableVirtualInterfaceGroupAssociations(
            input: ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeLocalGatewayRouteTableVirtualInterfaceGroupAssociations.rawValue,
                                 reporting: self.invocationsReporting.describeLocalGatewayRouteTableVirtualInterfaceGroupAssociations,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeLocalGatewayRouteTableVpcAssociations operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeLocalGatewayRouteTableVpcAssociationsRequest object being passed to this operation.
     - Returns: A future to the DescribeLocalGatewayRouteTableVpcAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeLocalGatewayRouteTableVpcAssociations(
            input: ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVpcAssociationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVpcAssociationsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeLocalGatewayRouteTableVpcAssociationsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeLocalGatewayRouteTableVpcAssociations.rawValue,
                                 reporting: self.invocationsReporting.describeLocalGatewayRouteTableVpcAssociations,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeLocalGatewayRouteTables operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeLocalGatewayRouteTablesRequest object being passed to this operation.
     - Returns: A future to the DescribeLocalGatewayRouteTablesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeLocalGatewayRouteTables(
            input: ElasticComputeCloudModel.DescribeLocalGatewayRouteTablesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeLocalGatewayRouteTablesResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeLocalGatewayRouteTablesOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeLocalGatewayRouteTables.rawValue,
                                 reporting: self.invocationsReporting.describeLocalGatewayRouteTables,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeLocalGatewayVirtualInterfaceGroups operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeLocalGatewayVirtualInterfaceGroupsRequest object being passed to this operation.
     - Returns: A future to the DescribeLocalGatewayVirtualInterfaceGroupsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeLocalGatewayVirtualInterfaceGroups(
            input: ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfaceGroupsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfaceGroupsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeLocalGatewayVirtualInterfaceGroupsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeLocalGatewayVirtualInterfaceGroups.rawValue,
                                 reporting: self.invocationsReporting.describeLocalGatewayVirtualInterfaceGroups,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeLocalGatewayVirtualInterfaces operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeLocalGatewayVirtualInterfacesRequest object being passed to this operation.
     - Returns: A future to the DescribeLocalGatewayVirtualInterfacesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeLocalGatewayVirtualInterfaces(
            input: ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfacesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfacesResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeLocalGatewayVirtualInterfacesOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeLocalGatewayVirtualInterfaces.rawValue,
                                 reporting: self.invocationsReporting.describeLocalGatewayVirtualInterfaces,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeLocalGateways operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeLocalGatewaysRequest object being passed to this operation.
     - Returns: A future to the DescribeLocalGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeLocalGateways(
            input: ElasticComputeCloudModel.DescribeLocalGatewaysRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeLocalGatewaysResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeLocalGatewaysOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeLocalGateways.rawValue,
                                 reporting: self.invocationsReporting.describeLocalGateways,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeManagedPrefixLists operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeManagedPrefixListsRequest object being passed to this operation.
     - Returns: A future to the DescribeManagedPrefixListsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeManagedPrefixLists(
            input: ElasticComputeCloudModel.DescribeManagedPrefixListsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeManagedPrefixListsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeManagedPrefixListsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeManagedPrefixLists.rawValue,
                                 reporting: self.invocationsReporting.describeManagedPrefixLists,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeMovingAddresses operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeMovingAddressesRequest object being passed to this operation.
     - Returns: A future to the DescribeMovingAddressesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeMovingAddresses(
            input: ElasticComputeCloudModel.DescribeMovingAddressesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeMovingAddressesResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeMovingAddressesOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeMovingAddresses.rawValue,
                                 reporting: self.invocationsReporting.describeMovingAddresses,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeNatGateways operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeNatGatewaysRequest object being passed to this operation.
     - Returns: A future to the DescribeNatGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeNatGateways(
            input: ElasticComputeCloudModel.DescribeNatGatewaysRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeNatGatewaysResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeNatGatewaysOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeNatGateways.rawValue,
                                 reporting: self.invocationsReporting.describeNatGateways,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeNetworkAcls operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeNetworkAclsRequest object being passed to this operation.
     - Returns: A future to the DescribeNetworkAclsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeNetworkAcls(
            input: ElasticComputeCloudModel.DescribeNetworkAclsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeNetworkAclsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeNetworkAclsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeNetworkAcls.rawValue,
                                 reporting: self.invocationsReporting.describeNetworkAcls,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeNetworkInsightsAnalyses operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeNetworkInsightsAnalysesRequest object being passed to this operation.
     - Returns: A future to the DescribeNetworkInsightsAnalysesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeNetworkInsightsAnalyses(
            input: ElasticComputeCloudModel.DescribeNetworkInsightsAnalysesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeNetworkInsightsAnalysesResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeNetworkInsightsAnalysesOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeNetworkInsightsAnalyses.rawValue,
                                 reporting: self.invocationsReporting.describeNetworkInsightsAnalyses,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeNetworkInsightsPaths operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeNetworkInsightsPathsRequest object being passed to this operation.
     - Returns: A future to the DescribeNetworkInsightsPathsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeNetworkInsightsPaths(
            input: ElasticComputeCloudModel.DescribeNetworkInsightsPathsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeNetworkInsightsPathsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeNetworkInsightsPathsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeNetworkInsightsPaths.rawValue,
                                 reporting: self.invocationsReporting.describeNetworkInsightsPaths,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeNetworkInterfaceAttribute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeNetworkInterfaceAttributeRequest object being passed to this operation.
     - Returns: A future to the DescribeNetworkInterfaceAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeNetworkInterfaceAttribute(
            input: ElasticComputeCloudModel.DescribeNetworkInterfaceAttributeRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeNetworkInterfaceAttributeResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeNetworkInterfaceAttributeOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeNetworkInterfaceAttribute.rawValue,
                                 reporting: self.invocationsReporting.describeNetworkInterfaceAttribute,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeNetworkInterfacePermissions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeNetworkInterfacePermissionsRequest object being passed to this operation.
     - Returns: A future to the DescribeNetworkInterfacePermissionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeNetworkInterfacePermissions(
            input: ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeNetworkInterfacePermissionsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeNetworkInterfacePermissions.rawValue,
                                 reporting: self.invocationsReporting.describeNetworkInterfacePermissions,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeNetworkInterfaces operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeNetworkInterfacesRequest object being passed to this operation.
     - Returns: A future to the DescribeNetworkInterfacesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeNetworkInterfaces(
            input: ElasticComputeCloudModel.DescribeNetworkInterfacesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeNetworkInterfacesResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeNetworkInterfacesOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeNetworkInterfaces.rawValue,
                                 reporting: self.invocationsReporting.describeNetworkInterfaces,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribePlacementGroups operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribePlacementGroupsRequest object being passed to this operation.
     - Returns: A future to the DescribePlacementGroupsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describePlacementGroups(
            input: ElasticComputeCloudModel.DescribePlacementGroupsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribePlacementGroupsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribePlacementGroupsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describePlacementGroups.rawValue,
                                 reporting: self.invocationsReporting.describePlacementGroups,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribePrefixLists operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribePrefixListsRequest object being passed to this operation.
     - Returns: A future to the DescribePrefixListsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describePrefixLists(
            input: ElasticComputeCloudModel.DescribePrefixListsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribePrefixListsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribePrefixListsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describePrefixLists.rawValue,
                                 reporting: self.invocationsReporting.describePrefixLists,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribePrincipalIdFormat operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribePrincipalIdFormatRequest object being passed to this operation.
     - Returns: A future to the DescribePrincipalIdFormatResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describePrincipalIdFormat(
            input: ElasticComputeCloudModel.DescribePrincipalIdFormatRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribePrincipalIdFormatResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribePrincipalIdFormatOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describePrincipalIdFormat.rawValue,
                                 reporting: self.invocationsReporting.describePrincipalIdFormat,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribePublicIpv4Pools operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribePublicIpv4PoolsRequest object being passed to this operation.
     - Returns: A future to the DescribePublicIpv4PoolsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describePublicIpv4Pools(
            input: ElasticComputeCloudModel.DescribePublicIpv4PoolsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribePublicIpv4PoolsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribePublicIpv4PoolsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describePublicIpv4Pools.rawValue,
                                 reporting: self.invocationsReporting.describePublicIpv4Pools,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeRegions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeRegionsRequest object being passed to this operation.
     - Returns: A future to the DescribeRegionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeRegions(
            input: ElasticComputeCloudModel.DescribeRegionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeRegionsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeRegionsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeRegions.rawValue,
                                 reporting: self.invocationsReporting.describeRegions,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeReservedInstances operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeReservedInstancesRequest object being passed to this operation.
     - Returns: A future to the DescribeReservedInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeReservedInstances(
            input: ElasticComputeCloudModel.DescribeReservedInstancesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeReservedInstancesResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeReservedInstancesOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeReservedInstances.rawValue,
                                 reporting: self.invocationsReporting.describeReservedInstances,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeReservedInstancesListings operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeReservedInstancesListingsRequest object being passed to this operation.
     - Returns: A future to the DescribeReservedInstancesListingsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeReservedInstancesListings(
            input: ElasticComputeCloudModel.DescribeReservedInstancesListingsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeReservedInstancesListingsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeReservedInstancesListingsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeReservedInstancesListings.rawValue,
                                 reporting: self.invocationsReporting.describeReservedInstancesListings,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeReservedInstancesModifications operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeReservedInstancesModificationsRequest object being passed to this operation.
     - Returns: A future to the DescribeReservedInstancesModificationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeReservedInstancesModifications(
            input: ElasticComputeCloudModel.DescribeReservedInstancesModificationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeReservedInstancesModificationsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeReservedInstancesModificationsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeReservedInstancesModifications.rawValue,
                                 reporting: self.invocationsReporting.describeReservedInstancesModifications,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeReservedInstancesOfferings operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeReservedInstancesOfferingsRequest object being passed to this operation.
     - Returns: A future to the DescribeReservedInstancesOfferingsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeReservedInstancesOfferings(
            input: ElasticComputeCloudModel.DescribeReservedInstancesOfferingsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeReservedInstancesOfferingsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeReservedInstancesOfferingsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeReservedInstancesOfferings.rawValue,
                                 reporting: self.invocationsReporting.describeReservedInstancesOfferings,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeRouteTables operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeRouteTablesRequest object being passed to this operation.
     - Returns: A future to the DescribeRouteTablesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeRouteTables(
            input: ElasticComputeCloudModel.DescribeRouteTablesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeRouteTablesResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeRouteTablesOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeRouteTables.rawValue,
                                 reporting: self.invocationsReporting.describeRouteTables,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeScheduledInstanceAvailability operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeScheduledInstanceAvailabilityRequest object being passed to this operation.
     - Returns: A future to the DescribeScheduledInstanceAvailabilityResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeScheduledInstanceAvailability(
            input: ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeScheduledInstanceAvailabilityOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeScheduledInstanceAvailability.rawValue,
                                 reporting: self.invocationsReporting.describeScheduledInstanceAvailability,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeScheduledInstances operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeScheduledInstancesRequest object being passed to this operation.
     - Returns: A future to the DescribeScheduledInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeScheduledInstances(
            input: ElasticComputeCloudModel.DescribeScheduledInstancesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeScheduledInstancesResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeScheduledInstancesOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeScheduledInstances.rawValue,
                                 reporting: self.invocationsReporting.describeScheduledInstances,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeSecurityGroupReferences operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeSecurityGroupReferencesRequest object being passed to this operation.
     - Returns: A future to the DescribeSecurityGroupReferencesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeSecurityGroupReferences(
            input: ElasticComputeCloudModel.DescribeSecurityGroupReferencesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeSecurityGroupReferencesResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeSecurityGroupReferencesOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeSecurityGroupReferences.rawValue,
                                 reporting: self.invocationsReporting.describeSecurityGroupReferences,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeSecurityGroups operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeSecurityGroupsRequest object being passed to this operation.
     - Returns: A future to the DescribeSecurityGroupsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeSecurityGroups(
            input: ElasticComputeCloudModel.DescribeSecurityGroupsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeSecurityGroupsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeSecurityGroupsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeSecurityGroups.rawValue,
                                 reporting: self.invocationsReporting.describeSecurityGroups,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeSnapshotAttribute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeSnapshotAttributeRequest object being passed to this operation.
     - Returns: A future to the DescribeSnapshotAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeSnapshotAttribute(
            input: ElasticComputeCloudModel.DescribeSnapshotAttributeRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeSnapshotAttributeResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeSnapshotAttributeOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeSnapshotAttribute.rawValue,
                                 reporting: self.invocationsReporting.describeSnapshotAttribute,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeSnapshots operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeSnapshotsRequest object being passed to this operation.
     - Returns: A future to the DescribeSnapshotsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeSnapshots(
            input: ElasticComputeCloudModel.DescribeSnapshotsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeSnapshotsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeSnapshotsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeSnapshots.rawValue,
                                 reporting: self.invocationsReporting.describeSnapshots,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeSpotDatafeedSubscription operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeSpotDatafeedSubscriptionRequest object being passed to this operation.
     - Returns: A future to the DescribeSpotDatafeedSubscriptionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeSpotDatafeedSubscription(
            input: ElasticComputeCloudModel.DescribeSpotDatafeedSubscriptionRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeSpotDatafeedSubscriptionResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeSpotDatafeedSubscriptionOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeSpotDatafeedSubscription.rawValue,
                                 reporting: self.invocationsReporting.describeSpotDatafeedSubscription,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeSpotFleetInstances operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeSpotFleetInstancesRequest object being passed to this operation.
     - Returns: A future to the DescribeSpotFleetInstancesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeSpotFleetInstances(
            input: ElasticComputeCloudModel.DescribeSpotFleetInstancesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeSpotFleetInstancesResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeSpotFleetInstancesOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeSpotFleetInstances.rawValue,
                                 reporting: self.invocationsReporting.describeSpotFleetInstances,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeSpotFleetRequestHistory operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeSpotFleetRequestHistoryRequest object being passed to this operation.
     - Returns: A future to the DescribeSpotFleetRequestHistoryResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeSpotFleetRequestHistory(
            input: ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeSpotFleetRequestHistoryOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeSpotFleetRequestHistory.rawValue,
                                 reporting: self.invocationsReporting.describeSpotFleetRequestHistory,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeSpotFleetRequests operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeSpotFleetRequestsRequest object being passed to this operation.
     - Returns: A future to the DescribeSpotFleetRequestsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeSpotFleetRequests(
            input: ElasticComputeCloudModel.DescribeSpotFleetRequestsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeSpotFleetRequestsResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeSpotFleetRequestsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeSpotFleetRequests.rawValue,
                                 reporting: self.invocationsReporting.describeSpotFleetRequests,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeSpotInstanceRequests operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeSpotInstanceRequestsRequest object being passed to this operation.
     - Returns: A future to the DescribeSpotInstanceRequestsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeSpotInstanceRequests(
            input: ElasticComputeCloudModel.DescribeSpotInstanceRequestsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeSpotInstanceRequestsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeSpotInstanceRequestsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeSpotInstanceRequests.rawValue,
                                 reporting: self.invocationsReporting.describeSpotInstanceRequests,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeSpotPriceHistory operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeSpotPriceHistoryRequest object being passed to this operation.
     - Returns: A future to the DescribeSpotPriceHistoryResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeSpotPriceHistory(
            input: ElasticComputeCloudModel.DescribeSpotPriceHistoryRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeSpotPriceHistoryResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeSpotPriceHistoryOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeSpotPriceHistory.rawValue,
                                 reporting: self.invocationsReporting.describeSpotPriceHistory,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeStaleSecurityGroups operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeStaleSecurityGroupsRequest object being passed to this operation.
     - Returns: A future to the DescribeStaleSecurityGroupsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeStaleSecurityGroups(
            input: ElasticComputeCloudModel.DescribeStaleSecurityGroupsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeStaleSecurityGroupsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeStaleSecurityGroupsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeStaleSecurityGroups.rawValue,
                                 reporting: self.invocationsReporting.describeStaleSecurityGroups,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeSubnets operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeSubnetsRequest object being passed to this operation.
     - Returns: A future to the DescribeSubnetsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeSubnets(
            input: ElasticComputeCloudModel.DescribeSubnetsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeSubnetsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeSubnetsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeSubnets.rawValue,
                                 reporting: self.invocationsReporting.describeSubnets,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeTags operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeTagsRequest object being passed to this operation.
     - Returns: A future to the DescribeTagsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeTags(
            input: ElasticComputeCloudModel.DescribeTagsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeTagsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeTagsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeTags.rawValue,
                                 reporting: self.invocationsReporting.describeTags,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeTrafficMirrorFilters operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeTrafficMirrorFiltersRequest object being passed to this operation.
     - Returns: A future to the DescribeTrafficMirrorFiltersResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeTrafficMirrorFilters(
            input: ElasticComputeCloudModel.DescribeTrafficMirrorFiltersRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeTrafficMirrorFiltersResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeTrafficMirrorFiltersOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeTrafficMirrorFilters.rawValue,
                                 reporting: self.invocationsReporting.describeTrafficMirrorFilters,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeTrafficMirrorSessions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeTrafficMirrorSessionsRequest object being passed to this operation.
     - Returns: A future to the DescribeTrafficMirrorSessionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeTrafficMirrorSessions(
            input: ElasticComputeCloudModel.DescribeTrafficMirrorSessionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeTrafficMirrorSessionsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeTrafficMirrorSessionsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeTrafficMirrorSessions.rawValue,
                                 reporting: self.invocationsReporting.describeTrafficMirrorSessions,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeTrafficMirrorTargets operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeTrafficMirrorTargetsRequest object being passed to this operation.
     - Returns: A future to the DescribeTrafficMirrorTargetsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeTrafficMirrorTargets(
            input: ElasticComputeCloudModel.DescribeTrafficMirrorTargetsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeTrafficMirrorTargetsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeTrafficMirrorTargetsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeTrafficMirrorTargets.rawValue,
                                 reporting: self.invocationsReporting.describeTrafficMirrorTargets,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeTransitGatewayAttachments operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeTransitGatewayAttachmentsRequest object being passed to this operation.
     - Returns: A future to the DescribeTransitGatewayAttachmentsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeTransitGatewayAttachments(
            input: ElasticComputeCloudModel.DescribeTransitGatewayAttachmentsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeTransitGatewayAttachmentsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeTransitGatewayAttachmentsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeTransitGatewayAttachments.rawValue,
                                 reporting: self.invocationsReporting.describeTransitGatewayAttachments,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeTransitGatewayConnectPeers operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeTransitGatewayConnectPeersRequest object being passed to this operation.
     - Returns: A future to the DescribeTransitGatewayConnectPeersResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeTransitGatewayConnectPeers(
            input: ElasticComputeCloudModel.DescribeTransitGatewayConnectPeersRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeTransitGatewayConnectPeersResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeTransitGatewayConnectPeersOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeTransitGatewayConnectPeers.rawValue,
                                 reporting: self.invocationsReporting.describeTransitGatewayConnectPeers,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeTransitGatewayConnects operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeTransitGatewayConnectsRequest object being passed to this operation.
     - Returns: A future to the DescribeTransitGatewayConnectsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeTransitGatewayConnects(
            input: ElasticComputeCloudModel.DescribeTransitGatewayConnectsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeTransitGatewayConnectsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeTransitGatewayConnectsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeTransitGatewayConnects.rawValue,
                                 reporting: self.invocationsReporting.describeTransitGatewayConnects,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeTransitGatewayMulticastDomains operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeTransitGatewayMulticastDomainsRequest object being passed to this operation.
     - Returns: A future to the DescribeTransitGatewayMulticastDomainsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeTransitGatewayMulticastDomains(
            input: ElasticComputeCloudModel.DescribeTransitGatewayMulticastDomainsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeTransitGatewayMulticastDomainsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeTransitGatewayMulticastDomainsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeTransitGatewayMulticastDomains.rawValue,
                                 reporting: self.invocationsReporting.describeTransitGatewayMulticastDomains,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeTransitGatewayPeeringAttachments operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeTransitGatewayPeeringAttachmentsRequest object being passed to this operation.
     - Returns: A future to the DescribeTransitGatewayPeeringAttachmentsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeTransitGatewayPeeringAttachments(
            input: ElasticComputeCloudModel.DescribeTransitGatewayPeeringAttachmentsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeTransitGatewayPeeringAttachmentsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeTransitGatewayPeeringAttachmentsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeTransitGatewayPeeringAttachments.rawValue,
                                 reporting: self.invocationsReporting.describeTransitGatewayPeeringAttachments,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeTransitGatewayRouteTables operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeTransitGatewayRouteTablesRequest object being passed to this operation.
     - Returns: A future to the DescribeTransitGatewayRouteTablesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeTransitGatewayRouteTables(
            input: ElasticComputeCloudModel.DescribeTransitGatewayRouteTablesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeTransitGatewayRouteTablesResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeTransitGatewayRouteTablesOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeTransitGatewayRouteTables.rawValue,
                                 reporting: self.invocationsReporting.describeTransitGatewayRouteTables,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeTransitGatewayVpcAttachments operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeTransitGatewayVpcAttachmentsRequest object being passed to this operation.
     - Returns: A future to the DescribeTransitGatewayVpcAttachmentsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeTransitGatewayVpcAttachments(
            input: ElasticComputeCloudModel.DescribeTransitGatewayVpcAttachmentsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeTransitGatewayVpcAttachmentsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeTransitGatewayVpcAttachmentsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeTransitGatewayVpcAttachments.rawValue,
                                 reporting: self.invocationsReporting.describeTransitGatewayVpcAttachments,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeTransitGateways operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeTransitGatewaysRequest object being passed to this operation.
     - Returns: A future to the DescribeTransitGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeTransitGateways(
            input: ElasticComputeCloudModel.DescribeTransitGatewaysRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeTransitGatewaysResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeTransitGatewaysOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeTransitGateways.rawValue,
                                 reporting: self.invocationsReporting.describeTransitGateways,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeVolumeAttribute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeVolumeAttributeRequest object being passed to this operation.
     - Returns: A future to the DescribeVolumeAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVolumeAttribute(
            input: ElasticComputeCloudModel.DescribeVolumeAttributeRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeVolumeAttributeResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeVolumeAttributeOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeVolumeAttribute.rawValue,
                                 reporting: self.invocationsReporting.describeVolumeAttribute,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeVolumeStatus operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeVolumeStatusRequest object being passed to this operation.
     - Returns: A future to the DescribeVolumeStatusResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVolumeStatus(
            input: ElasticComputeCloudModel.DescribeVolumeStatusRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeVolumeStatusResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeVolumeStatusOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeVolumeStatus.rawValue,
                                 reporting: self.invocationsReporting.describeVolumeStatus,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeVolumes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeVolumesRequest object being passed to this operation.
     - Returns: A future to the DescribeVolumesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVolumes(
            input: ElasticComputeCloudModel.DescribeVolumesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeVolumesResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeVolumesOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeVolumes.rawValue,
                                 reporting: self.invocationsReporting.describeVolumes,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeVolumesModifications operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeVolumesModificationsRequest object being passed to this operation.
     - Returns: A future to the DescribeVolumesModificationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVolumesModifications(
            input: ElasticComputeCloudModel.DescribeVolumesModificationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeVolumesModificationsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeVolumesModificationsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeVolumesModifications.rawValue,
                                 reporting: self.invocationsReporting.describeVolumesModifications,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeVpcAttribute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeVpcAttributeRequest object being passed to this operation.
     - Returns: A future to the DescribeVpcAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVpcAttribute(
            input: ElasticComputeCloudModel.DescribeVpcAttributeRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeVpcAttributeResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeVpcAttributeOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeVpcAttribute.rawValue,
                                 reporting: self.invocationsReporting.describeVpcAttribute,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeVpcClassicLink operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeVpcClassicLinkRequest object being passed to this operation.
     - Returns: A future to the DescribeVpcClassicLinkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVpcClassicLink(
            input: ElasticComputeCloudModel.DescribeVpcClassicLinkRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeVpcClassicLinkResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeVpcClassicLinkOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeVpcClassicLink.rawValue,
                                 reporting: self.invocationsReporting.describeVpcClassicLink,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeVpcClassicLinkDnsSupport operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeVpcClassicLinkDnsSupportRequest object being passed to this operation.
     - Returns: A future to the DescribeVpcClassicLinkDnsSupportResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVpcClassicLinkDnsSupport(
            input: ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeVpcClassicLinkDnsSupportOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeVpcClassicLinkDnsSupport.rawValue,
                                 reporting: self.invocationsReporting.describeVpcClassicLinkDnsSupport,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeVpcEndpointConnectionNotifications operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeVpcEndpointConnectionNotificationsRequest object being passed to this operation.
     - Returns: A future to the DescribeVpcEndpointConnectionNotificationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVpcEndpointConnectionNotifications(
            input: ElasticComputeCloudModel.DescribeVpcEndpointConnectionNotificationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeVpcEndpointConnectionNotificationsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeVpcEndpointConnectionNotificationsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeVpcEndpointConnectionNotifications.rawValue,
                                 reporting: self.invocationsReporting.describeVpcEndpointConnectionNotifications,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeVpcEndpointConnections operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeVpcEndpointConnectionsRequest object being passed to this operation.
     - Returns: A future to the DescribeVpcEndpointConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVpcEndpointConnections(
            input: ElasticComputeCloudModel.DescribeVpcEndpointConnectionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeVpcEndpointConnectionsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeVpcEndpointConnectionsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeVpcEndpointConnections.rawValue,
                                 reporting: self.invocationsReporting.describeVpcEndpointConnections,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeVpcEndpointServiceConfigurations operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeVpcEndpointServiceConfigurationsRequest object being passed to this operation.
     - Returns: A future to the DescribeVpcEndpointServiceConfigurationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVpcEndpointServiceConfigurations(
            input: ElasticComputeCloudModel.DescribeVpcEndpointServiceConfigurationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeVpcEndpointServiceConfigurationsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeVpcEndpointServiceConfigurationsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeVpcEndpointServiceConfigurations.rawValue,
                                 reporting: self.invocationsReporting.describeVpcEndpointServiceConfigurations,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeVpcEndpointServicePermissions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeVpcEndpointServicePermissionsRequest object being passed to this operation.
     - Returns: A future to the DescribeVpcEndpointServicePermissionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVpcEndpointServicePermissions(
            input: ElasticComputeCloudModel.DescribeVpcEndpointServicePermissionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeVpcEndpointServicePermissionsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeVpcEndpointServicePermissionsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeVpcEndpointServicePermissions.rawValue,
                                 reporting: self.invocationsReporting.describeVpcEndpointServicePermissions,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeVpcEndpointServices operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeVpcEndpointServicesRequest object being passed to this operation.
     - Returns: A future to the DescribeVpcEndpointServicesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVpcEndpointServices(
            input: ElasticComputeCloudModel.DescribeVpcEndpointServicesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeVpcEndpointServicesResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeVpcEndpointServicesOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeVpcEndpointServices.rawValue,
                                 reporting: self.invocationsReporting.describeVpcEndpointServices,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeVpcEndpoints operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeVpcEndpointsRequest object being passed to this operation.
     - Returns: A future to the DescribeVpcEndpointsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVpcEndpoints(
            input: ElasticComputeCloudModel.DescribeVpcEndpointsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeVpcEndpointsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeVpcEndpointsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeVpcEndpoints.rawValue,
                                 reporting: self.invocationsReporting.describeVpcEndpoints,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeVpcPeeringConnections operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeVpcPeeringConnectionsRequest object being passed to this operation.
     - Returns: A future to the DescribeVpcPeeringConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVpcPeeringConnections(
            input: ElasticComputeCloudModel.DescribeVpcPeeringConnectionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeVpcPeeringConnectionsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeVpcPeeringConnectionsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeVpcPeeringConnections.rawValue,
                                 reporting: self.invocationsReporting.describeVpcPeeringConnections,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeVpcs operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeVpcsRequest object being passed to this operation.
     - Returns: A future to the DescribeVpcsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVpcs(
            input: ElasticComputeCloudModel.DescribeVpcsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeVpcsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeVpcsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeVpcs.rawValue,
                                 reporting: self.invocationsReporting.describeVpcs,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeVpnConnections operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeVpnConnectionsRequest object being passed to this operation.
     - Returns: A future to the DescribeVpnConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVpnConnections(
            input: ElasticComputeCloudModel.DescribeVpnConnectionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeVpnConnectionsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeVpnConnectionsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeVpnConnections.rawValue,
                                 reporting: self.invocationsReporting.describeVpnConnections,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DescribeVpnGateways operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeVpnGatewaysRequest object being passed to this operation.
     - Returns: A future to the DescribeVpnGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeVpnGateways(
            input: ElasticComputeCloudModel.DescribeVpnGatewaysRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeVpnGatewaysResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeVpnGatewaysOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.describeVpnGateways.rawValue,
                                 reporting: self.invocationsReporting.describeVpnGateways,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DetachClassicLinkVpc operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DetachClassicLinkVpcRequest object being passed to this operation.
     - Returns: A future to the DetachClassicLinkVpcResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func detachClassicLinkVpc(
            input: ElasticComputeCloudModel.DetachClassicLinkVpcRequest) -> EventLoopFuture<ElasticComputeCloudModel.DetachClassicLinkVpcResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DetachClassicLinkVpcOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.detachClassicLinkVpc.rawValue,
                                 reporting: self.invocationsReporting.detachClassicLinkVpc,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DetachInternetGateway operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DetachInternetGatewayRequest object being passed to this operation.
     */
    public func detachInternetGateway(
            input: ElasticComputeCloudModel.DetachInternetGatewayRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: DetachInternetGatewayOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.detachInternetGateway.rawValue,
                                    reporting: self.invocationsReporting.detachInternetGateway,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DetachNetworkInterface operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DetachNetworkInterfaceRequest object being passed to this operation.
     */
    public func detachNetworkInterface(
            input: ElasticComputeCloudModel.DetachNetworkInterfaceRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: DetachNetworkInterfaceOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.detachNetworkInterface.rawValue,
                                    reporting: self.invocationsReporting.detachNetworkInterface,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DetachVolume operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DetachVolumeRequest object being passed to this operation.
     - Returns: A future to the VolumeAttachment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func detachVolume(
            input: ElasticComputeCloudModel.DetachVolumeRequest) -> EventLoopFuture<ElasticComputeCloudModel.VolumeAttachment> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DetachVolumeOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.detachVolume.rawValue,
                                 reporting: self.invocationsReporting.detachVolume,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DetachVpnGateway operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DetachVpnGatewayRequest object being passed to this operation.
     */
    public func detachVpnGateway(
            input: ElasticComputeCloudModel.DetachVpnGatewayRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: DetachVpnGatewayOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.detachVpnGateway.rawValue,
                                    reporting: self.invocationsReporting.detachVpnGateway,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DisableEbsEncryptionByDefault operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DisableEbsEncryptionByDefaultRequest object being passed to this operation.
     - Returns: A future to the DisableEbsEncryptionByDefaultResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func disableEbsEncryptionByDefault(
            input: ElasticComputeCloudModel.DisableEbsEncryptionByDefaultRequest) -> EventLoopFuture<ElasticComputeCloudModel.DisableEbsEncryptionByDefaultResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DisableEbsEncryptionByDefaultOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.disableEbsEncryptionByDefault.rawValue,
                                 reporting: self.invocationsReporting.disableEbsEncryptionByDefault,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DisableFastSnapshotRestores operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DisableFastSnapshotRestoresRequest object being passed to this operation.
     - Returns: A future to the DisableFastSnapshotRestoresResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func disableFastSnapshotRestores(
            input: ElasticComputeCloudModel.DisableFastSnapshotRestoresRequest) -> EventLoopFuture<ElasticComputeCloudModel.DisableFastSnapshotRestoresResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DisableFastSnapshotRestoresOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.disableFastSnapshotRestores.rawValue,
                                 reporting: self.invocationsReporting.disableFastSnapshotRestores,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DisableTransitGatewayRouteTablePropagation operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DisableTransitGatewayRouteTablePropagationRequest object being passed to this operation.
     - Returns: A future to the DisableTransitGatewayRouteTablePropagationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func disableTransitGatewayRouteTablePropagation(
            input: ElasticComputeCloudModel.DisableTransitGatewayRouteTablePropagationRequest) -> EventLoopFuture<ElasticComputeCloudModel.DisableTransitGatewayRouteTablePropagationResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DisableTransitGatewayRouteTablePropagationOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.disableTransitGatewayRouteTablePropagation.rawValue,
                                 reporting: self.invocationsReporting.disableTransitGatewayRouteTablePropagation,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DisableVgwRoutePropagation operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DisableVgwRoutePropagationRequest object being passed to this operation.
     */
    public func disableVgwRoutePropagation(
            input: ElasticComputeCloudModel.DisableVgwRoutePropagationRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: DisableVgwRoutePropagationOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.disableVgwRoutePropagation.rawValue,
                                    reporting: self.invocationsReporting.disableVgwRoutePropagation,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DisableVpcClassicLink operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DisableVpcClassicLinkRequest object being passed to this operation.
     - Returns: A future to the DisableVpcClassicLinkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func disableVpcClassicLink(
            input: ElasticComputeCloudModel.DisableVpcClassicLinkRequest) -> EventLoopFuture<ElasticComputeCloudModel.DisableVpcClassicLinkResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DisableVpcClassicLinkOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.disableVpcClassicLink.rawValue,
                                 reporting: self.invocationsReporting.disableVpcClassicLink,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DisableVpcClassicLinkDnsSupport operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DisableVpcClassicLinkDnsSupportRequest object being passed to this operation.
     - Returns: A future to the DisableVpcClassicLinkDnsSupportResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func disableVpcClassicLinkDnsSupport(
            input: ElasticComputeCloudModel.DisableVpcClassicLinkDnsSupportRequest) -> EventLoopFuture<ElasticComputeCloudModel.DisableVpcClassicLinkDnsSupportResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DisableVpcClassicLinkDnsSupportOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.disableVpcClassicLinkDnsSupport.rawValue,
                                 reporting: self.invocationsReporting.disableVpcClassicLinkDnsSupport,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DisassociateAddress operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DisassociateAddressRequest object being passed to this operation.
     */
    public func disassociateAddress(
            input: ElasticComputeCloudModel.DisassociateAddressRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: DisassociateAddressOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.disassociateAddress.rawValue,
                                    reporting: self.invocationsReporting.disassociateAddress,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DisassociateClientVpnTargetNetwork operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DisassociateClientVpnTargetNetworkRequest object being passed to this operation.
     - Returns: A future to the DisassociateClientVpnTargetNetworkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func disassociateClientVpnTargetNetwork(
            input: ElasticComputeCloudModel.DisassociateClientVpnTargetNetworkRequest) -> EventLoopFuture<ElasticComputeCloudModel.DisassociateClientVpnTargetNetworkResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DisassociateClientVpnTargetNetworkOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.disassociateClientVpnTargetNetwork.rawValue,
                                 reporting: self.invocationsReporting.disassociateClientVpnTargetNetwork,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DisassociateEnclaveCertificateIamRole operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DisassociateEnclaveCertificateIamRoleRequest object being passed to this operation.
     - Returns: A future to the DisassociateEnclaveCertificateIamRoleResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func disassociateEnclaveCertificateIamRole(
            input: ElasticComputeCloudModel.DisassociateEnclaveCertificateIamRoleRequest) -> EventLoopFuture<ElasticComputeCloudModel.DisassociateEnclaveCertificateIamRoleResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DisassociateEnclaveCertificateIamRoleOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.disassociateEnclaveCertificateIamRole.rawValue,
                                 reporting: self.invocationsReporting.disassociateEnclaveCertificateIamRole,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DisassociateIamInstanceProfile operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DisassociateIamInstanceProfileRequest object being passed to this operation.
     - Returns: A future to the DisassociateIamInstanceProfileResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func disassociateIamInstanceProfile(
            input: ElasticComputeCloudModel.DisassociateIamInstanceProfileRequest) -> EventLoopFuture<ElasticComputeCloudModel.DisassociateIamInstanceProfileResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DisassociateIamInstanceProfileOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.disassociateIamInstanceProfile.rawValue,
                                 reporting: self.invocationsReporting.disassociateIamInstanceProfile,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DisassociateRouteTable operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DisassociateRouteTableRequest object being passed to this operation.
     */
    public func disassociateRouteTable(
            input: ElasticComputeCloudModel.DisassociateRouteTableRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: DisassociateRouteTableOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.disassociateRouteTable.rawValue,
                                    reporting: self.invocationsReporting.disassociateRouteTable,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DisassociateSubnetCidrBlock operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DisassociateSubnetCidrBlockRequest object being passed to this operation.
     - Returns: A future to the DisassociateSubnetCidrBlockResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func disassociateSubnetCidrBlock(
            input: ElasticComputeCloudModel.DisassociateSubnetCidrBlockRequest) -> EventLoopFuture<ElasticComputeCloudModel.DisassociateSubnetCidrBlockResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DisassociateSubnetCidrBlockOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.disassociateSubnetCidrBlock.rawValue,
                                 reporting: self.invocationsReporting.disassociateSubnetCidrBlock,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DisassociateTransitGatewayMulticastDomain operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DisassociateTransitGatewayMulticastDomainRequest object being passed to this operation.
     - Returns: A future to the DisassociateTransitGatewayMulticastDomainResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func disassociateTransitGatewayMulticastDomain(
            input: ElasticComputeCloudModel.DisassociateTransitGatewayMulticastDomainRequest) -> EventLoopFuture<ElasticComputeCloudModel.DisassociateTransitGatewayMulticastDomainResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DisassociateTransitGatewayMulticastDomainOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.disassociateTransitGatewayMulticastDomain.rawValue,
                                 reporting: self.invocationsReporting.disassociateTransitGatewayMulticastDomain,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DisassociateTransitGatewayRouteTable operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DisassociateTransitGatewayRouteTableRequest object being passed to this operation.
     - Returns: A future to the DisassociateTransitGatewayRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func disassociateTransitGatewayRouteTable(
            input: ElasticComputeCloudModel.DisassociateTransitGatewayRouteTableRequest) -> EventLoopFuture<ElasticComputeCloudModel.DisassociateTransitGatewayRouteTableResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DisassociateTransitGatewayRouteTableOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.disassociateTransitGatewayRouteTable.rawValue,
                                 reporting: self.invocationsReporting.disassociateTransitGatewayRouteTable,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the DisassociateVpcCidrBlock operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DisassociateVpcCidrBlockRequest object being passed to this operation.
     - Returns: A future to the DisassociateVpcCidrBlockResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func disassociateVpcCidrBlock(
            input: ElasticComputeCloudModel.DisassociateVpcCidrBlockRequest) -> EventLoopFuture<ElasticComputeCloudModel.DisassociateVpcCidrBlockResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DisassociateVpcCidrBlockOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.disassociateVpcCidrBlock.rawValue,
                                 reporting: self.invocationsReporting.disassociateVpcCidrBlock,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the EnableEbsEncryptionByDefault operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated EnableEbsEncryptionByDefaultRequest object being passed to this operation.
     - Returns: A future to the EnableEbsEncryptionByDefaultResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func enableEbsEncryptionByDefault(
            input: ElasticComputeCloudModel.EnableEbsEncryptionByDefaultRequest) -> EventLoopFuture<ElasticComputeCloudModel.EnableEbsEncryptionByDefaultResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: EnableEbsEncryptionByDefaultOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.enableEbsEncryptionByDefault.rawValue,
                                 reporting: self.invocationsReporting.enableEbsEncryptionByDefault,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the EnableFastSnapshotRestores operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated EnableFastSnapshotRestoresRequest object being passed to this operation.
     - Returns: A future to the EnableFastSnapshotRestoresResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func enableFastSnapshotRestores(
            input: ElasticComputeCloudModel.EnableFastSnapshotRestoresRequest) -> EventLoopFuture<ElasticComputeCloudModel.EnableFastSnapshotRestoresResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: EnableFastSnapshotRestoresOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.enableFastSnapshotRestores.rawValue,
                                 reporting: self.invocationsReporting.enableFastSnapshotRestores,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the EnableTransitGatewayRouteTablePropagation operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated EnableTransitGatewayRouteTablePropagationRequest object being passed to this operation.
     - Returns: A future to the EnableTransitGatewayRouteTablePropagationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func enableTransitGatewayRouteTablePropagation(
            input: ElasticComputeCloudModel.EnableTransitGatewayRouteTablePropagationRequest) -> EventLoopFuture<ElasticComputeCloudModel.EnableTransitGatewayRouteTablePropagationResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: EnableTransitGatewayRouteTablePropagationOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.enableTransitGatewayRouteTablePropagation.rawValue,
                                 reporting: self.invocationsReporting.enableTransitGatewayRouteTablePropagation,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the EnableVgwRoutePropagation operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated EnableVgwRoutePropagationRequest object being passed to this operation.
     */
    public func enableVgwRoutePropagation(
            input: ElasticComputeCloudModel.EnableVgwRoutePropagationRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: EnableVgwRoutePropagationOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.enableVgwRoutePropagation.rawValue,
                                    reporting: self.invocationsReporting.enableVgwRoutePropagation,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the EnableVolumeIO operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated EnableVolumeIORequest object being passed to this operation.
     */
    public func enableVolumeIO(
            input: ElasticComputeCloudModel.EnableVolumeIORequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: EnableVolumeIOOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.enableVolumeIO.rawValue,
                                    reporting: self.invocationsReporting.enableVolumeIO,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the EnableVpcClassicLink operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated EnableVpcClassicLinkRequest object being passed to this operation.
     - Returns: A future to the EnableVpcClassicLinkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func enableVpcClassicLink(
            input: ElasticComputeCloudModel.EnableVpcClassicLinkRequest) -> EventLoopFuture<ElasticComputeCloudModel.EnableVpcClassicLinkResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: EnableVpcClassicLinkOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.enableVpcClassicLink.rawValue,
                                 reporting: self.invocationsReporting.enableVpcClassicLink,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the EnableVpcClassicLinkDnsSupport operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated EnableVpcClassicLinkDnsSupportRequest object being passed to this operation.
     - Returns: A future to the EnableVpcClassicLinkDnsSupportResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func enableVpcClassicLinkDnsSupport(
            input: ElasticComputeCloudModel.EnableVpcClassicLinkDnsSupportRequest) -> EventLoopFuture<ElasticComputeCloudModel.EnableVpcClassicLinkDnsSupportResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: EnableVpcClassicLinkDnsSupportOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.enableVpcClassicLinkDnsSupport.rawValue,
                                 reporting: self.invocationsReporting.enableVpcClassicLinkDnsSupport,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ExportClientVpnClientCertificateRevocationList operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ExportClientVpnClientCertificateRevocationListRequest object being passed to this operation.
     - Returns: A future to the ExportClientVpnClientCertificateRevocationListResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func exportClientVpnClientCertificateRevocationList(
            input: ElasticComputeCloudModel.ExportClientVpnClientCertificateRevocationListRequest) -> EventLoopFuture<ElasticComputeCloudModel.ExportClientVpnClientCertificateRevocationListResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ExportClientVpnClientCertificateRevocationListOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.exportClientVpnClientCertificateRevocationList.rawValue,
                                 reporting: self.invocationsReporting.exportClientVpnClientCertificateRevocationList,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ExportClientVpnClientConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ExportClientVpnClientConfigurationRequest object being passed to this operation.
     - Returns: A future to the ExportClientVpnClientConfigurationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func exportClientVpnClientConfiguration(
            input: ElasticComputeCloudModel.ExportClientVpnClientConfigurationRequest) -> EventLoopFuture<ElasticComputeCloudModel.ExportClientVpnClientConfigurationResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ExportClientVpnClientConfigurationOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.exportClientVpnClientConfiguration.rawValue,
                                 reporting: self.invocationsReporting.exportClientVpnClientConfiguration,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ExportImage operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ExportImageRequest object being passed to this operation.
     - Returns: A future to the ExportImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func exportImage(
            input: ElasticComputeCloudModel.ExportImageRequest) -> EventLoopFuture<ElasticComputeCloudModel.ExportImageResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ExportImageOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.exportImage.rawValue,
                                 reporting: self.invocationsReporting.exportImage,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ExportTransitGatewayRoutes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ExportTransitGatewayRoutesRequest object being passed to this operation.
     - Returns: A future to the ExportTransitGatewayRoutesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func exportTransitGatewayRoutes(
            input: ElasticComputeCloudModel.ExportTransitGatewayRoutesRequest) -> EventLoopFuture<ElasticComputeCloudModel.ExportTransitGatewayRoutesResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ExportTransitGatewayRoutesOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.exportTransitGatewayRoutes.rawValue,
                                 reporting: self.invocationsReporting.exportTransitGatewayRoutes,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the GetAssociatedEnclaveCertificateIamRoles operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetAssociatedEnclaveCertificateIamRolesRequest object being passed to this operation.
     - Returns: A future to the GetAssociatedEnclaveCertificateIamRolesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getAssociatedEnclaveCertificateIamRoles(
            input: ElasticComputeCloudModel.GetAssociatedEnclaveCertificateIamRolesRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetAssociatedEnclaveCertificateIamRolesResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: GetAssociatedEnclaveCertificateIamRolesOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.getAssociatedEnclaveCertificateIamRoles.rawValue,
                                 reporting: self.invocationsReporting.getAssociatedEnclaveCertificateIamRoles,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the GetAssociatedIpv6PoolCidrs operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetAssociatedIpv6PoolCidrsRequest object being passed to this operation.
     - Returns: A future to the GetAssociatedIpv6PoolCidrsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getAssociatedIpv6PoolCidrs(
            input: ElasticComputeCloudModel.GetAssociatedIpv6PoolCidrsRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetAssociatedIpv6PoolCidrsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: GetAssociatedIpv6PoolCidrsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.getAssociatedIpv6PoolCidrs.rawValue,
                                 reporting: self.invocationsReporting.getAssociatedIpv6PoolCidrs,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the GetCapacityReservationUsage operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetCapacityReservationUsageRequest object being passed to this operation.
     - Returns: A future to the GetCapacityReservationUsageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getCapacityReservationUsage(
            input: ElasticComputeCloudModel.GetCapacityReservationUsageRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetCapacityReservationUsageResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: GetCapacityReservationUsageOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.getCapacityReservationUsage.rawValue,
                                 reporting: self.invocationsReporting.getCapacityReservationUsage,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the GetCoipPoolUsage operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetCoipPoolUsageRequest object being passed to this operation.
     - Returns: A future to the GetCoipPoolUsageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getCoipPoolUsage(
            input: ElasticComputeCloudModel.GetCoipPoolUsageRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetCoipPoolUsageResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: GetCoipPoolUsageOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.getCoipPoolUsage.rawValue,
                                 reporting: self.invocationsReporting.getCoipPoolUsage,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the GetConsoleOutput operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetConsoleOutputRequest object being passed to this operation.
     - Returns: A future to the GetConsoleOutputResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getConsoleOutput(
            input: ElasticComputeCloudModel.GetConsoleOutputRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetConsoleOutputResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: GetConsoleOutputOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.getConsoleOutput.rawValue,
                                 reporting: self.invocationsReporting.getConsoleOutput,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the GetConsoleScreenshot operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetConsoleScreenshotRequest object being passed to this operation.
     - Returns: A future to the GetConsoleScreenshotResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getConsoleScreenshot(
            input: ElasticComputeCloudModel.GetConsoleScreenshotRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetConsoleScreenshotResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: GetConsoleScreenshotOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.getConsoleScreenshot.rawValue,
                                 reporting: self.invocationsReporting.getConsoleScreenshot,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the GetDefaultCreditSpecification operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetDefaultCreditSpecificationRequest object being passed to this operation.
     - Returns: A future to the GetDefaultCreditSpecificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getDefaultCreditSpecification(
            input: ElasticComputeCloudModel.GetDefaultCreditSpecificationRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetDefaultCreditSpecificationResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: GetDefaultCreditSpecificationOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.getDefaultCreditSpecification.rawValue,
                                 reporting: self.invocationsReporting.getDefaultCreditSpecification,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the GetEbsDefaultKmsKeyId operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetEbsDefaultKmsKeyIdRequest object being passed to this operation.
     - Returns: A future to the GetEbsDefaultKmsKeyIdResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getEbsDefaultKmsKeyId(
            input: ElasticComputeCloudModel.GetEbsDefaultKmsKeyIdRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetEbsDefaultKmsKeyIdResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: GetEbsDefaultKmsKeyIdOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.getEbsDefaultKmsKeyId.rawValue,
                                 reporting: self.invocationsReporting.getEbsDefaultKmsKeyId,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the GetEbsEncryptionByDefault operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetEbsEncryptionByDefaultRequest object being passed to this operation.
     - Returns: A future to the GetEbsEncryptionByDefaultResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getEbsEncryptionByDefault(
            input: ElasticComputeCloudModel.GetEbsEncryptionByDefaultRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetEbsEncryptionByDefaultResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: GetEbsEncryptionByDefaultOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.getEbsEncryptionByDefault.rawValue,
                                 reporting: self.invocationsReporting.getEbsEncryptionByDefault,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the GetGroupsForCapacityReservation operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetGroupsForCapacityReservationRequest object being passed to this operation.
     - Returns: A future to the GetGroupsForCapacityReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getGroupsForCapacityReservation(
            input: ElasticComputeCloudModel.GetGroupsForCapacityReservationRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetGroupsForCapacityReservationResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: GetGroupsForCapacityReservationOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.getGroupsForCapacityReservation.rawValue,
                                 reporting: self.invocationsReporting.getGroupsForCapacityReservation,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the GetHostReservationPurchasePreview operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetHostReservationPurchasePreviewRequest object being passed to this operation.
     - Returns: A future to the GetHostReservationPurchasePreviewResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getHostReservationPurchasePreview(
            input: ElasticComputeCloudModel.GetHostReservationPurchasePreviewRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetHostReservationPurchasePreviewResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: GetHostReservationPurchasePreviewOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.getHostReservationPurchasePreview.rawValue,
                                 reporting: self.invocationsReporting.getHostReservationPurchasePreview,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the GetLaunchTemplateData operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetLaunchTemplateDataRequest object being passed to this operation.
     - Returns: A future to the GetLaunchTemplateDataResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getLaunchTemplateData(
            input: ElasticComputeCloudModel.GetLaunchTemplateDataRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetLaunchTemplateDataResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: GetLaunchTemplateDataOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.getLaunchTemplateData.rawValue,
                                 reporting: self.invocationsReporting.getLaunchTemplateData,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the GetManagedPrefixListAssociations operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetManagedPrefixListAssociationsRequest object being passed to this operation.
     - Returns: A future to the GetManagedPrefixListAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getManagedPrefixListAssociations(
            input: ElasticComputeCloudModel.GetManagedPrefixListAssociationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetManagedPrefixListAssociationsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: GetManagedPrefixListAssociationsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.getManagedPrefixListAssociations.rawValue,
                                 reporting: self.invocationsReporting.getManagedPrefixListAssociations,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the GetManagedPrefixListEntries operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetManagedPrefixListEntriesRequest object being passed to this operation.
     - Returns: A future to the GetManagedPrefixListEntriesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getManagedPrefixListEntries(
            input: ElasticComputeCloudModel.GetManagedPrefixListEntriesRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetManagedPrefixListEntriesResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: GetManagedPrefixListEntriesOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.getManagedPrefixListEntries.rawValue,
                                 reporting: self.invocationsReporting.getManagedPrefixListEntries,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the GetPasswordData operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetPasswordDataRequest object being passed to this operation.
     - Returns: A future to the GetPasswordDataResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getPasswordData(
            input: ElasticComputeCloudModel.GetPasswordDataRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetPasswordDataResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: GetPasswordDataOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.getPasswordData.rawValue,
                                 reporting: self.invocationsReporting.getPasswordData,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the GetReservedInstancesExchangeQuote operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetReservedInstancesExchangeQuoteRequest object being passed to this operation.
     - Returns: A future to the GetReservedInstancesExchangeQuoteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getReservedInstancesExchangeQuote(
            input: ElasticComputeCloudModel.GetReservedInstancesExchangeQuoteRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetReservedInstancesExchangeQuoteResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: GetReservedInstancesExchangeQuoteOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.getReservedInstancesExchangeQuote.rawValue,
                                 reporting: self.invocationsReporting.getReservedInstancesExchangeQuote,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the GetTransitGatewayAttachmentPropagations operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetTransitGatewayAttachmentPropagationsRequest object being passed to this operation.
     - Returns: A future to the GetTransitGatewayAttachmentPropagationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getTransitGatewayAttachmentPropagations(
            input: ElasticComputeCloudModel.GetTransitGatewayAttachmentPropagationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetTransitGatewayAttachmentPropagationsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: GetTransitGatewayAttachmentPropagationsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.getTransitGatewayAttachmentPropagations.rawValue,
                                 reporting: self.invocationsReporting.getTransitGatewayAttachmentPropagations,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the GetTransitGatewayMulticastDomainAssociations operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetTransitGatewayMulticastDomainAssociationsRequest object being passed to this operation.
     - Returns: A future to the GetTransitGatewayMulticastDomainAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getTransitGatewayMulticastDomainAssociations(
            input: ElasticComputeCloudModel.GetTransitGatewayMulticastDomainAssociationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetTransitGatewayMulticastDomainAssociationsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: GetTransitGatewayMulticastDomainAssociationsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.getTransitGatewayMulticastDomainAssociations.rawValue,
                                 reporting: self.invocationsReporting.getTransitGatewayMulticastDomainAssociations,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the GetTransitGatewayPrefixListReferences operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetTransitGatewayPrefixListReferencesRequest object being passed to this operation.
     - Returns: A future to the GetTransitGatewayPrefixListReferencesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getTransitGatewayPrefixListReferences(
            input: ElasticComputeCloudModel.GetTransitGatewayPrefixListReferencesRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetTransitGatewayPrefixListReferencesResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: GetTransitGatewayPrefixListReferencesOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.getTransitGatewayPrefixListReferences.rawValue,
                                 reporting: self.invocationsReporting.getTransitGatewayPrefixListReferences,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the GetTransitGatewayRouteTableAssociations operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetTransitGatewayRouteTableAssociationsRequest object being passed to this operation.
     - Returns: A future to the GetTransitGatewayRouteTableAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getTransitGatewayRouteTableAssociations(
            input: ElasticComputeCloudModel.GetTransitGatewayRouteTableAssociationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetTransitGatewayRouteTableAssociationsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: GetTransitGatewayRouteTableAssociationsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.getTransitGatewayRouteTableAssociations.rawValue,
                                 reporting: self.invocationsReporting.getTransitGatewayRouteTableAssociations,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the GetTransitGatewayRouteTablePropagations operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetTransitGatewayRouteTablePropagationsRequest object being passed to this operation.
     - Returns: A future to the GetTransitGatewayRouteTablePropagationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getTransitGatewayRouteTablePropagations(
            input: ElasticComputeCloudModel.GetTransitGatewayRouteTablePropagationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetTransitGatewayRouteTablePropagationsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: GetTransitGatewayRouteTablePropagationsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.getTransitGatewayRouteTablePropagations.rawValue,
                                 reporting: self.invocationsReporting.getTransitGatewayRouteTablePropagations,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ImportClientVpnClientCertificateRevocationList operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ImportClientVpnClientCertificateRevocationListRequest object being passed to this operation.
     - Returns: A future to the ImportClientVpnClientCertificateRevocationListResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func importClientVpnClientCertificateRevocationList(
            input: ElasticComputeCloudModel.ImportClientVpnClientCertificateRevocationListRequest) -> EventLoopFuture<ElasticComputeCloudModel.ImportClientVpnClientCertificateRevocationListResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ImportClientVpnClientCertificateRevocationListOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.importClientVpnClientCertificateRevocationList.rawValue,
                                 reporting: self.invocationsReporting.importClientVpnClientCertificateRevocationList,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ImportImage operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ImportImageRequest object being passed to this operation.
     - Returns: A future to the ImportImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func importImage(
            input: ElasticComputeCloudModel.ImportImageRequest) -> EventLoopFuture<ElasticComputeCloudModel.ImportImageResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ImportImageOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.importImage.rawValue,
                                 reporting: self.invocationsReporting.importImage,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ImportInstance operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ImportInstanceRequest object being passed to this operation.
     - Returns: A future to the ImportInstanceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func importInstance(
            input: ElasticComputeCloudModel.ImportInstanceRequest) -> EventLoopFuture<ElasticComputeCloudModel.ImportInstanceResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ImportInstanceOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.importInstance.rawValue,
                                 reporting: self.invocationsReporting.importInstance,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ImportKeyPair operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ImportKeyPairRequest object being passed to this operation.
     - Returns: A future to the ImportKeyPairResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func importKeyPair(
            input: ElasticComputeCloudModel.ImportKeyPairRequest) -> EventLoopFuture<ElasticComputeCloudModel.ImportKeyPairResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ImportKeyPairOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.importKeyPair.rawValue,
                                 reporting: self.invocationsReporting.importKeyPair,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ImportSnapshot operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ImportSnapshotRequest object being passed to this operation.
     - Returns: A future to the ImportSnapshotResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func importSnapshot(
            input: ElasticComputeCloudModel.ImportSnapshotRequest) -> EventLoopFuture<ElasticComputeCloudModel.ImportSnapshotResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ImportSnapshotOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.importSnapshot.rawValue,
                                 reporting: self.invocationsReporting.importSnapshot,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ImportVolume operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ImportVolumeRequest object being passed to this operation.
     - Returns: A future to the ImportVolumeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func importVolume(
            input: ElasticComputeCloudModel.ImportVolumeRequest) -> EventLoopFuture<ElasticComputeCloudModel.ImportVolumeResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ImportVolumeOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.importVolume.rawValue,
                                 reporting: self.invocationsReporting.importVolume,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ModifyAddressAttribute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyAddressAttributeRequest object being passed to this operation.
     - Returns: A future to the ModifyAddressAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyAddressAttribute(
            input: ElasticComputeCloudModel.ModifyAddressAttributeRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyAddressAttributeResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ModifyAddressAttributeOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.modifyAddressAttribute.rawValue,
                                 reporting: self.invocationsReporting.modifyAddressAttribute,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ModifyAvailabilityZoneGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyAvailabilityZoneGroupRequest object being passed to this operation.
     - Returns: A future to the ModifyAvailabilityZoneGroupResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyAvailabilityZoneGroup(
            input: ElasticComputeCloudModel.ModifyAvailabilityZoneGroupRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyAvailabilityZoneGroupResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ModifyAvailabilityZoneGroupOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.modifyAvailabilityZoneGroup.rawValue,
                                 reporting: self.invocationsReporting.modifyAvailabilityZoneGroup,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ModifyCapacityReservation operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyCapacityReservationRequest object being passed to this operation.
     - Returns: A future to the ModifyCapacityReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyCapacityReservation(
            input: ElasticComputeCloudModel.ModifyCapacityReservationRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyCapacityReservationResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ModifyCapacityReservationOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.modifyCapacityReservation.rawValue,
                                 reporting: self.invocationsReporting.modifyCapacityReservation,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ModifyClientVpnEndpoint operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyClientVpnEndpointRequest object being passed to this operation.
     - Returns: A future to the ModifyClientVpnEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyClientVpnEndpoint(
            input: ElasticComputeCloudModel.ModifyClientVpnEndpointRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyClientVpnEndpointResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ModifyClientVpnEndpointOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.modifyClientVpnEndpoint.rawValue,
                                 reporting: self.invocationsReporting.modifyClientVpnEndpoint,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ModifyDefaultCreditSpecification operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyDefaultCreditSpecificationRequest object being passed to this operation.
     - Returns: A future to the ModifyDefaultCreditSpecificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyDefaultCreditSpecification(
            input: ElasticComputeCloudModel.ModifyDefaultCreditSpecificationRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyDefaultCreditSpecificationResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ModifyDefaultCreditSpecificationOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.modifyDefaultCreditSpecification.rawValue,
                                 reporting: self.invocationsReporting.modifyDefaultCreditSpecification,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ModifyEbsDefaultKmsKeyId operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyEbsDefaultKmsKeyIdRequest object being passed to this operation.
     - Returns: A future to the ModifyEbsDefaultKmsKeyIdResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyEbsDefaultKmsKeyId(
            input: ElasticComputeCloudModel.ModifyEbsDefaultKmsKeyIdRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyEbsDefaultKmsKeyIdResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ModifyEbsDefaultKmsKeyIdOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.modifyEbsDefaultKmsKeyId.rawValue,
                                 reporting: self.invocationsReporting.modifyEbsDefaultKmsKeyId,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ModifyFleet operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyFleetRequest object being passed to this operation.
     - Returns: A future to the ModifyFleetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyFleet(
            input: ElasticComputeCloudModel.ModifyFleetRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyFleetResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ModifyFleetOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.modifyFleet.rawValue,
                                 reporting: self.invocationsReporting.modifyFleet,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ModifyFpgaImageAttribute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyFpgaImageAttributeRequest object being passed to this operation.
     - Returns: A future to the ModifyFpgaImageAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyFpgaImageAttribute(
            input: ElasticComputeCloudModel.ModifyFpgaImageAttributeRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyFpgaImageAttributeResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ModifyFpgaImageAttributeOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.modifyFpgaImageAttribute.rawValue,
                                 reporting: self.invocationsReporting.modifyFpgaImageAttribute,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ModifyHosts operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyHostsRequest object being passed to this operation.
     - Returns: A future to the ModifyHostsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyHosts(
            input: ElasticComputeCloudModel.ModifyHostsRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyHostsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ModifyHostsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.modifyHosts.rawValue,
                                 reporting: self.invocationsReporting.modifyHosts,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ModifyIdFormat operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyIdFormatRequest object being passed to this operation.
     */
    public func modifyIdFormat(
            input: ElasticComputeCloudModel.ModifyIdFormatRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: ModifyIdFormatOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.modifyIdFormat.rawValue,
                                    reporting: self.invocationsReporting.modifyIdFormat,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ModifyIdentityIdFormat operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyIdentityIdFormatRequest object being passed to this operation.
     */
    public func modifyIdentityIdFormat(
            input: ElasticComputeCloudModel.ModifyIdentityIdFormatRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: ModifyIdentityIdFormatOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.modifyIdentityIdFormat.rawValue,
                                    reporting: self.invocationsReporting.modifyIdentityIdFormat,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ModifyImageAttribute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyImageAttributeRequest object being passed to this operation.
     */
    public func modifyImageAttribute(
            input: ElasticComputeCloudModel.ModifyImageAttributeRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: ModifyImageAttributeOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.modifyImageAttribute.rawValue,
                                    reporting: self.invocationsReporting.modifyImageAttribute,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ModifyInstanceAttribute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyInstanceAttributeRequest object being passed to this operation.
     */
    public func modifyInstanceAttribute(
            input: ElasticComputeCloudModel.ModifyInstanceAttributeRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: ModifyInstanceAttributeOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.modifyInstanceAttribute.rawValue,
                                    reporting: self.invocationsReporting.modifyInstanceAttribute,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ModifyInstanceCapacityReservationAttributes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyInstanceCapacityReservationAttributesRequest object being passed to this operation.
     - Returns: A future to the ModifyInstanceCapacityReservationAttributesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyInstanceCapacityReservationAttributes(
            input: ElasticComputeCloudModel.ModifyInstanceCapacityReservationAttributesRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyInstanceCapacityReservationAttributesResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ModifyInstanceCapacityReservationAttributesOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.modifyInstanceCapacityReservationAttributes.rawValue,
                                 reporting: self.invocationsReporting.modifyInstanceCapacityReservationAttributes,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ModifyInstanceCreditSpecification operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyInstanceCreditSpecificationRequest object being passed to this operation.
     - Returns: A future to the ModifyInstanceCreditSpecificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyInstanceCreditSpecification(
            input: ElasticComputeCloudModel.ModifyInstanceCreditSpecificationRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyInstanceCreditSpecificationResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ModifyInstanceCreditSpecificationOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.modifyInstanceCreditSpecification.rawValue,
                                 reporting: self.invocationsReporting.modifyInstanceCreditSpecification,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ModifyInstanceEventStartTime operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyInstanceEventStartTimeRequest object being passed to this operation.
     - Returns: A future to the ModifyInstanceEventStartTimeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyInstanceEventStartTime(
            input: ElasticComputeCloudModel.ModifyInstanceEventStartTimeRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyInstanceEventStartTimeResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ModifyInstanceEventStartTimeOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.modifyInstanceEventStartTime.rawValue,
                                 reporting: self.invocationsReporting.modifyInstanceEventStartTime,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ModifyInstanceMetadataOptions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyInstanceMetadataOptionsRequest object being passed to this operation.
     - Returns: A future to the ModifyInstanceMetadataOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyInstanceMetadataOptions(
            input: ElasticComputeCloudModel.ModifyInstanceMetadataOptionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyInstanceMetadataOptionsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ModifyInstanceMetadataOptionsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.modifyInstanceMetadataOptions.rawValue,
                                 reporting: self.invocationsReporting.modifyInstanceMetadataOptions,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ModifyInstancePlacement operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyInstancePlacementRequest object being passed to this operation.
     - Returns: A future to the ModifyInstancePlacementResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyInstancePlacement(
            input: ElasticComputeCloudModel.ModifyInstancePlacementRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyInstancePlacementResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ModifyInstancePlacementOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.modifyInstancePlacement.rawValue,
                                 reporting: self.invocationsReporting.modifyInstancePlacement,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ModifyLaunchTemplate operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyLaunchTemplateRequest object being passed to this operation.
     - Returns: A future to the ModifyLaunchTemplateResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyLaunchTemplate(
            input: ElasticComputeCloudModel.ModifyLaunchTemplateRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyLaunchTemplateResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ModifyLaunchTemplateOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.modifyLaunchTemplate.rawValue,
                                 reporting: self.invocationsReporting.modifyLaunchTemplate,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ModifyManagedPrefixList operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyManagedPrefixListRequest object being passed to this operation.
     - Returns: A future to the ModifyManagedPrefixListResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyManagedPrefixList(
            input: ElasticComputeCloudModel.ModifyManagedPrefixListRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyManagedPrefixListResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ModifyManagedPrefixListOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.modifyManagedPrefixList.rawValue,
                                 reporting: self.invocationsReporting.modifyManagedPrefixList,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ModifyNetworkInterfaceAttribute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyNetworkInterfaceAttributeRequest object being passed to this operation.
     */
    public func modifyNetworkInterfaceAttribute(
            input: ElasticComputeCloudModel.ModifyNetworkInterfaceAttributeRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: ModifyNetworkInterfaceAttributeOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.modifyNetworkInterfaceAttribute.rawValue,
                                    reporting: self.invocationsReporting.modifyNetworkInterfaceAttribute,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ModifyReservedInstances operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyReservedInstancesRequest object being passed to this operation.
     - Returns: A future to the ModifyReservedInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyReservedInstances(
            input: ElasticComputeCloudModel.ModifyReservedInstancesRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyReservedInstancesResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ModifyReservedInstancesOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.modifyReservedInstances.rawValue,
                                 reporting: self.invocationsReporting.modifyReservedInstances,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ModifySnapshotAttribute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifySnapshotAttributeRequest object being passed to this operation.
     */
    public func modifySnapshotAttribute(
            input: ElasticComputeCloudModel.ModifySnapshotAttributeRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: ModifySnapshotAttributeOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.modifySnapshotAttribute.rawValue,
                                    reporting: self.invocationsReporting.modifySnapshotAttribute,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ModifySpotFleetRequest operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifySpotFleetRequestRequest object being passed to this operation.
     - Returns: A future to the ModifySpotFleetRequestResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifySpotFleetRequest(
            input: ElasticComputeCloudModel.ModifySpotFleetRequestRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifySpotFleetRequestResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ModifySpotFleetRequestOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.modifySpotFleetRequest.rawValue,
                                 reporting: self.invocationsReporting.modifySpotFleetRequest,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ModifySubnetAttribute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifySubnetAttributeRequest object being passed to this operation.
     */
    public func modifySubnetAttribute(
            input: ElasticComputeCloudModel.ModifySubnetAttributeRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: ModifySubnetAttributeOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.modifySubnetAttribute.rawValue,
                                    reporting: self.invocationsReporting.modifySubnetAttribute,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ModifyTrafficMirrorFilterNetworkServices operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyTrafficMirrorFilterNetworkServicesRequest object being passed to this operation.
     - Returns: A future to the ModifyTrafficMirrorFilterNetworkServicesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyTrafficMirrorFilterNetworkServices(
            input: ElasticComputeCloudModel.ModifyTrafficMirrorFilterNetworkServicesRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyTrafficMirrorFilterNetworkServicesResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ModifyTrafficMirrorFilterNetworkServicesOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.modifyTrafficMirrorFilterNetworkServices.rawValue,
                                 reporting: self.invocationsReporting.modifyTrafficMirrorFilterNetworkServices,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ModifyTrafficMirrorFilterRule operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyTrafficMirrorFilterRuleRequest object being passed to this operation.
     - Returns: A future to the ModifyTrafficMirrorFilterRuleResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyTrafficMirrorFilterRule(
            input: ElasticComputeCloudModel.ModifyTrafficMirrorFilterRuleRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyTrafficMirrorFilterRuleResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ModifyTrafficMirrorFilterRuleOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.modifyTrafficMirrorFilterRule.rawValue,
                                 reporting: self.invocationsReporting.modifyTrafficMirrorFilterRule,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ModifyTrafficMirrorSession operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyTrafficMirrorSessionRequest object being passed to this operation.
     - Returns: A future to the ModifyTrafficMirrorSessionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyTrafficMirrorSession(
            input: ElasticComputeCloudModel.ModifyTrafficMirrorSessionRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyTrafficMirrorSessionResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ModifyTrafficMirrorSessionOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.modifyTrafficMirrorSession.rawValue,
                                 reporting: self.invocationsReporting.modifyTrafficMirrorSession,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ModifyTransitGateway operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyTransitGatewayRequest object being passed to this operation.
     - Returns: A future to the ModifyTransitGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyTransitGateway(
            input: ElasticComputeCloudModel.ModifyTransitGatewayRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyTransitGatewayResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ModifyTransitGatewayOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.modifyTransitGateway.rawValue,
                                 reporting: self.invocationsReporting.modifyTransitGateway,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ModifyTransitGatewayPrefixListReference operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyTransitGatewayPrefixListReferenceRequest object being passed to this operation.
     - Returns: A future to the ModifyTransitGatewayPrefixListReferenceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyTransitGatewayPrefixListReference(
            input: ElasticComputeCloudModel.ModifyTransitGatewayPrefixListReferenceRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyTransitGatewayPrefixListReferenceResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ModifyTransitGatewayPrefixListReferenceOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.modifyTransitGatewayPrefixListReference.rawValue,
                                 reporting: self.invocationsReporting.modifyTransitGatewayPrefixListReference,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ModifyTransitGatewayVpcAttachment operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyTransitGatewayVpcAttachmentRequest object being passed to this operation.
     - Returns: A future to the ModifyTransitGatewayVpcAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyTransitGatewayVpcAttachment(
            input: ElasticComputeCloudModel.ModifyTransitGatewayVpcAttachmentRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyTransitGatewayVpcAttachmentResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ModifyTransitGatewayVpcAttachmentOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.modifyTransitGatewayVpcAttachment.rawValue,
                                 reporting: self.invocationsReporting.modifyTransitGatewayVpcAttachment,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ModifyVolume operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyVolumeRequest object being passed to this operation.
     - Returns: A future to the ModifyVolumeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyVolume(
            input: ElasticComputeCloudModel.ModifyVolumeRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyVolumeResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ModifyVolumeOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.modifyVolume.rawValue,
                                 reporting: self.invocationsReporting.modifyVolume,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ModifyVolumeAttribute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyVolumeAttributeRequest object being passed to this operation.
     */
    public func modifyVolumeAttribute(
            input: ElasticComputeCloudModel.ModifyVolumeAttributeRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: ModifyVolumeAttributeOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.modifyVolumeAttribute.rawValue,
                                    reporting: self.invocationsReporting.modifyVolumeAttribute,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ModifyVpcAttribute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyVpcAttributeRequest object being passed to this operation.
     */
    public func modifyVpcAttribute(
            input: ElasticComputeCloudModel.ModifyVpcAttributeRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: ModifyVpcAttributeOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.modifyVpcAttribute.rawValue,
                                    reporting: self.invocationsReporting.modifyVpcAttribute,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ModifyVpcEndpoint operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyVpcEndpointRequest object being passed to this operation.
     - Returns: A future to the ModifyVpcEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyVpcEndpoint(
            input: ElasticComputeCloudModel.ModifyVpcEndpointRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyVpcEndpointResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ModifyVpcEndpointOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.modifyVpcEndpoint.rawValue,
                                 reporting: self.invocationsReporting.modifyVpcEndpoint,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ModifyVpcEndpointConnectionNotification operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyVpcEndpointConnectionNotificationRequest object being passed to this operation.
     - Returns: A future to the ModifyVpcEndpointConnectionNotificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyVpcEndpointConnectionNotification(
            input: ElasticComputeCloudModel.ModifyVpcEndpointConnectionNotificationRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyVpcEndpointConnectionNotificationResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ModifyVpcEndpointConnectionNotificationOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.modifyVpcEndpointConnectionNotification.rawValue,
                                 reporting: self.invocationsReporting.modifyVpcEndpointConnectionNotification,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ModifyVpcEndpointServiceConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyVpcEndpointServiceConfigurationRequest object being passed to this operation.
     - Returns: A future to the ModifyVpcEndpointServiceConfigurationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyVpcEndpointServiceConfiguration(
            input: ElasticComputeCloudModel.ModifyVpcEndpointServiceConfigurationRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyVpcEndpointServiceConfigurationResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ModifyVpcEndpointServiceConfigurationOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.modifyVpcEndpointServiceConfiguration.rawValue,
                                 reporting: self.invocationsReporting.modifyVpcEndpointServiceConfiguration,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ModifyVpcEndpointServicePermissions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyVpcEndpointServicePermissionsRequest object being passed to this operation.
     - Returns: A future to the ModifyVpcEndpointServicePermissionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyVpcEndpointServicePermissions(
            input: ElasticComputeCloudModel.ModifyVpcEndpointServicePermissionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyVpcEndpointServicePermissionsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ModifyVpcEndpointServicePermissionsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.modifyVpcEndpointServicePermissions.rawValue,
                                 reporting: self.invocationsReporting.modifyVpcEndpointServicePermissions,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ModifyVpcPeeringConnectionOptions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyVpcPeeringConnectionOptionsRequest object being passed to this operation.
     - Returns: A future to the ModifyVpcPeeringConnectionOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyVpcPeeringConnectionOptions(
            input: ElasticComputeCloudModel.ModifyVpcPeeringConnectionOptionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyVpcPeeringConnectionOptionsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ModifyVpcPeeringConnectionOptionsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.modifyVpcPeeringConnectionOptions.rawValue,
                                 reporting: self.invocationsReporting.modifyVpcPeeringConnectionOptions,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ModifyVpcTenancy operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyVpcTenancyRequest object being passed to this operation.
     - Returns: A future to the ModifyVpcTenancyResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyVpcTenancy(
            input: ElasticComputeCloudModel.ModifyVpcTenancyRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyVpcTenancyResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ModifyVpcTenancyOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.modifyVpcTenancy.rawValue,
                                 reporting: self.invocationsReporting.modifyVpcTenancy,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ModifyVpnConnection operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyVpnConnectionRequest object being passed to this operation.
     - Returns: A future to the ModifyVpnConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyVpnConnection(
            input: ElasticComputeCloudModel.ModifyVpnConnectionRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyVpnConnectionResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ModifyVpnConnectionOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.modifyVpnConnection.rawValue,
                                 reporting: self.invocationsReporting.modifyVpnConnection,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ModifyVpnConnectionOptions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyVpnConnectionOptionsRequest object being passed to this operation.
     - Returns: A future to the ModifyVpnConnectionOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyVpnConnectionOptions(
            input: ElasticComputeCloudModel.ModifyVpnConnectionOptionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyVpnConnectionOptionsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ModifyVpnConnectionOptionsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.modifyVpnConnectionOptions.rawValue,
                                 reporting: self.invocationsReporting.modifyVpnConnectionOptions,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ModifyVpnTunnelCertificate operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyVpnTunnelCertificateRequest object being passed to this operation.
     - Returns: A future to the ModifyVpnTunnelCertificateResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyVpnTunnelCertificate(
            input: ElasticComputeCloudModel.ModifyVpnTunnelCertificateRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyVpnTunnelCertificateResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ModifyVpnTunnelCertificateOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.modifyVpnTunnelCertificate.rawValue,
                                 reporting: self.invocationsReporting.modifyVpnTunnelCertificate,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ModifyVpnTunnelOptions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyVpnTunnelOptionsRequest object being passed to this operation.
     - Returns: A future to the ModifyVpnTunnelOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func modifyVpnTunnelOptions(
            input: ElasticComputeCloudModel.ModifyVpnTunnelOptionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyVpnTunnelOptionsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ModifyVpnTunnelOptionsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.modifyVpnTunnelOptions.rawValue,
                                 reporting: self.invocationsReporting.modifyVpnTunnelOptions,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the MonitorInstances operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated MonitorInstancesRequest object being passed to this operation.
     - Returns: A future to the MonitorInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func monitorInstances(
            input: ElasticComputeCloudModel.MonitorInstancesRequest) -> EventLoopFuture<ElasticComputeCloudModel.MonitorInstancesResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: MonitorInstancesOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.monitorInstances.rawValue,
                                 reporting: self.invocationsReporting.monitorInstances,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the MoveAddressToVpc operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated MoveAddressToVpcRequest object being passed to this operation.
     - Returns: A future to the MoveAddressToVpcResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func moveAddressToVpc(
            input: ElasticComputeCloudModel.MoveAddressToVpcRequest) -> EventLoopFuture<ElasticComputeCloudModel.MoveAddressToVpcResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: MoveAddressToVpcOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.moveAddressToVpc.rawValue,
                                 reporting: self.invocationsReporting.moveAddressToVpc,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ProvisionByoipCidr operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ProvisionByoipCidrRequest object being passed to this operation.
     - Returns: A future to the ProvisionByoipCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func provisionByoipCidr(
            input: ElasticComputeCloudModel.ProvisionByoipCidrRequest) -> EventLoopFuture<ElasticComputeCloudModel.ProvisionByoipCidrResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ProvisionByoipCidrOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.provisionByoipCidr.rawValue,
                                 reporting: self.invocationsReporting.provisionByoipCidr,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the PurchaseHostReservation operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PurchaseHostReservationRequest object being passed to this operation.
     - Returns: A future to the PurchaseHostReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func purchaseHostReservation(
            input: ElasticComputeCloudModel.PurchaseHostReservationRequest) -> EventLoopFuture<ElasticComputeCloudModel.PurchaseHostReservationResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: PurchaseHostReservationOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.purchaseHostReservation.rawValue,
                                 reporting: self.invocationsReporting.purchaseHostReservation,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the PurchaseReservedInstancesOffering operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PurchaseReservedInstancesOfferingRequest object being passed to this operation.
     - Returns: A future to the PurchaseReservedInstancesOfferingResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func purchaseReservedInstancesOffering(
            input: ElasticComputeCloudModel.PurchaseReservedInstancesOfferingRequest) -> EventLoopFuture<ElasticComputeCloudModel.PurchaseReservedInstancesOfferingResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: PurchaseReservedInstancesOfferingOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.purchaseReservedInstancesOffering.rawValue,
                                 reporting: self.invocationsReporting.purchaseReservedInstancesOffering,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the PurchaseScheduledInstances operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PurchaseScheduledInstancesRequest object being passed to this operation.
     - Returns: A future to the PurchaseScheduledInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func purchaseScheduledInstances(
            input: ElasticComputeCloudModel.PurchaseScheduledInstancesRequest) -> EventLoopFuture<ElasticComputeCloudModel.PurchaseScheduledInstancesResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: PurchaseScheduledInstancesOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.purchaseScheduledInstances.rawValue,
                                 reporting: self.invocationsReporting.purchaseScheduledInstances,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the RebootInstances operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RebootInstancesRequest object being passed to this operation.
     */
    public func rebootInstances(
            input: ElasticComputeCloudModel.RebootInstancesRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: RebootInstancesOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.rebootInstances.rawValue,
                                    reporting: self.invocationsReporting.rebootInstances,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the RegisterImage operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RegisterImageRequest object being passed to this operation.
     - Returns: A future to the RegisterImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func registerImage(
            input: ElasticComputeCloudModel.RegisterImageRequest) -> EventLoopFuture<ElasticComputeCloudModel.RegisterImageResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: RegisterImageOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.registerImage.rawValue,
                                 reporting: self.invocationsReporting.registerImage,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the RegisterInstanceEventNotificationAttributes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RegisterInstanceEventNotificationAttributesRequest object being passed to this operation.
     - Returns: A future to the RegisterInstanceEventNotificationAttributesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func registerInstanceEventNotificationAttributes(
            input: ElasticComputeCloudModel.RegisterInstanceEventNotificationAttributesRequest) -> EventLoopFuture<ElasticComputeCloudModel.RegisterInstanceEventNotificationAttributesResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: RegisterInstanceEventNotificationAttributesOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.registerInstanceEventNotificationAttributes.rawValue,
                                 reporting: self.invocationsReporting.registerInstanceEventNotificationAttributes,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the RegisterTransitGatewayMulticastGroupMembers operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RegisterTransitGatewayMulticastGroupMembersRequest object being passed to this operation.
     - Returns: A future to the RegisterTransitGatewayMulticastGroupMembersResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func registerTransitGatewayMulticastGroupMembers(
            input: ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupMembersRequest) -> EventLoopFuture<ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupMembersResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: RegisterTransitGatewayMulticastGroupMembersOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.registerTransitGatewayMulticastGroupMembers.rawValue,
                                 reporting: self.invocationsReporting.registerTransitGatewayMulticastGroupMembers,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the RegisterTransitGatewayMulticastGroupSources operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RegisterTransitGatewayMulticastGroupSourcesRequest object being passed to this operation.
     - Returns: A future to the RegisterTransitGatewayMulticastGroupSourcesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func registerTransitGatewayMulticastGroupSources(
            input: ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupSourcesRequest) -> EventLoopFuture<ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupSourcesResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: RegisterTransitGatewayMulticastGroupSourcesOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.registerTransitGatewayMulticastGroupSources.rawValue,
                                 reporting: self.invocationsReporting.registerTransitGatewayMulticastGroupSources,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the RejectTransitGatewayMulticastDomainAssociations operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RejectTransitGatewayMulticastDomainAssociationsRequest object being passed to this operation.
     - Returns: A future to the RejectTransitGatewayMulticastDomainAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func rejectTransitGatewayMulticastDomainAssociations(
            input: ElasticComputeCloudModel.RejectTransitGatewayMulticastDomainAssociationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.RejectTransitGatewayMulticastDomainAssociationsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: RejectTransitGatewayMulticastDomainAssociationsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.rejectTransitGatewayMulticastDomainAssociations.rawValue,
                                 reporting: self.invocationsReporting.rejectTransitGatewayMulticastDomainAssociations,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the RejectTransitGatewayPeeringAttachment operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RejectTransitGatewayPeeringAttachmentRequest object being passed to this operation.
     - Returns: A future to the RejectTransitGatewayPeeringAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func rejectTransitGatewayPeeringAttachment(
            input: ElasticComputeCloudModel.RejectTransitGatewayPeeringAttachmentRequest) -> EventLoopFuture<ElasticComputeCloudModel.RejectTransitGatewayPeeringAttachmentResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: RejectTransitGatewayPeeringAttachmentOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.rejectTransitGatewayPeeringAttachment.rawValue,
                                 reporting: self.invocationsReporting.rejectTransitGatewayPeeringAttachment,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the RejectTransitGatewayVpcAttachment operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RejectTransitGatewayVpcAttachmentRequest object being passed to this operation.
     - Returns: A future to the RejectTransitGatewayVpcAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func rejectTransitGatewayVpcAttachment(
            input: ElasticComputeCloudModel.RejectTransitGatewayVpcAttachmentRequest) -> EventLoopFuture<ElasticComputeCloudModel.RejectTransitGatewayVpcAttachmentResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: RejectTransitGatewayVpcAttachmentOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.rejectTransitGatewayVpcAttachment.rawValue,
                                 reporting: self.invocationsReporting.rejectTransitGatewayVpcAttachment,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the RejectVpcEndpointConnections operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RejectVpcEndpointConnectionsRequest object being passed to this operation.
     - Returns: A future to the RejectVpcEndpointConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func rejectVpcEndpointConnections(
            input: ElasticComputeCloudModel.RejectVpcEndpointConnectionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.RejectVpcEndpointConnectionsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: RejectVpcEndpointConnectionsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.rejectVpcEndpointConnections.rawValue,
                                 reporting: self.invocationsReporting.rejectVpcEndpointConnections,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the RejectVpcPeeringConnection operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RejectVpcPeeringConnectionRequest object being passed to this operation.
     - Returns: A future to the RejectVpcPeeringConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func rejectVpcPeeringConnection(
            input: ElasticComputeCloudModel.RejectVpcPeeringConnectionRequest) -> EventLoopFuture<ElasticComputeCloudModel.RejectVpcPeeringConnectionResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: RejectVpcPeeringConnectionOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.rejectVpcPeeringConnection.rawValue,
                                 reporting: self.invocationsReporting.rejectVpcPeeringConnection,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ReleaseAddress operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ReleaseAddressRequest object being passed to this operation.
     */
    public func releaseAddress(
            input: ElasticComputeCloudModel.ReleaseAddressRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: ReleaseAddressOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.releaseAddress.rawValue,
                                    reporting: self.invocationsReporting.releaseAddress,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ReleaseHosts operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ReleaseHostsRequest object being passed to this operation.
     - Returns: A future to the ReleaseHostsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func releaseHosts(
            input: ElasticComputeCloudModel.ReleaseHostsRequest) -> EventLoopFuture<ElasticComputeCloudModel.ReleaseHostsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ReleaseHostsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.releaseHosts.rawValue,
                                 reporting: self.invocationsReporting.releaseHosts,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ReplaceIamInstanceProfileAssociation operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ReplaceIamInstanceProfileAssociationRequest object being passed to this operation.
     - Returns: A future to the ReplaceIamInstanceProfileAssociationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func replaceIamInstanceProfileAssociation(
            input: ElasticComputeCloudModel.ReplaceIamInstanceProfileAssociationRequest) -> EventLoopFuture<ElasticComputeCloudModel.ReplaceIamInstanceProfileAssociationResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ReplaceIamInstanceProfileAssociationOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.replaceIamInstanceProfileAssociation.rawValue,
                                 reporting: self.invocationsReporting.replaceIamInstanceProfileAssociation,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ReplaceNetworkAclAssociation operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ReplaceNetworkAclAssociationRequest object being passed to this operation.
     - Returns: A future to the ReplaceNetworkAclAssociationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func replaceNetworkAclAssociation(
            input: ElasticComputeCloudModel.ReplaceNetworkAclAssociationRequest) -> EventLoopFuture<ElasticComputeCloudModel.ReplaceNetworkAclAssociationResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ReplaceNetworkAclAssociationOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.replaceNetworkAclAssociation.rawValue,
                                 reporting: self.invocationsReporting.replaceNetworkAclAssociation,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ReplaceNetworkAclEntry operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ReplaceNetworkAclEntryRequest object being passed to this operation.
     */
    public func replaceNetworkAclEntry(
            input: ElasticComputeCloudModel.ReplaceNetworkAclEntryRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: ReplaceNetworkAclEntryOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.replaceNetworkAclEntry.rawValue,
                                    reporting: self.invocationsReporting.replaceNetworkAclEntry,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ReplaceRoute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ReplaceRouteRequest object being passed to this operation.
     */
    public func replaceRoute(
            input: ElasticComputeCloudModel.ReplaceRouteRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: ReplaceRouteOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.replaceRoute.rawValue,
                                    reporting: self.invocationsReporting.replaceRoute,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ReplaceRouteTableAssociation operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ReplaceRouteTableAssociationRequest object being passed to this operation.
     - Returns: A future to the ReplaceRouteTableAssociationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func replaceRouteTableAssociation(
            input: ElasticComputeCloudModel.ReplaceRouteTableAssociationRequest) -> EventLoopFuture<ElasticComputeCloudModel.ReplaceRouteTableAssociationResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ReplaceRouteTableAssociationOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.replaceRouteTableAssociation.rawValue,
                                 reporting: self.invocationsReporting.replaceRouteTableAssociation,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ReplaceTransitGatewayRoute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ReplaceTransitGatewayRouteRequest object being passed to this operation.
     - Returns: A future to the ReplaceTransitGatewayRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func replaceTransitGatewayRoute(
            input: ElasticComputeCloudModel.ReplaceTransitGatewayRouteRequest) -> EventLoopFuture<ElasticComputeCloudModel.ReplaceTransitGatewayRouteResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ReplaceTransitGatewayRouteOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.replaceTransitGatewayRoute.rawValue,
                                 reporting: self.invocationsReporting.replaceTransitGatewayRoute,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ReportInstanceStatus operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ReportInstanceStatusRequest object being passed to this operation.
     */
    public func reportInstanceStatus(
            input: ElasticComputeCloudModel.ReportInstanceStatusRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: ReportInstanceStatusOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.reportInstanceStatus.rawValue,
                                    reporting: self.invocationsReporting.reportInstanceStatus,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the RequestSpotFleet operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RequestSpotFleetRequest object being passed to this operation.
     - Returns: A future to the RequestSpotFleetResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func requestSpotFleet(
            input: ElasticComputeCloudModel.RequestSpotFleetRequest) -> EventLoopFuture<ElasticComputeCloudModel.RequestSpotFleetResponse> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: RequestSpotFleetOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.requestSpotFleet.rawValue,
                                 reporting: self.invocationsReporting.requestSpotFleet,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the RequestSpotInstances operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RequestSpotInstancesRequest object being passed to this operation.
     - Returns: A future to the RequestSpotInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func requestSpotInstances(
            input: ElasticComputeCloudModel.RequestSpotInstancesRequest) -> EventLoopFuture<ElasticComputeCloudModel.RequestSpotInstancesResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: RequestSpotInstancesOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.requestSpotInstances.rawValue,
                                 reporting: self.invocationsReporting.requestSpotInstances,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ResetAddressAttribute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ResetAddressAttributeRequest object being passed to this operation.
     - Returns: A future to the ResetAddressAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func resetAddressAttribute(
            input: ElasticComputeCloudModel.ResetAddressAttributeRequest) -> EventLoopFuture<ElasticComputeCloudModel.ResetAddressAttributeResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ResetAddressAttributeOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.resetAddressAttribute.rawValue,
                                 reporting: self.invocationsReporting.resetAddressAttribute,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ResetEbsDefaultKmsKeyId operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ResetEbsDefaultKmsKeyIdRequest object being passed to this operation.
     - Returns: A future to the ResetEbsDefaultKmsKeyIdResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func resetEbsDefaultKmsKeyId(
            input: ElasticComputeCloudModel.ResetEbsDefaultKmsKeyIdRequest) -> EventLoopFuture<ElasticComputeCloudModel.ResetEbsDefaultKmsKeyIdResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ResetEbsDefaultKmsKeyIdOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.resetEbsDefaultKmsKeyId.rawValue,
                                 reporting: self.invocationsReporting.resetEbsDefaultKmsKeyId,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ResetFpgaImageAttribute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ResetFpgaImageAttributeRequest object being passed to this operation.
     - Returns: A future to the ResetFpgaImageAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func resetFpgaImageAttribute(
            input: ElasticComputeCloudModel.ResetFpgaImageAttributeRequest) -> EventLoopFuture<ElasticComputeCloudModel.ResetFpgaImageAttributeResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ResetFpgaImageAttributeOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.resetFpgaImageAttribute.rawValue,
                                 reporting: self.invocationsReporting.resetFpgaImageAttribute,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ResetImageAttribute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ResetImageAttributeRequest object being passed to this operation.
     */
    public func resetImageAttribute(
            input: ElasticComputeCloudModel.ResetImageAttributeRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: ResetImageAttributeOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.resetImageAttribute.rawValue,
                                    reporting: self.invocationsReporting.resetImageAttribute,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ResetInstanceAttribute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ResetInstanceAttributeRequest object being passed to this operation.
     */
    public func resetInstanceAttribute(
            input: ElasticComputeCloudModel.ResetInstanceAttributeRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: ResetInstanceAttributeOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.resetInstanceAttribute.rawValue,
                                    reporting: self.invocationsReporting.resetInstanceAttribute,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ResetNetworkInterfaceAttribute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ResetNetworkInterfaceAttributeRequest object being passed to this operation.
     */
    public func resetNetworkInterfaceAttribute(
            input: ElasticComputeCloudModel.ResetNetworkInterfaceAttributeRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: ResetNetworkInterfaceAttributeOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.resetNetworkInterfaceAttribute.rawValue,
                                    reporting: self.invocationsReporting.resetNetworkInterfaceAttribute,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the ResetSnapshotAttribute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ResetSnapshotAttributeRequest object being passed to this operation.
     */
    public func resetSnapshotAttribute(
            input: ElasticComputeCloudModel.ResetSnapshotAttributeRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: ResetSnapshotAttributeOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.resetSnapshotAttribute.rawValue,
                                    reporting: self.invocationsReporting.resetSnapshotAttribute,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the RestoreAddressToClassic operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RestoreAddressToClassicRequest object being passed to this operation.
     - Returns: A future to the RestoreAddressToClassicResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func restoreAddressToClassic(
            input: ElasticComputeCloudModel.RestoreAddressToClassicRequest) -> EventLoopFuture<ElasticComputeCloudModel.RestoreAddressToClassicResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: RestoreAddressToClassicOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.restoreAddressToClassic.rawValue,
                                 reporting: self.invocationsReporting.restoreAddressToClassic,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the RestoreManagedPrefixListVersion operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RestoreManagedPrefixListVersionRequest object being passed to this operation.
     - Returns: A future to the RestoreManagedPrefixListVersionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func restoreManagedPrefixListVersion(
            input: ElasticComputeCloudModel.RestoreManagedPrefixListVersionRequest) -> EventLoopFuture<ElasticComputeCloudModel.RestoreManagedPrefixListVersionResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: RestoreManagedPrefixListVersionOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.restoreManagedPrefixListVersion.rawValue,
                                 reporting: self.invocationsReporting.restoreManagedPrefixListVersion,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the RevokeClientVpnIngress operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RevokeClientVpnIngressRequest object being passed to this operation.
     - Returns: A future to the RevokeClientVpnIngressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func revokeClientVpnIngress(
            input: ElasticComputeCloudModel.RevokeClientVpnIngressRequest) -> EventLoopFuture<ElasticComputeCloudModel.RevokeClientVpnIngressResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: RevokeClientVpnIngressOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.revokeClientVpnIngress.rawValue,
                                 reporting: self.invocationsReporting.revokeClientVpnIngress,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the RevokeSecurityGroupEgress operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RevokeSecurityGroupEgressRequest object being passed to this operation.
     - Returns: A future to the RevokeSecurityGroupEgressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func revokeSecurityGroupEgress(
            input: ElasticComputeCloudModel.RevokeSecurityGroupEgressRequest) -> EventLoopFuture<ElasticComputeCloudModel.RevokeSecurityGroupEgressResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: RevokeSecurityGroupEgressOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.revokeSecurityGroupEgress.rawValue,
                                 reporting: self.invocationsReporting.revokeSecurityGroupEgress,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the RevokeSecurityGroupIngress operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RevokeSecurityGroupIngressRequest object being passed to this operation.
     - Returns: A future to the RevokeSecurityGroupIngressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func revokeSecurityGroupIngress(
            input: ElasticComputeCloudModel.RevokeSecurityGroupIngressRequest) -> EventLoopFuture<ElasticComputeCloudModel.RevokeSecurityGroupIngressResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: RevokeSecurityGroupIngressOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.revokeSecurityGroupIngress.rawValue,
                                 reporting: self.invocationsReporting.revokeSecurityGroupIngress,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the RunInstances operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RunInstancesRequest object being passed to this operation.
     - Returns: A future to the Reservation object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func runInstances(
            input: ElasticComputeCloudModel.RunInstancesRequest) -> EventLoopFuture<ElasticComputeCloudModel.Reservation> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: RunInstancesOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.runInstances.rawValue,
                                 reporting: self.invocationsReporting.runInstances,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the RunScheduledInstances operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RunScheduledInstancesRequest object being passed to this operation.
     - Returns: A future to the RunScheduledInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func runScheduledInstances(
            input: ElasticComputeCloudModel.RunScheduledInstancesRequest) -> EventLoopFuture<ElasticComputeCloudModel.RunScheduledInstancesResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: RunScheduledInstancesOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.runScheduledInstances.rawValue,
                                 reporting: self.invocationsReporting.runScheduledInstances,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the SearchLocalGatewayRoutes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SearchLocalGatewayRoutesRequest object being passed to this operation.
     - Returns: A future to the SearchLocalGatewayRoutesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func searchLocalGatewayRoutes(
            input: ElasticComputeCloudModel.SearchLocalGatewayRoutesRequest) -> EventLoopFuture<ElasticComputeCloudModel.SearchLocalGatewayRoutesResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: SearchLocalGatewayRoutesOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.searchLocalGatewayRoutes.rawValue,
                                 reporting: self.invocationsReporting.searchLocalGatewayRoutes,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the SearchTransitGatewayMulticastGroups operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SearchTransitGatewayMulticastGroupsRequest object being passed to this operation.
     - Returns: A future to the SearchTransitGatewayMulticastGroupsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func searchTransitGatewayMulticastGroups(
            input: ElasticComputeCloudModel.SearchTransitGatewayMulticastGroupsRequest) -> EventLoopFuture<ElasticComputeCloudModel.SearchTransitGatewayMulticastGroupsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: SearchTransitGatewayMulticastGroupsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.searchTransitGatewayMulticastGroups.rawValue,
                                 reporting: self.invocationsReporting.searchTransitGatewayMulticastGroups,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the SearchTransitGatewayRoutes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SearchTransitGatewayRoutesRequest object being passed to this operation.
     - Returns: A future to the SearchTransitGatewayRoutesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func searchTransitGatewayRoutes(
            input: ElasticComputeCloudModel.SearchTransitGatewayRoutesRequest) -> EventLoopFuture<ElasticComputeCloudModel.SearchTransitGatewayRoutesResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: SearchTransitGatewayRoutesOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.searchTransitGatewayRoutes.rawValue,
                                 reporting: self.invocationsReporting.searchTransitGatewayRoutes,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the SendDiagnosticInterrupt operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SendDiagnosticInterruptRequest object being passed to this operation.
     */
    public func sendDiagnosticInterrupt(
            input: ElasticComputeCloudModel.SendDiagnosticInterruptRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: SendDiagnosticInterruptOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.sendDiagnosticInterrupt.rawValue,
                                    reporting: self.invocationsReporting.sendDiagnosticInterrupt,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the StartInstances operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated StartInstancesRequest object being passed to this operation.
     - Returns: A future to the StartInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func startInstances(
            input: ElasticComputeCloudModel.StartInstancesRequest) -> EventLoopFuture<ElasticComputeCloudModel.StartInstancesResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: StartInstancesOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.startInstances.rawValue,
                                 reporting: self.invocationsReporting.startInstances,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the StartNetworkInsightsAnalysis operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated StartNetworkInsightsAnalysisRequest object being passed to this operation.
     - Returns: A future to the StartNetworkInsightsAnalysisResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func startNetworkInsightsAnalysis(
            input: ElasticComputeCloudModel.StartNetworkInsightsAnalysisRequest) -> EventLoopFuture<ElasticComputeCloudModel.StartNetworkInsightsAnalysisResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: StartNetworkInsightsAnalysisOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.startNetworkInsightsAnalysis.rawValue,
                                 reporting: self.invocationsReporting.startNetworkInsightsAnalysis,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the StartVpcEndpointServicePrivateDnsVerification operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated StartVpcEndpointServicePrivateDnsVerificationRequest object being passed to this operation.
     - Returns: A future to the StartVpcEndpointServicePrivateDnsVerificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func startVpcEndpointServicePrivateDnsVerification(
            input: ElasticComputeCloudModel.StartVpcEndpointServicePrivateDnsVerificationRequest) -> EventLoopFuture<ElasticComputeCloudModel.StartVpcEndpointServicePrivateDnsVerificationResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: StartVpcEndpointServicePrivateDnsVerificationOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.startVpcEndpointServicePrivateDnsVerification.rawValue,
                                 reporting: self.invocationsReporting.startVpcEndpointServicePrivateDnsVerification,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the StopInstances operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated StopInstancesRequest object being passed to this operation.
     - Returns: A future to the StopInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func stopInstances(
            input: ElasticComputeCloudModel.StopInstancesRequest) -> EventLoopFuture<ElasticComputeCloudModel.StopInstancesResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: StopInstancesOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.stopInstances.rawValue,
                                 reporting: self.invocationsReporting.stopInstances,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the TerminateClientVpnConnections operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated TerminateClientVpnConnectionsRequest object being passed to this operation.
     - Returns: A future to the TerminateClientVpnConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func terminateClientVpnConnections(
            input: ElasticComputeCloudModel.TerminateClientVpnConnectionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.TerminateClientVpnConnectionsResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: TerminateClientVpnConnectionsOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.terminateClientVpnConnections.rawValue,
                                 reporting: self.invocationsReporting.terminateClientVpnConnections,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the TerminateInstances operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated TerminateInstancesRequest object being passed to this operation.
     - Returns: A future to the TerminateInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func terminateInstances(
            input: ElasticComputeCloudModel.TerminateInstancesRequest) -> EventLoopFuture<ElasticComputeCloudModel.TerminateInstancesResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: TerminateInstancesOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.terminateInstances.rawValue,
                                 reporting: self.invocationsReporting.terminateInstances,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the UnassignIpv6Addresses operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UnassignIpv6AddressesRequest object being passed to this operation.
     - Returns: A future to the UnassignIpv6AddressesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func unassignIpv6Addresses(
            input: ElasticComputeCloudModel.UnassignIpv6AddressesRequest) -> EventLoopFuture<ElasticComputeCloudModel.UnassignIpv6AddressesResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: UnassignIpv6AddressesOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.unassignIpv6Addresses.rawValue,
                                 reporting: self.invocationsReporting.unassignIpv6Addresses,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the UnassignPrivateIpAddresses operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UnassignPrivateIpAddressesRequest object being passed to this operation.
     */
    public func unassignPrivateIpAddresses(
            input: ElasticComputeCloudModel.UnassignPrivateIpAddressesRequest) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: UnassignPrivateIpAddressesOperationHTTPRequestInput(encodable: input),
                                    action: ElasticComputeCloudModelOperations.unassignPrivateIpAddresses.rawValue,
                                    reporting: self.invocationsReporting.unassignPrivateIpAddresses,
                                    errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the UnmonitorInstances operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UnmonitorInstancesRequest object being passed to this operation.
     - Returns: A future to the UnmonitorInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func unmonitorInstances(
            input: ElasticComputeCloudModel.UnmonitorInstancesRequest) -> EventLoopFuture<ElasticComputeCloudModel.UnmonitorInstancesResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: UnmonitorInstancesOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.unmonitorInstances.rawValue,
                                 reporting: self.invocationsReporting.unmonitorInstances,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the UpdateSecurityGroupRuleDescriptionsEgress operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UpdateSecurityGroupRuleDescriptionsEgressRequest object being passed to this operation.
     - Returns: A future to the UpdateSecurityGroupRuleDescriptionsEgressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func updateSecurityGroupRuleDescriptionsEgress(
            input: ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsEgressRequest) -> EventLoopFuture<ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsEgressResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: UpdateSecurityGroupRuleDescriptionsEgressOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.updateSecurityGroupRuleDescriptionsEgress.rawValue,
                                 reporting: self.invocationsReporting.updateSecurityGroupRuleDescriptionsEgress,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the UpdateSecurityGroupRuleDescriptionsIngress operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UpdateSecurityGroupRuleDescriptionsIngressRequest object being passed to this operation.
     - Returns: A future to the UpdateSecurityGroupRuleDescriptionsIngressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func updateSecurityGroupRuleDescriptionsIngress(
            input: ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsIngressRequest) -> EventLoopFuture<ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsIngressResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: UpdateSecurityGroupRuleDescriptionsIngressOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.updateSecurityGroupRuleDescriptionsIngress.rawValue,
                                 reporting: self.invocationsReporting.updateSecurityGroupRuleDescriptionsIngress,
                                 errorType: ElasticComputeCloudError.self)
    }

    /**
     Invokes the WithdrawByoipCidr operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated WithdrawByoipCidrRequest object being passed to this operation.
     - Returns: A future to the WithdrawByoipCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func withdrawByoipCidr(
            input: ElasticComputeCloudModel.WithdrawByoipCidrRequest) -> EventLoopFuture<ElasticComputeCloudModel.WithdrawByoipCidrResult> {
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: WithdrawByoipCidrOperationHTTPRequestInput(encodable: input),
                                 action: ElasticComputeCloudModelOperations.withdrawByoipCidr.rawValue,
                                 reporting: self.invocationsReporting.withdrawByoipCidr,
                                 errorType: ElasticComputeCloudError.self)
    }
}
