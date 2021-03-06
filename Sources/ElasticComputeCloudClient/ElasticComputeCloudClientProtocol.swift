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
// ElasticComputeCloudClientProtocol.swift
// ElasticComputeCloudClient
//

import Foundation
import ElasticComputeCloudModel
import SmokeAWSCore
import SmokeHTTPClient
import NIO

/**
 Client Protocol for the ElasticComputeCloud service.
 */
public protocol ElasticComputeCloudClientProtocol {
    typealias AcceptReservedInstancesExchangeQuoteEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.AcceptReservedInstancesExchangeQuoteRequest) -> EventLoopFuture<ElasticComputeCloudModel.AcceptReservedInstancesExchangeQuoteResult>
    typealias AcceptTransitGatewayMulticastDomainAssociationsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.AcceptTransitGatewayMulticastDomainAssociationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.AcceptTransitGatewayMulticastDomainAssociationsResult>
    typealias AcceptTransitGatewayPeeringAttachmentEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.AcceptTransitGatewayPeeringAttachmentRequest) -> EventLoopFuture<ElasticComputeCloudModel.AcceptTransitGatewayPeeringAttachmentResult>
    typealias AcceptTransitGatewayVpcAttachmentEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.AcceptTransitGatewayVpcAttachmentRequest) -> EventLoopFuture<ElasticComputeCloudModel.AcceptTransitGatewayVpcAttachmentResult>
    typealias AcceptVpcEndpointConnectionsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.AcceptVpcEndpointConnectionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.AcceptVpcEndpointConnectionsResult>
    typealias AcceptVpcPeeringConnectionEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.AcceptVpcPeeringConnectionRequest) -> EventLoopFuture<ElasticComputeCloudModel.AcceptVpcPeeringConnectionResult>
    typealias AdvertiseByoipCidrEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.AdvertiseByoipCidrRequest) -> EventLoopFuture<ElasticComputeCloudModel.AdvertiseByoipCidrResult>
    typealias AllocateAddressEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.AllocateAddressRequest) -> EventLoopFuture<ElasticComputeCloudModel.AllocateAddressResult>
    typealias AllocateHostsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.AllocateHostsRequest) -> EventLoopFuture<ElasticComputeCloudModel.AllocateHostsResult>
    typealias ApplySecurityGroupsToClientVpnTargetNetworkEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ApplySecurityGroupsToClientVpnTargetNetworkRequest) -> EventLoopFuture<ElasticComputeCloudModel.ApplySecurityGroupsToClientVpnTargetNetworkResult>
    typealias AssignIpv6AddressesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.AssignIpv6AddressesRequest) -> EventLoopFuture<ElasticComputeCloudModel.AssignIpv6AddressesResult>
    typealias AssignPrivateIpAddressesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.AssignPrivateIpAddressesRequest) -> EventLoopFuture<ElasticComputeCloudModel.AssignPrivateIpAddressesResult>
    typealias AssociateAddressEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.AssociateAddressRequest) -> EventLoopFuture<ElasticComputeCloudModel.AssociateAddressResult>
    typealias AssociateClientVpnTargetNetworkEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.AssociateClientVpnTargetNetworkRequest) -> EventLoopFuture<ElasticComputeCloudModel.AssociateClientVpnTargetNetworkResult>
    typealias AssociateDhcpOptionsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.AssociateDhcpOptionsRequest) -> EventLoopFuture<Void>
    typealias AssociateEnclaveCertificateIamRoleEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.AssociateEnclaveCertificateIamRoleRequest) -> EventLoopFuture<ElasticComputeCloudModel.AssociateEnclaveCertificateIamRoleResult>
    typealias AssociateIamInstanceProfileEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.AssociateIamInstanceProfileRequest) -> EventLoopFuture<ElasticComputeCloudModel.AssociateIamInstanceProfileResult>
    typealias AssociateRouteTableEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.AssociateRouteTableRequest) -> EventLoopFuture<ElasticComputeCloudModel.AssociateRouteTableResult>
    typealias AssociateSubnetCidrBlockEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.AssociateSubnetCidrBlockRequest) -> EventLoopFuture<ElasticComputeCloudModel.AssociateSubnetCidrBlockResult>
    typealias AssociateTransitGatewayMulticastDomainEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.AssociateTransitGatewayMulticastDomainRequest) -> EventLoopFuture<ElasticComputeCloudModel.AssociateTransitGatewayMulticastDomainResult>
    typealias AssociateTransitGatewayRouteTableEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.AssociateTransitGatewayRouteTableRequest) -> EventLoopFuture<ElasticComputeCloudModel.AssociateTransitGatewayRouteTableResult>
    typealias AssociateVpcCidrBlockEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.AssociateVpcCidrBlockRequest) -> EventLoopFuture<ElasticComputeCloudModel.AssociateVpcCidrBlockResult>
    typealias AttachClassicLinkVpcEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.AttachClassicLinkVpcRequest) -> EventLoopFuture<ElasticComputeCloudModel.AttachClassicLinkVpcResult>
    typealias AttachInternetGatewayEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.AttachInternetGatewayRequest) -> EventLoopFuture<Void>
    typealias AttachNetworkInterfaceEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.AttachNetworkInterfaceRequest) -> EventLoopFuture<ElasticComputeCloudModel.AttachNetworkInterfaceResult>
    typealias AttachVolumeEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.AttachVolumeRequest) -> EventLoopFuture<ElasticComputeCloudModel.VolumeAttachment>
    typealias AttachVpnGatewayEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.AttachVpnGatewayRequest) -> EventLoopFuture<ElasticComputeCloudModel.AttachVpnGatewayResult>
    typealias AuthorizeClientVpnIngressEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.AuthorizeClientVpnIngressRequest) -> EventLoopFuture<ElasticComputeCloudModel.AuthorizeClientVpnIngressResult>
    typealias AuthorizeSecurityGroupEgressEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.AuthorizeSecurityGroupEgressRequest) -> EventLoopFuture<Void>
    typealias AuthorizeSecurityGroupIngressEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.AuthorizeSecurityGroupIngressRequest) -> EventLoopFuture<Void>
    typealias BundleInstanceEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.BundleInstanceRequest) -> EventLoopFuture<ElasticComputeCloudModel.BundleInstanceResult>
    typealias CancelBundleTaskEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CancelBundleTaskRequest) -> EventLoopFuture<ElasticComputeCloudModel.CancelBundleTaskResult>
    typealias CancelCapacityReservationEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CancelCapacityReservationRequest) -> EventLoopFuture<ElasticComputeCloudModel.CancelCapacityReservationResult>
    typealias CancelConversionTaskEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CancelConversionRequest) -> EventLoopFuture<Void>
    typealias CancelExportTaskEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CancelExportTaskRequest) -> EventLoopFuture<Void>
    typealias CancelImportTaskEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CancelImportTaskRequest) -> EventLoopFuture<ElasticComputeCloudModel.CancelImportTaskResult>
    typealias CancelReservedInstancesListingEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CancelReservedInstancesListingRequest) -> EventLoopFuture<ElasticComputeCloudModel.CancelReservedInstancesListingResult>
    typealias CancelSpotFleetRequestsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CancelSpotFleetRequestsRequest) -> EventLoopFuture<ElasticComputeCloudModel.CancelSpotFleetRequestsResponse>
    typealias CancelSpotInstanceRequestsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CancelSpotInstanceRequestsRequest) -> EventLoopFuture<ElasticComputeCloudModel.CancelSpotInstanceRequestsResult>
    typealias ConfirmProductInstanceEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ConfirmProductInstanceRequest) -> EventLoopFuture<ElasticComputeCloudModel.ConfirmProductInstanceResult>
    typealias CopyFpgaImageEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CopyFpgaImageRequest) -> EventLoopFuture<ElasticComputeCloudModel.CopyFpgaImageResult>
    typealias CopyImageEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CopyImageRequest) -> EventLoopFuture<ElasticComputeCloudModel.CopyImageResult>
    typealias CopySnapshotEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CopySnapshotRequest) -> EventLoopFuture<ElasticComputeCloudModel.CopySnapshotResult>
    typealias CreateCapacityReservationEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateCapacityReservationRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateCapacityReservationResult>
    typealias CreateCarrierGatewayEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateCarrierGatewayRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateCarrierGatewayResult>
    typealias CreateClientVpnEndpointEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateClientVpnEndpointRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateClientVpnEndpointResult>
    typealias CreateClientVpnRouteEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateClientVpnRouteRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateClientVpnRouteResult>
    typealias CreateCustomerGatewayEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateCustomerGatewayRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateCustomerGatewayResult>
    typealias CreateDefaultSubnetEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateDefaultSubnetRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateDefaultSubnetResult>
    typealias CreateDefaultVpcEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateDefaultVpcRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateDefaultVpcResult>
    typealias CreateDhcpOptionsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateDhcpOptionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateDhcpOptionsResult>
    typealias CreateEgressOnlyInternetGatewayEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateEgressOnlyInternetGatewayRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateEgressOnlyInternetGatewayResult>
    typealias CreateFleetEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateFleetRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateFleetResult>
    typealias CreateFlowLogsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateFlowLogsRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateFlowLogsResult>
    typealias CreateFpgaImageEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateFpgaImageRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateFpgaImageResult>
    typealias CreateImageEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateImageRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateImageResult>
    typealias CreateInstanceExportTaskEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateInstanceExportTaskRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateInstanceExportTaskResult>
    typealias CreateInternetGatewayEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateInternetGatewayRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateInternetGatewayResult>
    typealias CreateKeyPairEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateKeyPairRequest) -> EventLoopFuture<ElasticComputeCloudModel.KeyPair>
    typealias CreateLaunchTemplateEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateLaunchTemplateRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateLaunchTemplateResult>
    typealias CreateLaunchTemplateVersionEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateLaunchTemplateVersionRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateLaunchTemplateVersionResult>
    typealias CreateLocalGatewayRouteEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateLocalGatewayRouteRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateLocalGatewayRouteResult>
    typealias CreateLocalGatewayRouteTableVpcAssociationEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateLocalGatewayRouteTableVpcAssociationRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateLocalGatewayRouteTableVpcAssociationResult>
    typealias CreateManagedPrefixListEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateManagedPrefixListRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateManagedPrefixListResult>
    typealias CreateNatGatewayEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateNatGatewayRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateNatGatewayResult>
    typealias CreateNetworkAclEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateNetworkAclRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateNetworkAclResult>
    typealias CreateNetworkAclEntryEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateNetworkAclEntryRequest) -> EventLoopFuture<Void>
    typealias CreateNetworkInsightsPathEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateNetworkInsightsPathRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateNetworkInsightsPathResult>
    typealias CreateNetworkInterfaceEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateNetworkInterfaceRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateNetworkInterfaceResult>
    typealias CreateNetworkInterfacePermissionEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateNetworkInterfacePermissionRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateNetworkInterfacePermissionResult>
    typealias CreatePlacementGroupEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreatePlacementGroupRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreatePlacementGroupResult>
    typealias CreateReservedInstancesListingEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateReservedInstancesListingRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateReservedInstancesListingResult>
    typealias CreateRouteEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateRouteRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateRouteResult>
    typealias CreateRouteTableEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateRouteTableRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateRouteTableResult>
    typealias CreateSecurityGroupEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateSecurityGroupRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateSecurityGroupResult>
    typealias CreateSnapshotEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateSnapshotRequest) -> EventLoopFuture<ElasticComputeCloudModel.Snapshot>
    typealias CreateSnapshotsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateSnapshotsRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateSnapshotsResult>
    typealias CreateSpotDatafeedSubscriptionEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateSpotDatafeedSubscriptionRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateSpotDatafeedSubscriptionResult>
    typealias CreateSubnetEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateSubnetRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateSubnetResult>
    typealias CreateTagsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateTagsRequest) -> EventLoopFuture<Void>
    typealias CreateTrafficMirrorFilterEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateTrafficMirrorFilterRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateTrafficMirrorFilterResult>
    typealias CreateTrafficMirrorFilterRuleEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateTrafficMirrorFilterRuleRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateTrafficMirrorFilterRuleResult>
    typealias CreateTrafficMirrorSessionEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateTrafficMirrorSessionRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateTrafficMirrorSessionResult>
    typealias CreateTrafficMirrorTargetEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateTrafficMirrorTargetRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateTrafficMirrorTargetResult>
    typealias CreateTransitGatewayEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateTransitGatewayRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateTransitGatewayResult>
    typealias CreateTransitGatewayConnectEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateTransitGatewayConnectRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateTransitGatewayConnectResult>
    typealias CreateTransitGatewayConnectPeerEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateTransitGatewayConnectPeerRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateTransitGatewayConnectPeerResult>
    typealias CreateTransitGatewayMulticastDomainEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateTransitGatewayMulticastDomainRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateTransitGatewayMulticastDomainResult>
    typealias CreateTransitGatewayPeeringAttachmentEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateTransitGatewayPeeringAttachmentRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateTransitGatewayPeeringAttachmentResult>
    typealias CreateTransitGatewayPrefixListReferenceEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateTransitGatewayPrefixListReferenceRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateTransitGatewayPrefixListReferenceResult>
    typealias CreateTransitGatewayRouteEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateTransitGatewayRouteRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateTransitGatewayRouteResult>
    typealias CreateTransitGatewayRouteTableEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateTransitGatewayRouteTableRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateTransitGatewayRouteTableResult>
    typealias CreateTransitGatewayVpcAttachmentEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateTransitGatewayVpcAttachmentRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateTransitGatewayVpcAttachmentResult>
    typealias CreateVolumeEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateVolumeRequest) -> EventLoopFuture<ElasticComputeCloudModel.Volume>
    typealias CreateVpcEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateVpcRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateVpcResult>
    typealias CreateVpcEndpointEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateVpcEndpointRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateVpcEndpointResult>
    typealias CreateVpcEndpointConnectionNotificationEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateVpcEndpointConnectionNotificationRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateVpcEndpointConnectionNotificationResult>
    typealias CreateVpcEndpointServiceConfigurationEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateVpcEndpointServiceConfigurationRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateVpcEndpointServiceConfigurationResult>
    typealias CreateVpcPeeringConnectionEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateVpcPeeringConnectionRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateVpcPeeringConnectionResult>
    typealias CreateVpnConnectionEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateVpnConnectionRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateVpnConnectionResult>
    typealias CreateVpnConnectionRouteEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateVpnConnectionRouteRequest) -> EventLoopFuture<Void>
    typealias CreateVpnGatewayEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.CreateVpnGatewayRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateVpnGatewayResult>
    typealias DeleteCarrierGatewayEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteCarrierGatewayRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteCarrierGatewayResult>
    typealias DeleteClientVpnEndpointEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteClientVpnEndpointRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteClientVpnEndpointResult>
    typealias DeleteClientVpnRouteEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteClientVpnRouteRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteClientVpnRouteResult>
    typealias DeleteCustomerGatewayEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteCustomerGatewayRequest) -> EventLoopFuture<Void>
    typealias DeleteDhcpOptionsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteDhcpOptionsRequest) -> EventLoopFuture<Void>
    typealias DeleteEgressOnlyInternetGatewayEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteEgressOnlyInternetGatewayRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteEgressOnlyInternetGatewayResult>
    typealias DeleteFleetsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteFleetsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteFleetsResult>
    typealias DeleteFlowLogsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteFlowLogsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteFlowLogsResult>
    typealias DeleteFpgaImageEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteFpgaImageRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteFpgaImageResult>
    typealias DeleteInternetGatewayEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteInternetGatewayRequest) -> EventLoopFuture<Void>
    typealias DeleteKeyPairEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteKeyPairRequest) -> EventLoopFuture<Void>
    typealias DeleteLaunchTemplateEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteLaunchTemplateRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteLaunchTemplateResult>
    typealias DeleteLaunchTemplateVersionsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteLaunchTemplateVersionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteLaunchTemplateVersionsResult>
    typealias DeleteLocalGatewayRouteEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteLocalGatewayRouteRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteLocalGatewayRouteResult>
    typealias DeleteLocalGatewayRouteTableVpcAssociationEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteLocalGatewayRouteTableVpcAssociationRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteLocalGatewayRouteTableVpcAssociationResult>
    typealias DeleteManagedPrefixListEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteManagedPrefixListRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteManagedPrefixListResult>
    typealias DeleteNatGatewayEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteNatGatewayRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteNatGatewayResult>
    typealias DeleteNetworkAclEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteNetworkAclRequest) -> EventLoopFuture<Void>
    typealias DeleteNetworkAclEntryEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteNetworkAclEntryRequest) -> EventLoopFuture<Void>
    typealias DeleteNetworkInsightsAnalysisEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteNetworkInsightsAnalysisRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteNetworkInsightsAnalysisResult>
    typealias DeleteNetworkInsightsPathEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteNetworkInsightsPathRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteNetworkInsightsPathResult>
    typealias DeleteNetworkInterfaceEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteNetworkInterfaceRequest) -> EventLoopFuture<Void>
    typealias DeleteNetworkInterfacePermissionEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteNetworkInterfacePermissionRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteNetworkInterfacePermissionResult>
    typealias DeletePlacementGroupEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeletePlacementGroupRequest) -> EventLoopFuture<Void>
    typealias DeleteQueuedReservedInstancesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteQueuedReservedInstancesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteQueuedReservedInstancesResult>
    typealias DeleteRouteEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteRouteRequest) -> EventLoopFuture<Void>
    typealias DeleteRouteTableEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteRouteTableRequest) -> EventLoopFuture<Void>
    typealias DeleteSecurityGroupEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteSecurityGroupRequest) -> EventLoopFuture<Void>
    typealias DeleteSnapshotEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteSnapshotRequest) -> EventLoopFuture<Void>
    typealias DeleteSpotDatafeedSubscriptionEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteSpotDatafeedSubscriptionRequest) -> EventLoopFuture<Void>
    typealias DeleteSubnetEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteSubnetRequest) -> EventLoopFuture<Void>
    typealias DeleteTagsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteTagsRequest) -> EventLoopFuture<Void>
    typealias DeleteTrafficMirrorFilterEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteTrafficMirrorFilterRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteTrafficMirrorFilterResult>
    typealias DeleteTrafficMirrorFilterRuleEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteTrafficMirrorFilterRuleRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteTrafficMirrorFilterRuleResult>
    typealias DeleteTrafficMirrorSessionEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteTrafficMirrorSessionRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteTrafficMirrorSessionResult>
    typealias DeleteTrafficMirrorTargetEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteTrafficMirrorTargetRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteTrafficMirrorTargetResult>
    typealias DeleteTransitGatewayEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteTransitGatewayRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteTransitGatewayResult>
    typealias DeleteTransitGatewayConnectEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteTransitGatewayConnectRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteTransitGatewayConnectResult>
    typealias DeleteTransitGatewayConnectPeerEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteTransitGatewayConnectPeerRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteTransitGatewayConnectPeerResult>
    typealias DeleteTransitGatewayMulticastDomainEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteTransitGatewayMulticastDomainRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteTransitGatewayMulticastDomainResult>
    typealias DeleteTransitGatewayPeeringAttachmentEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteTransitGatewayPeeringAttachmentRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteTransitGatewayPeeringAttachmentResult>
    typealias DeleteTransitGatewayPrefixListReferenceEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteTransitGatewayPrefixListReferenceRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteTransitGatewayPrefixListReferenceResult>
    typealias DeleteTransitGatewayRouteEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteTransitGatewayRouteRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteTransitGatewayRouteResult>
    typealias DeleteTransitGatewayRouteTableEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteTransitGatewayRouteTableRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteTransitGatewayRouteTableResult>
    typealias DeleteTransitGatewayVpcAttachmentEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteTransitGatewayVpcAttachmentRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteTransitGatewayVpcAttachmentResult>
    typealias DeleteVolumeEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteVolumeRequest) -> EventLoopFuture<Void>
    typealias DeleteVpcEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteVpcRequest) -> EventLoopFuture<Void>
    typealias DeleteVpcEndpointConnectionNotificationsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteVpcEndpointConnectionNotificationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteVpcEndpointConnectionNotificationsResult>
    typealias DeleteVpcEndpointServiceConfigurationsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteVpcEndpointServiceConfigurationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteVpcEndpointServiceConfigurationsResult>
    typealias DeleteVpcEndpointsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteVpcEndpointsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteVpcEndpointsResult>
    typealias DeleteVpcPeeringConnectionEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteVpcPeeringConnectionRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteVpcPeeringConnectionResult>
    typealias DeleteVpnConnectionEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteVpnConnectionRequest) -> EventLoopFuture<Void>
    typealias DeleteVpnConnectionRouteEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteVpnConnectionRouteRequest) -> EventLoopFuture<Void>
    typealias DeleteVpnGatewayEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeleteVpnGatewayRequest) -> EventLoopFuture<Void>
    typealias DeprovisionByoipCidrEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeprovisionByoipCidrRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeprovisionByoipCidrResult>
    typealias DeregisterImageEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeregisterImageRequest) -> EventLoopFuture<Void>
    typealias DeregisterInstanceEventNotificationAttributesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeregisterInstanceEventNotificationAttributesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeregisterInstanceEventNotificationAttributesResult>
    typealias DeregisterTransitGatewayMulticastGroupMembersEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupMembersRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupMembersResult>
    typealias DeregisterTransitGatewayMulticastGroupSourcesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupSourcesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupSourcesResult>
    typealias DescribeAccountAttributesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeAccountAttributesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeAccountAttributesResult>
    typealias DescribeAddressesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeAddressesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeAddressesResult>
    typealias DescribeAddressesAttributeEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeAddressesAttributeRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeAddressesAttributeResult>
    typealias DescribeAggregateIdFormatEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeAggregateIdFormatRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeAggregateIdFormatResult>
    typealias DescribeAvailabilityZonesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeAvailabilityZonesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeAvailabilityZonesResult>
    typealias DescribeBundleTasksEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeBundleTasksRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeBundleTasksResult>
    typealias DescribeByoipCidrsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeByoipCidrsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeByoipCidrsResult>
    typealias DescribeCapacityReservationsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeCapacityReservationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeCapacityReservationsResult>
    typealias DescribeCarrierGatewaysEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeCarrierGatewaysRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeCarrierGatewaysResult>
    typealias DescribeClassicLinkInstancesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeClassicLinkInstancesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeClassicLinkInstancesResult>
    typealias DescribeClientVpnAuthorizationRulesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeClientVpnAuthorizationRulesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeClientVpnAuthorizationRulesResult>
    typealias DescribeClientVpnConnectionsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeClientVpnConnectionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeClientVpnConnectionsResult>
    typealias DescribeClientVpnEndpointsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeClientVpnEndpointsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeClientVpnEndpointsResult>
    typealias DescribeClientVpnRoutesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeClientVpnRoutesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeClientVpnRoutesResult>
    typealias DescribeClientVpnTargetNetworksEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeClientVpnTargetNetworksRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeClientVpnTargetNetworksResult>
    typealias DescribeCoipPoolsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeCoipPoolsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeCoipPoolsResult>
    typealias DescribeConversionTasksEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeConversionTasksRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeConversionTasksResult>
    typealias DescribeCustomerGatewaysEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeCustomerGatewaysRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeCustomerGatewaysResult>
    typealias DescribeDhcpOptionsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeDhcpOptionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeDhcpOptionsResult>
    typealias DescribeEgressOnlyInternetGatewaysEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysResult>
    typealias DescribeElasticGpusEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeElasticGpusRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeElasticGpusResult>
    typealias DescribeExportImageTasksEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeExportImageTasksRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeExportImageTasksResult>
    typealias DescribeExportTasksEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeExportTasksRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeExportTasksResult>
    typealias DescribeFastSnapshotRestoresEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeFastSnapshotRestoresRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeFastSnapshotRestoresResult>
    typealias DescribeFleetHistoryEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeFleetHistoryRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeFleetHistoryResult>
    typealias DescribeFleetInstancesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeFleetInstancesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeFleetInstancesResult>
    typealias DescribeFleetsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeFleetsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeFleetsResult>
    typealias DescribeFlowLogsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeFlowLogsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeFlowLogsResult>
    typealias DescribeFpgaImageAttributeEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeFpgaImageAttributeRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeFpgaImageAttributeResult>
    typealias DescribeFpgaImagesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeFpgaImagesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeFpgaImagesResult>
    typealias DescribeHostReservationOfferingsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeHostReservationOfferingsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeHostReservationOfferingsResult>
    typealias DescribeHostReservationsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeHostReservationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeHostReservationsResult>
    typealias DescribeHostsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeHostsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeHostsResult>
    typealias DescribeIamInstanceProfileAssociationsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsResult>
    typealias DescribeIdFormatEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeIdFormatRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeIdFormatResult>
    typealias DescribeIdentityIdFormatEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeIdentityIdFormatRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeIdentityIdFormatResult>
    typealias DescribeImageAttributeEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeImageAttributeRequest) -> EventLoopFuture<ElasticComputeCloudModel.ImageAttribute>
    typealias DescribeImagesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeImagesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeImagesResult>
    typealias DescribeImportImageTasksEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeImportImageTasksRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeImportImageTasksResult>
    typealias DescribeImportSnapshotTasksEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeImportSnapshotTasksRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeImportSnapshotTasksResult>
    typealias DescribeInstanceAttributeEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeInstanceAttributeRequest) -> EventLoopFuture<ElasticComputeCloudModel.InstanceAttribute>
    typealias DescribeInstanceCreditSpecificationsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsResult>
    typealias DescribeInstanceEventNotificationAttributesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeInstanceEventNotificationAttributesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeInstanceEventNotificationAttributesResult>
    typealias DescribeInstanceStatusEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeInstanceStatusRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeInstanceStatusResult>
    typealias DescribeInstanceTypeOfferingsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeInstanceTypeOfferingsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeInstanceTypeOfferingsResult>
    typealias DescribeInstanceTypesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeInstanceTypesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeInstanceTypesResult>
    typealias DescribeInstancesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeInstancesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeInstancesResult>
    typealias DescribeInternetGatewaysEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeInternetGatewaysRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeInternetGatewaysResult>
    typealias DescribeIpv6PoolsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeIpv6PoolsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeIpv6PoolsResult>
    typealias DescribeKeyPairsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeKeyPairsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeKeyPairsResult>
    typealias DescribeLaunchTemplateVersionsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeLaunchTemplateVersionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeLaunchTemplateVersionsResult>
    typealias DescribeLaunchTemplatesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeLaunchTemplatesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeLaunchTemplatesResult>
    typealias DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult>
    typealias DescribeLocalGatewayRouteTableVpcAssociationsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVpcAssociationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVpcAssociationsResult>
    typealias DescribeLocalGatewayRouteTablesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeLocalGatewayRouteTablesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeLocalGatewayRouteTablesResult>
    typealias DescribeLocalGatewayVirtualInterfaceGroupsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfaceGroupsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfaceGroupsResult>
    typealias DescribeLocalGatewayVirtualInterfacesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfacesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfacesResult>
    typealias DescribeLocalGatewaysEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeLocalGatewaysRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeLocalGatewaysResult>
    typealias DescribeManagedPrefixListsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeManagedPrefixListsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeManagedPrefixListsResult>
    typealias DescribeMovingAddressesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeMovingAddressesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeMovingAddressesResult>
    typealias DescribeNatGatewaysEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeNatGatewaysRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeNatGatewaysResult>
    typealias DescribeNetworkAclsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeNetworkAclsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeNetworkAclsResult>
    typealias DescribeNetworkInsightsAnalysesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeNetworkInsightsAnalysesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeNetworkInsightsAnalysesResult>
    typealias DescribeNetworkInsightsPathsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeNetworkInsightsPathsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeNetworkInsightsPathsResult>
    typealias DescribeNetworkInterfaceAttributeEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeNetworkInterfaceAttributeRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeNetworkInterfaceAttributeResult>
    typealias DescribeNetworkInterfacePermissionsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsResult>
    typealias DescribeNetworkInterfacesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeNetworkInterfacesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeNetworkInterfacesResult>
    typealias DescribePlacementGroupsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribePlacementGroupsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribePlacementGroupsResult>
    typealias DescribePrefixListsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribePrefixListsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribePrefixListsResult>
    typealias DescribePrincipalIdFormatEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribePrincipalIdFormatRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribePrincipalIdFormatResult>
    typealias DescribePublicIpv4PoolsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribePublicIpv4PoolsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribePublicIpv4PoolsResult>
    typealias DescribeRegionsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeRegionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeRegionsResult>
    typealias DescribeReservedInstancesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeReservedInstancesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeReservedInstancesResult>
    typealias DescribeReservedInstancesListingsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeReservedInstancesListingsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeReservedInstancesListingsResult>
    typealias DescribeReservedInstancesModificationsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeReservedInstancesModificationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeReservedInstancesModificationsResult>
    typealias DescribeReservedInstancesOfferingsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeReservedInstancesOfferingsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeReservedInstancesOfferingsResult>
    typealias DescribeRouteTablesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeRouteTablesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeRouteTablesResult>
    typealias DescribeScheduledInstanceAvailabilityEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityResult>
    typealias DescribeScheduledInstancesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeScheduledInstancesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeScheduledInstancesResult>
    typealias DescribeSecurityGroupReferencesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeSecurityGroupReferencesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeSecurityGroupReferencesResult>
    typealias DescribeSecurityGroupsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeSecurityGroupsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeSecurityGroupsResult>
    typealias DescribeSnapshotAttributeEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeSnapshotAttributeRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeSnapshotAttributeResult>
    typealias DescribeSnapshotsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeSnapshotsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeSnapshotsResult>
    typealias DescribeSpotDatafeedSubscriptionEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeSpotDatafeedSubscriptionRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeSpotDatafeedSubscriptionResult>
    typealias DescribeSpotFleetInstancesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeSpotFleetInstancesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeSpotFleetInstancesResponse>
    typealias DescribeSpotFleetRequestHistoryEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryResponse>
    typealias DescribeSpotFleetRequestsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeSpotFleetRequestsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeSpotFleetRequestsResponse>
    typealias DescribeSpotInstanceRequestsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeSpotInstanceRequestsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeSpotInstanceRequestsResult>
    typealias DescribeSpotPriceHistoryEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeSpotPriceHistoryRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeSpotPriceHistoryResult>
    typealias DescribeStaleSecurityGroupsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeStaleSecurityGroupsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeStaleSecurityGroupsResult>
    typealias DescribeSubnetsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeSubnetsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeSubnetsResult>
    typealias DescribeTagsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeTagsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeTagsResult>
    typealias DescribeTrafficMirrorFiltersEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeTrafficMirrorFiltersRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeTrafficMirrorFiltersResult>
    typealias DescribeTrafficMirrorSessionsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeTrafficMirrorSessionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeTrafficMirrorSessionsResult>
    typealias DescribeTrafficMirrorTargetsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeTrafficMirrorTargetsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeTrafficMirrorTargetsResult>
    typealias DescribeTransitGatewayAttachmentsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeTransitGatewayAttachmentsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeTransitGatewayAttachmentsResult>
    typealias DescribeTransitGatewayConnectPeersEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeTransitGatewayConnectPeersRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeTransitGatewayConnectPeersResult>
    typealias DescribeTransitGatewayConnectsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeTransitGatewayConnectsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeTransitGatewayConnectsResult>
    typealias DescribeTransitGatewayMulticastDomainsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeTransitGatewayMulticastDomainsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeTransitGatewayMulticastDomainsResult>
    typealias DescribeTransitGatewayPeeringAttachmentsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeTransitGatewayPeeringAttachmentsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeTransitGatewayPeeringAttachmentsResult>
    typealias DescribeTransitGatewayRouteTablesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeTransitGatewayRouteTablesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeTransitGatewayRouteTablesResult>
    typealias DescribeTransitGatewayVpcAttachmentsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeTransitGatewayVpcAttachmentsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeTransitGatewayVpcAttachmentsResult>
    typealias DescribeTransitGatewaysEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeTransitGatewaysRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeTransitGatewaysResult>
    typealias DescribeVolumeAttributeEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeVolumeAttributeRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeVolumeAttributeResult>
    typealias DescribeVolumeStatusEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeVolumeStatusRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeVolumeStatusResult>
    typealias DescribeVolumesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeVolumesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeVolumesResult>
    typealias DescribeVolumesModificationsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeVolumesModificationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeVolumesModificationsResult>
    typealias DescribeVpcAttributeEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeVpcAttributeRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeVpcAttributeResult>
    typealias DescribeVpcClassicLinkEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeVpcClassicLinkRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeVpcClassicLinkResult>
    typealias DescribeVpcClassicLinkDnsSupportEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportResult>
    typealias DescribeVpcEndpointConnectionNotificationsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeVpcEndpointConnectionNotificationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeVpcEndpointConnectionNotificationsResult>
    typealias DescribeVpcEndpointConnectionsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeVpcEndpointConnectionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeVpcEndpointConnectionsResult>
    typealias DescribeVpcEndpointServiceConfigurationsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeVpcEndpointServiceConfigurationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeVpcEndpointServiceConfigurationsResult>
    typealias DescribeVpcEndpointServicePermissionsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeVpcEndpointServicePermissionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeVpcEndpointServicePermissionsResult>
    typealias DescribeVpcEndpointServicesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeVpcEndpointServicesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeVpcEndpointServicesResult>
    typealias DescribeVpcEndpointsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeVpcEndpointsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeVpcEndpointsResult>
    typealias DescribeVpcPeeringConnectionsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeVpcPeeringConnectionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeVpcPeeringConnectionsResult>
    typealias DescribeVpcsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeVpcsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeVpcsResult>
    typealias DescribeVpnConnectionsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeVpnConnectionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeVpnConnectionsResult>
    typealias DescribeVpnGatewaysEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DescribeVpnGatewaysRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeVpnGatewaysResult>
    typealias DetachClassicLinkVpcEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DetachClassicLinkVpcRequest) -> EventLoopFuture<ElasticComputeCloudModel.DetachClassicLinkVpcResult>
    typealias DetachInternetGatewayEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DetachInternetGatewayRequest) -> EventLoopFuture<Void>
    typealias DetachNetworkInterfaceEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DetachNetworkInterfaceRequest) -> EventLoopFuture<Void>
    typealias DetachVolumeEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DetachVolumeRequest) -> EventLoopFuture<ElasticComputeCloudModel.VolumeAttachment>
    typealias DetachVpnGatewayEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DetachVpnGatewayRequest) -> EventLoopFuture<Void>
    typealias DisableEbsEncryptionByDefaultEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DisableEbsEncryptionByDefaultRequest) -> EventLoopFuture<ElasticComputeCloudModel.DisableEbsEncryptionByDefaultResult>
    typealias DisableFastSnapshotRestoresEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DisableFastSnapshotRestoresRequest) -> EventLoopFuture<ElasticComputeCloudModel.DisableFastSnapshotRestoresResult>
    typealias DisableTransitGatewayRouteTablePropagationEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DisableTransitGatewayRouteTablePropagationRequest) -> EventLoopFuture<ElasticComputeCloudModel.DisableTransitGatewayRouteTablePropagationResult>
    typealias DisableVgwRoutePropagationEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DisableVgwRoutePropagationRequest) -> EventLoopFuture<Void>
    typealias DisableVpcClassicLinkEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DisableVpcClassicLinkRequest) -> EventLoopFuture<ElasticComputeCloudModel.DisableVpcClassicLinkResult>
    typealias DisableVpcClassicLinkDnsSupportEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DisableVpcClassicLinkDnsSupportRequest) -> EventLoopFuture<ElasticComputeCloudModel.DisableVpcClassicLinkDnsSupportResult>
    typealias DisassociateAddressEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DisassociateAddressRequest) -> EventLoopFuture<Void>
    typealias DisassociateClientVpnTargetNetworkEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DisassociateClientVpnTargetNetworkRequest) -> EventLoopFuture<ElasticComputeCloudModel.DisassociateClientVpnTargetNetworkResult>
    typealias DisassociateEnclaveCertificateIamRoleEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DisassociateEnclaveCertificateIamRoleRequest) -> EventLoopFuture<ElasticComputeCloudModel.DisassociateEnclaveCertificateIamRoleResult>
    typealias DisassociateIamInstanceProfileEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DisassociateIamInstanceProfileRequest) -> EventLoopFuture<ElasticComputeCloudModel.DisassociateIamInstanceProfileResult>
    typealias DisassociateRouteTableEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DisassociateRouteTableRequest) -> EventLoopFuture<Void>
    typealias DisassociateSubnetCidrBlockEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DisassociateSubnetCidrBlockRequest) -> EventLoopFuture<ElasticComputeCloudModel.DisassociateSubnetCidrBlockResult>
    typealias DisassociateTransitGatewayMulticastDomainEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DisassociateTransitGatewayMulticastDomainRequest) -> EventLoopFuture<ElasticComputeCloudModel.DisassociateTransitGatewayMulticastDomainResult>
    typealias DisassociateTransitGatewayRouteTableEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DisassociateTransitGatewayRouteTableRequest) -> EventLoopFuture<ElasticComputeCloudModel.DisassociateTransitGatewayRouteTableResult>
    typealias DisassociateVpcCidrBlockEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.DisassociateVpcCidrBlockRequest) -> EventLoopFuture<ElasticComputeCloudModel.DisassociateVpcCidrBlockResult>
    typealias EnableEbsEncryptionByDefaultEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.EnableEbsEncryptionByDefaultRequest) -> EventLoopFuture<ElasticComputeCloudModel.EnableEbsEncryptionByDefaultResult>
    typealias EnableFastSnapshotRestoresEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.EnableFastSnapshotRestoresRequest) -> EventLoopFuture<ElasticComputeCloudModel.EnableFastSnapshotRestoresResult>
    typealias EnableTransitGatewayRouteTablePropagationEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.EnableTransitGatewayRouteTablePropagationRequest) -> EventLoopFuture<ElasticComputeCloudModel.EnableTransitGatewayRouteTablePropagationResult>
    typealias EnableVgwRoutePropagationEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.EnableVgwRoutePropagationRequest) -> EventLoopFuture<Void>
    typealias EnableVolumeIOEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.EnableVolumeIORequest) -> EventLoopFuture<Void>
    typealias EnableVpcClassicLinkEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.EnableVpcClassicLinkRequest) -> EventLoopFuture<ElasticComputeCloudModel.EnableVpcClassicLinkResult>
    typealias EnableVpcClassicLinkDnsSupportEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.EnableVpcClassicLinkDnsSupportRequest) -> EventLoopFuture<ElasticComputeCloudModel.EnableVpcClassicLinkDnsSupportResult>
    typealias ExportClientVpnClientCertificateRevocationListEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ExportClientVpnClientCertificateRevocationListRequest) -> EventLoopFuture<ElasticComputeCloudModel.ExportClientVpnClientCertificateRevocationListResult>
    typealias ExportClientVpnClientConfigurationEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ExportClientVpnClientConfigurationRequest) -> EventLoopFuture<ElasticComputeCloudModel.ExportClientVpnClientConfigurationResult>
    typealias ExportImageEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ExportImageRequest) -> EventLoopFuture<ElasticComputeCloudModel.ExportImageResult>
    typealias ExportTransitGatewayRoutesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ExportTransitGatewayRoutesRequest) -> EventLoopFuture<ElasticComputeCloudModel.ExportTransitGatewayRoutesResult>
    typealias GetAssociatedEnclaveCertificateIamRolesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.GetAssociatedEnclaveCertificateIamRolesRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetAssociatedEnclaveCertificateIamRolesResult>
    typealias GetAssociatedIpv6PoolCidrsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.GetAssociatedIpv6PoolCidrsRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetAssociatedIpv6PoolCidrsResult>
    typealias GetCapacityReservationUsageEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.GetCapacityReservationUsageRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetCapacityReservationUsageResult>
    typealias GetCoipPoolUsageEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.GetCoipPoolUsageRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetCoipPoolUsageResult>
    typealias GetConsoleOutputEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.GetConsoleOutputRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetConsoleOutputResult>
    typealias GetConsoleScreenshotEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.GetConsoleScreenshotRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetConsoleScreenshotResult>
    typealias GetDefaultCreditSpecificationEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.GetDefaultCreditSpecificationRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetDefaultCreditSpecificationResult>
    typealias GetEbsDefaultKmsKeyIdEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.GetEbsDefaultKmsKeyIdRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetEbsDefaultKmsKeyIdResult>
    typealias GetEbsEncryptionByDefaultEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.GetEbsEncryptionByDefaultRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetEbsEncryptionByDefaultResult>
    typealias GetGroupsForCapacityReservationEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.GetGroupsForCapacityReservationRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetGroupsForCapacityReservationResult>
    typealias GetHostReservationPurchasePreviewEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.GetHostReservationPurchasePreviewRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetHostReservationPurchasePreviewResult>
    typealias GetLaunchTemplateDataEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.GetLaunchTemplateDataRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetLaunchTemplateDataResult>
    typealias GetManagedPrefixListAssociationsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.GetManagedPrefixListAssociationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetManagedPrefixListAssociationsResult>
    typealias GetManagedPrefixListEntriesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.GetManagedPrefixListEntriesRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetManagedPrefixListEntriesResult>
    typealias GetPasswordDataEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.GetPasswordDataRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetPasswordDataResult>
    typealias GetReservedInstancesExchangeQuoteEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.GetReservedInstancesExchangeQuoteRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetReservedInstancesExchangeQuoteResult>
    typealias GetTransitGatewayAttachmentPropagationsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.GetTransitGatewayAttachmentPropagationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetTransitGatewayAttachmentPropagationsResult>
    typealias GetTransitGatewayMulticastDomainAssociationsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.GetTransitGatewayMulticastDomainAssociationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetTransitGatewayMulticastDomainAssociationsResult>
    typealias GetTransitGatewayPrefixListReferencesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.GetTransitGatewayPrefixListReferencesRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetTransitGatewayPrefixListReferencesResult>
    typealias GetTransitGatewayRouteTableAssociationsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.GetTransitGatewayRouteTableAssociationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetTransitGatewayRouteTableAssociationsResult>
    typealias GetTransitGatewayRouteTablePropagationsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.GetTransitGatewayRouteTablePropagationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetTransitGatewayRouteTablePropagationsResult>
    typealias ImportClientVpnClientCertificateRevocationListEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ImportClientVpnClientCertificateRevocationListRequest) -> EventLoopFuture<ElasticComputeCloudModel.ImportClientVpnClientCertificateRevocationListResult>
    typealias ImportImageEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ImportImageRequest) -> EventLoopFuture<ElasticComputeCloudModel.ImportImageResult>
    typealias ImportInstanceEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ImportInstanceRequest) -> EventLoopFuture<ElasticComputeCloudModel.ImportInstanceResult>
    typealias ImportKeyPairEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ImportKeyPairRequest) -> EventLoopFuture<ElasticComputeCloudModel.ImportKeyPairResult>
    typealias ImportSnapshotEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ImportSnapshotRequest) -> EventLoopFuture<ElasticComputeCloudModel.ImportSnapshotResult>
    typealias ImportVolumeEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ImportVolumeRequest) -> EventLoopFuture<ElasticComputeCloudModel.ImportVolumeResult>
    typealias ModifyAddressAttributeEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyAddressAttributeRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyAddressAttributeResult>
    typealias ModifyAvailabilityZoneGroupEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyAvailabilityZoneGroupRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyAvailabilityZoneGroupResult>
    typealias ModifyCapacityReservationEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyCapacityReservationRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyCapacityReservationResult>
    typealias ModifyClientVpnEndpointEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyClientVpnEndpointRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyClientVpnEndpointResult>
    typealias ModifyDefaultCreditSpecificationEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyDefaultCreditSpecificationRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyDefaultCreditSpecificationResult>
    typealias ModifyEbsDefaultKmsKeyIdEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyEbsDefaultKmsKeyIdRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyEbsDefaultKmsKeyIdResult>
    typealias ModifyFleetEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyFleetRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyFleetResult>
    typealias ModifyFpgaImageAttributeEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyFpgaImageAttributeRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyFpgaImageAttributeResult>
    typealias ModifyHostsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyHostsRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyHostsResult>
    typealias ModifyIdFormatEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyIdFormatRequest) -> EventLoopFuture<Void>
    typealias ModifyIdentityIdFormatEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyIdentityIdFormatRequest) -> EventLoopFuture<Void>
    typealias ModifyImageAttributeEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyImageAttributeRequest) -> EventLoopFuture<Void>
    typealias ModifyInstanceAttributeEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyInstanceAttributeRequest) -> EventLoopFuture<Void>
    typealias ModifyInstanceCapacityReservationAttributesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyInstanceCapacityReservationAttributesRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyInstanceCapacityReservationAttributesResult>
    typealias ModifyInstanceCreditSpecificationEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyInstanceCreditSpecificationRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyInstanceCreditSpecificationResult>
    typealias ModifyInstanceEventStartTimeEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyInstanceEventStartTimeRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyInstanceEventStartTimeResult>
    typealias ModifyInstanceMetadataOptionsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyInstanceMetadataOptionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyInstanceMetadataOptionsResult>
    typealias ModifyInstancePlacementEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyInstancePlacementRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyInstancePlacementResult>
    typealias ModifyLaunchTemplateEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyLaunchTemplateRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyLaunchTemplateResult>
    typealias ModifyManagedPrefixListEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyManagedPrefixListRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyManagedPrefixListResult>
    typealias ModifyNetworkInterfaceAttributeEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyNetworkInterfaceAttributeRequest) -> EventLoopFuture<Void>
    typealias ModifyReservedInstancesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyReservedInstancesRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyReservedInstancesResult>
    typealias ModifySnapshotAttributeEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ModifySnapshotAttributeRequest) -> EventLoopFuture<Void>
    typealias ModifySpotFleetRequestEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ModifySpotFleetRequestRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifySpotFleetRequestResponse>
    typealias ModifySubnetAttributeEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ModifySubnetAttributeRequest) -> EventLoopFuture<Void>
    typealias ModifyTrafficMirrorFilterNetworkServicesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyTrafficMirrorFilterNetworkServicesRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyTrafficMirrorFilterNetworkServicesResult>
    typealias ModifyTrafficMirrorFilterRuleEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyTrafficMirrorFilterRuleRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyTrafficMirrorFilterRuleResult>
    typealias ModifyTrafficMirrorSessionEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyTrafficMirrorSessionRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyTrafficMirrorSessionResult>
    typealias ModifyTransitGatewayEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyTransitGatewayRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyTransitGatewayResult>
    typealias ModifyTransitGatewayPrefixListReferenceEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyTransitGatewayPrefixListReferenceRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyTransitGatewayPrefixListReferenceResult>
    typealias ModifyTransitGatewayVpcAttachmentEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyTransitGatewayVpcAttachmentRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyTransitGatewayVpcAttachmentResult>
    typealias ModifyVolumeEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyVolumeRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyVolumeResult>
    typealias ModifyVolumeAttributeEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyVolumeAttributeRequest) -> EventLoopFuture<Void>
    typealias ModifyVpcAttributeEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyVpcAttributeRequest) -> EventLoopFuture<Void>
    typealias ModifyVpcEndpointEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyVpcEndpointRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyVpcEndpointResult>
    typealias ModifyVpcEndpointConnectionNotificationEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyVpcEndpointConnectionNotificationRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyVpcEndpointConnectionNotificationResult>
    typealias ModifyVpcEndpointServiceConfigurationEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyVpcEndpointServiceConfigurationRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyVpcEndpointServiceConfigurationResult>
    typealias ModifyVpcEndpointServicePermissionsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyVpcEndpointServicePermissionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyVpcEndpointServicePermissionsResult>
    typealias ModifyVpcPeeringConnectionOptionsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyVpcPeeringConnectionOptionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyVpcPeeringConnectionOptionsResult>
    typealias ModifyVpcTenancyEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyVpcTenancyRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyVpcTenancyResult>
    typealias ModifyVpnConnectionEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyVpnConnectionRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyVpnConnectionResult>
    typealias ModifyVpnConnectionOptionsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyVpnConnectionOptionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyVpnConnectionOptionsResult>
    typealias ModifyVpnTunnelCertificateEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyVpnTunnelCertificateRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyVpnTunnelCertificateResult>
    typealias ModifyVpnTunnelOptionsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ModifyVpnTunnelOptionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyVpnTunnelOptionsResult>
    typealias MonitorInstancesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.MonitorInstancesRequest) -> EventLoopFuture<ElasticComputeCloudModel.MonitorInstancesResult>
    typealias MoveAddressToVpcEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.MoveAddressToVpcRequest) -> EventLoopFuture<ElasticComputeCloudModel.MoveAddressToVpcResult>
    typealias ProvisionByoipCidrEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ProvisionByoipCidrRequest) -> EventLoopFuture<ElasticComputeCloudModel.ProvisionByoipCidrResult>
    typealias PurchaseHostReservationEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.PurchaseHostReservationRequest) -> EventLoopFuture<ElasticComputeCloudModel.PurchaseHostReservationResult>
    typealias PurchaseReservedInstancesOfferingEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.PurchaseReservedInstancesOfferingRequest) -> EventLoopFuture<ElasticComputeCloudModel.PurchaseReservedInstancesOfferingResult>
    typealias PurchaseScheduledInstancesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.PurchaseScheduledInstancesRequest) -> EventLoopFuture<ElasticComputeCloudModel.PurchaseScheduledInstancesResult>
    typealias RebootInstancesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.RebootInstancesRequest) -> EventLoopFuture<Void>
    typealias RegisterImageEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.RegisterImageRequest) -> EventLoopFuture<ElasticComputeCloudModel.RegisterImageResult>
    typealias RegisterInstanceEventNotificationAttributesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.RegisterInstanceEventNotificationAttributesRequest) -> EventLoopFuture<ElasticComputeCloudModel.RegisterInstanceEventNotificationAttributesResult>
    typealias RegisterTransitGatewayMulticastGroupMembersEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupMembersRequest) -> EventLoopFuture<ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupMembersResult>
    typealias RegisterTransitGatewayMulticastGroupSourcesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupSourcesRequest) -> EventLoopFuture<ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupSourcesResult>
    typealias RejectTransitGatewayMulticastDomainAssociationsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.RejectTransitGatewayMulticastDomainAssociationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.RejectTransitGatewayMulticastDomainAssociationsResult>
    typealias RejectTransitGatewayPeeringAttachmentEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.RejectTransitGatewayPeeringAttachmentRequest) -> EventLoopFuture<ElasticComputeCloudModel.RejectTransitGatewayPeeringAttachmentResult>
    typealias RejectTransitGatewayVpcAttachmentEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.RejectTransitGatewayVpcAttachmentRequest) -> EventLoopFuture<ElasticComputeCloudModel.RejectTransitGatewayVpcAttachmentResult>
    typealias RejectVpcEndpointConnectionsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.RejectVpcEndpointConnectionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.RejectVpcEndpointConnectionsResult>
    typealias RejectVpcPeeringConnectionEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.RejectVpcPeeringConnectionRequest) -> EventLoopFuture<ElasticComputeCloudModel.RejectVpcPeeringConnectionResult>
    typealias ReleaseAddressEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ReleaseAddressRequest) -> EventLoopFuture<Void>
    typealias ReleaseHostsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ReleaseHostsRequest) -> EventLoopFuture<ElasticComputeCloudModel.ReleaseHostsResult>
    typealias ReplaceIamInstanceProfileAssociationEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ReplaceIamInstanceProfileAssociationRequest) -> EventLoopFuture<ElasticComputeCloudModel.ReplaceIamInstanceProfileAssociationResult>
    typealias ReplaceNetworkAclAssociationEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ReplaceNetworkAclAssociationRequest) -> EventLoopFuture<ElasticComputeCloudModel.ReplaceNetworkAclAssociationResult>
    typealias ReplaceNetworkAclEntryEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ReplaceNetworkAclEntryRequest) -> EventLoopFuture<Void>
    typealias ReplaceRouteEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ReplaceRouteRequest) -> EventLoopFuture<Void>
    typealias ReplaceRouteTableAssociationEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ReplaceRouteTableAssociationRequest) -> EventLoopFuture<ElasticComputeCloudModel.ReplaceRouteTableAssociationResult>
    typealias ReplaceTransitGatewayRouteEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ReplaceTransitGatewayRouteRequest) -> EventLoopFuture<ElasticComputeCloudModel.ReplaceTransitGatewayRouteResult>
    typealias ReportInstanceStatusEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ReportInstanceStatusRequest) -> EventLoopFuture<Void>
    typealias RequestSpotFleetEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.RequestSpotFleetRequest) -> EventLoopFuture<ElasticComputeCloudModel.RequestSpotFleetResponse>
    typealias RequestSpotInstancesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.RequestSpotInstancesRequest) -> EventLoopFuture<ElasticComputeCloudModel.RequestSpotInstancesResult>
    typealias ResetAddressAttributeEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ResetAddressAttributeRequest) -> EventLoopFuture<ElasticComputeCloudModel.ResetAddressAttributeResult>
    typealias ResetEbsDefaultKmsKeyIdEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ResetEbsDefaultKmsKeyIdRequest) -> EventLoopFuture<ElasticComputeCloudModel.ResetEbsDefaultKmsKeyIdResult>
    typealias ResetFpgaImageAttributeEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ResetFpgaImageAttributeRequest) -> EventLoopFuture<ElasticComputeCloudModel.ResetFpgaImageAttributeResult>
    typealias ResetImageAttributeEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ResetImageAttributeRequest) -> EventLoopFuture<Void>
    typealias ResetInstanceAttributeEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ResetInstanceAttributeRequest) -> EventLoopFuture<Void>
    typealias ResetNetworkInterfaceAttributeEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ResetNetworkInterfaceAttributeRequest) -> EventLoopFuture<Void>
    typealias ResetSnapshotAttributeEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.ResetSnapshotAttributeRequest) -> EventLoopFuture<Void>
    typealias RestoreAddressToClassicEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.RestoreAddressToClassicRequest) -> EventLoopFuture<ElasticComputeCloudModel.RestoreAddressToClassicResult>
    typealias RestoreManagedPrefixListVersionEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.RestoreManagedPrefixListVersionRequest) -> EventLoopFuture<ElasticComputeCloudModel.RestoreManagedPrefixListVersionResult>
    typealias RevokeClientVpnIngressEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.RevokeClientVpnIngressRequest) -> EventLoopFuture<ElasticComputeCloudModel.RevokeClientVpnIngressResult>
    typealias RevokeSecurityGroupEgressEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.RevokeSecurityGroupEgressRequest) -> EventLoopFuture<ElasticComputeCloudModel.RevokeSecurityGroupEgressResult>
    typealias RevokeSecurityGroupIngressEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.RevokeSecurityGroupIngressRequest) -> EventLoopFuture<ElasticComputeCloudModel.RevokeSecurityGroupIngressResult>
    typealias RunInstancesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.RunInstancesRequest) -> EventLoopFuture<ElasticComputeCloudModel.Reservation>
    typealias RunScheduledInstancesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.RunScheduledInstancesRequest) -> EventLoopFuture<ElasticComputeCloudModel.RunScheduledInstancesResult>
    typealias SearchLocalGatewayRoutesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.SearchLocalGatewayRoutesRequest) -> EventLoopFuture<ElasticComputeCloudModel.SearchLocalGatewayRoutesResult>
    typealias SearchTransitGatewayMulticastGroupsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.SearchTransitGatewayMulticastGroupsRequest) -> EventLoopFuture<ElasticComputeCloudModel.SearchTransitGatewayMulticastGroupsResult>
    typealias SearchTransitGatewayRoutesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.SearchTransitGatewayRoutesRequest) -> EventLoopFuture<ElasticComputeCloudModel.SearchTransitGatewayRoutesResult>
    typealias SendDiagnosticInterruptEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.SendDiagnosticInterruptRequest) -> EventLoopFuture<Void>
    typealias StartInstancesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.StartInstancesRequest) -> EventLoopFuture<ElasticComputeCloudModel.StartInstancesResult>
    typealias StartNetworkInsightsAnalysisEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.StartNetworkInsightsAnalysisRequest) -> EventLoopFuture<ElasticComputeCloudModel.StartNetworkInsightsAnalysisResult>
    typealias StartVpcEndpointServicePrivateDnsVerificationEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.StartVpcEndpointServicePrivateDnsVerificationRequest) -> EventLoopFuture<ElasticComputeCloudModel.StartVpcEndpointServicePrivateDnsVerificationResult>
    typealias StopInstancesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.StopInstancesRequest) -> EventLoopFuture<ElasticComputeCloudModel.StopInstancesResult>
    typealias TerminateClientVpnConnectionsEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.TerminateClientVpnConnectionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.TerminateClientVpnConnectionsResult>
    typealias TerminateInstancesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.TerminateInstancesRequest) -> EventLoopFuture<ElasticComputeCloudModel.TerminateInstancesResult>
    typealias UnassignIpv6AddressesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.UnassignIpv6AddressesRequest) -> EventLoopFuture<ElasticComputeCloudModel.UnassignIpv6AddressesResult>
    typealias UnassignPrivateIpAddressesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.UnassignPrivateIpAddressesRequest) -> EventLoopFuture<Void>
    typealias UnmonitorInstancesEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.UnmonitorInstancesRequest) -> EventLoopFuture<ElasticComputeCloudModel.UnmonitorInstancesResult>
    typealias UpdateSecurityGroupRuleDescriptionsEgressEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsEgressRequest) -> EventLoopFuture<ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsEgressResult>
    typealias UpdateSecurityGroupRuleDescriptionsIngressEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsIngressRequest) -> EventLoopFuture<ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsIngressResult>
    typealias WithdrawByoipCidrEventLoopFutureAsyncType = (
            _ input: ElasticComputeCloudModel.WithdrawByoipCidrRequest) -> EventLoopFuture<ElasticComputeCloudModel.WithdrawByoipCidrResult>

    /**
     Invokes the AcceptReservedInstancesExchangeQuote operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AcceptReservedInstancesExchangeQuoteRequest object being passed to this operation.
     - Returns: A future to the AcceptReservedInstancesExchangeQuoteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func acceptReservedInstancesExchangeQuote(
            input: ElasticComputeCloudModel.AcceptReservedInstancesExchangeQuoteRequest) -> EventLoopFuture<ElasticComputeCloudModel.AcceptReservedInstancesExchangeQuoteResult>

    /**
     Invokes the AcceptTransitGatewayMulticastDomainAssociations operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AcceptTransitGatewayMulticastDomainAssociationsRequest object being passed to this operation.
     - Returns: A future to the AcceptTransitGatewayMulticastDomainAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func acceptTransitGatewayMulticastDomainAssociations(
            input: ElasticComputeCloudModel.AcceptTransitGatewayMulticastDomainAssociationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.AcceptTransitGatewayMulticastDomainAssociationsResult>

    /**
     Invokes the AcceptTransitGatewayPeeringAttachment operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AcceptTransitGatewayPeeringAttachmentRequest object being passed to this operation.
     - Returns: A future to the AcceptTransitGatewayPeeringAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func acceptTransitGatewayPeeringAttachment(
            input: ElasticComputeCloudModel.AcceptTransitGatewayPeeringAttachmentRequest) -> EventLoopFuture<ElasticComputeCloudModel.AcceptTransitGatewayPeeringAttachmentResult>

    /**
     Invokes the AcceptTransitGatewayVpcAttachment operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AcceptTransitGatewayVpcAttachmentRequest object being passed to this operation.
     - Returns: A future to the AcceptTransitGatewayVpcAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func acceptTransitGatewayVpcAttachment(
            input: ElasticComputeCloudModel.AcceptTransitGatewayVpcAttachmentRequest) -> EventLoopFuture<ElasticComputeCloudModel.AcceptTransitGatewayVpcAttachmentResult>

    /**
     Invokes the AcceptVpcEndpointConnections operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AcceptVpcEndpointConnectionsRequest object being passed to this operation.
     - Returns: A future to the AcceptVpcEndpointConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func acceptVpcEndpointConnections(
            input: ElasticComputeCloudModel.AcceptVpcEndpointConnectionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.AcceptVpcEndpointConnectionsResult>

    /**
     Invokes the AcceptVpcPeeringConnection operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AcceptVpcPeeringConnectionRequest object being passed to this operation.
     - Returns: A future to the AcceptVpcPeeringConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func acceptVpcPeeringConnection(
            input: ElasticComputeCloudModel.AcceptVpcPeeringConnectionRequest) -> EventLoopFuture<ElasticComputeCloudModel.AcceptVpcPeeringConnectionResult>

    /**
     Invokes the AdvertiseByoipCidr operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AdvertiseByoipCidrRequest object being passed to this operation.
     - Returns: A future to the AdvertiseByoipCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func advertiseByoipCidr(
            input: ElasticComputeCloudModel.AdvertiseByoipCidrRequest) -> EventLoopFuture<ElasticComputeCloudModel.AdvertiseByoipCidrResult>

    /**
     Invokes the AllocateAddress operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AllocateAddressRequest object being passed to this operation.
     - Returns: A future to the AllocateAddressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func allocateAddress(
            input: ElasticComputeCloudModel.AllocateAddressRequest) -> EventLoopFuture<ElasticComputeCloudModel.AllocateAddressResult>

    /**
     Invokes the AllocateHosts operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AllocateHostsRequest object being passed to this operation.
     - Returns: A future to the AllocateHostsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func allocateHosts(
            input: ElasticComputeCloudModel.AllocateHostsRequest) -> EventLoopFuture<ElasticComputeCloudModel.AllocateHostsResult>

    /**
     Invokes the ApplySecurityGroupsToClientVpnTargetNetwork operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ApplySecurityGroupsToClientVpnTargetNetworkRequest object being passed to this operation.
     - Returns: A future to the ApplySecurityGroupsToClientVpnTargetNetworkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func applySecurityGroupsToClientVpnTargetNetwork(
            input: ElasticComputeCloudModel.ApplySecurityGroupsToClientVpnTargetNetworkRequest) -> EventLoopFuture<ElasticComputeCloudModel.ApplySecurityGroupsToClientVpnTargetNetworkResult>

    /**
     Invokes the AssignIpv6Addresses operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AssignIpv6AddressesRequest object being passed to this operation.
     - Returns: A future to the AssignIpv6AddressesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func assignIpv6Addresses(
            input: ElasticComputeCloudModel.AssignIpv6AddressesRequest) -> EventLoopFuture<ElasticComputeCloudModel.AssignIpv6AddressesResult>

    /**
     Invokes the AssignPrivateIpAddresses operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AssignPrivateIpAddressesRequest object being passed to this operation.
     - Returns: A future to the AssignPrivateIpAddressesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func assignPrivateIpAddresses(
            input: ElasticComputeCloudModel.AssignPrivateIpAddressesRequest) -> EventLoopFuture<ElasticComputeCloudModel.AssignPrivateIpAddressesResult>

    /**
     Invokes the AssociateAddress operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AssociateAddressRequest object being passed to this operation.
     - Returns: A future to the AssociateAddressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateAddress(
            input: ElasticComputeCloudModel.AssociateAddressRequest) -> EventLoopFuture<ElasticComputeCloudModel.AssociateAddressResult>

    /**
     Invokes the AssociateClientVpnTargetNetwork operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AssociateClientVpnTargetNetworkRequest object being passed to this operation.
     - Returns: A future to the AssociateClientVpnTargetNetworkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateClientVpnTargetNetwork(
            input: ElasticComputeCloudModel.AssociateClientVpnTargetNetworkRequest) -> EventLoopFuture<ElasticComputeCloudModel.AssociateClientVpnTargetNetworkResult>

    /**
     Invokes the AssociateDhcpOptions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AssociateDhcpOptionsRequest object being passed to this operation.
     */
    func associateDhcpOptions(
            input: ElasticComputeCloudModel.AssociateDhcpOptionsRequest) -> EventLoopFuture<Void>

    /**
     Invokes the AssociateEnclaveCertificateIamRole operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AssociateEnclaveCertificateIamRoleRequest object being passed to this operation.
     - Returns: A future to the AssociateEnclaveCertificateIamRoleResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateEnclaveCertificateIamRole(
            input: ElasticComputeCloudModel.AssociateEnclaveCertificateIamRoleRequest) -> EventLoopFuture<ElasticComputeCloudModel.AssociateEnclaveCertificateIamRoleResult>

    /**
     Invokes the AssociateIamInstanceProfile operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AssociateIamInstanceProfileRequest object being passed to this operation.
     - Returns: A future to the AssociateIamInstanceProfileResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateIamInstanceProfile(
            input: ElasticComputeCloudModel.AssociateIamInstanceProfileRequest) -> EventLoopFuture<ElasticComputeCloudModel.AssociateIamInstanceProfileResult>

    /**
     Invokes the AssociateRouteTable operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AssociateRouteTableRequest object being passed to this operation.
     - Returns: A future to the AssociateRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateRouteTable(
            input: ElasticComputeCloudModel.AssociateRouteTableRequest) -> EventLoopFuture<ElasticComputeCloudModel.AssociateRouteTableResult>

    /**
     Invokes the AssociateSubnetCidrBlock operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AssociateSubnetCidrBlockRequest object being passed to this operation.
     - Returns: A future to the AssociateSubnetCidrBlockResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateSubnetCidrBlock(
            input: ElasticComputeCloudModel.AssociateSubnetCidrBlockRequest) -> EventLoopFuture<ElasticComputeCloudModel.AssociateSubnetCidrBlockResult>

    /**
     Invokes the AssociateTransitGatewayMulticastDomain operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AssociateTransitGatewayMulticastDomainRequest object being passed to this operation.
     - Returns: A future to the AssociateTransitGatewayMulticastDomainResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateTransitGatewayMulticastDomain(
            input: ElasticComputeCloudModel.AssociateTransitGatewayMulticastDomainRequest) -> EventLoopFuture<ElasticComputeCloudModel.AssociateTransitGatewayMulticastDomainResult>

    /**
     Invokes the AssociateTransitGatewayRouteTable operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AssociateTransitGatewayRouteTableRequest object being passed to this operation.
     - Returns: A future to the AssociateTransitGatewayRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateTransitGatewayRouteTable(
            input: ElasticComputeCloudModel.AssociateTransitGatewayRouteTableRequest) -> EventLoopFuture<ElasticComputeCloudModel.AssociateTransitGatewayRouteTableResult>

    /**
     Invokes the AssociateVpcCidrBlock operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AssociateVpcCidrBlockRequest object being passed to this operation.
     - Returns: A future to the AssociateVpcCidrBlockResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func associateVpcCidrBlock(
            input: ElasticComputeCloudModel.AssociateVpcCidrBlockRequest) -> EventLoopFuture<ElasticComputeCloudModel.AssociateVpcCidrBlockResult>

    /**
     Invokes the AttachClassicLinkVpc operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AttachClassicLinkVpcRequest object being passed to this operation.
     - Returns: A future to the AttachClassicLinkVpcResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func attachClassicLinkVpc(
            input: ElasticComputeCloudModel.AttachClassicLinkVpcRequest) -> EventLoopFuture<ElasticComputeCloudModel.AttachClassicLinkVpcResult>

    /**
     Invokes the AttachInternetGateway operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AttachInternetGatewayRequest object being passed to this operation.
     */
    func attachInternetGateway(
            input: ElasticComputeCloudModel.AttachInternetGatewayRequest) -> EventLoopFuture<Void>

    /**
     Invokes the AttachNetworkInterface operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AttachNetworkInterfaceRequest object being passed to this operation.
     - Returns: A future to the AttachNetworkInterfaceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func attachNetworkInterface(
            input: ElasticComputeCloudModel.AttachNetworkInterfaceRequest) -> EventLoopFuture<ElasticComputeCloudModel.AttachNetworkInterfaceResult>

    /**
     Invokes the AttachVolume operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AttachVolumeRequest object being passed to this operation.
     - Returns: A future to the VolumeAttachment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func attachVolume(
            input: ElasticComputeCloudModel.AttachVolumeRequest) -> EventLoopFuture<ElasticComputeCloudModel.VolumeAttachment>

    /**
     Invokes the AttachVpnGateway operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AttachVpnGatewayRequest object being passed to this operation.
     - Returns: A future to the AttachVpnGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func attachVpnGateway(
            input: ElasticComputeCloudModel.AttachVpnGatewayRequest) -> EventLoopFuture<ElasticComputeCloudModel.AttachVpnGatewayResult>

    /**
     Invokes the AuthorizeClientVpnIngress operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AuthorizeClientVpnIngressRequest object being passed to this operation.
     - Returns: A future to the AuthorizeClientVpnIngressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func authorizeClientVpnIngress(
            input: ElasticComputeCloudModel.AuthorizeClientVpnIngressRequest) -> EventLoopFuture<ElasticComputeCloudModel.AuthorizeClientVpnIngressResult>

    /**
     Invokes the AuthorizeSecurityGroupEgress operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AuthorizeSecurityGroupEgressRequest object being passed to this operation.
     */
    func authorizeSecurityGroupEgress(
            input: ElasticComputeCloudModel.AuthorizeSecurityGroupEgressRequest) -> EventLoopFuture<Void>

    /**
     Invokes the AuthorizeSecurityGroupIngress operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AuthorizeSecurityGroupIngressRequest object being passed to this operation.
     */
    func authorizeSecurityGroupIngress(
            input: ElasticComputeCloudModel.AuthorizeSecurityGroupIngressRequest) -> EventLoopFuture<Void>

    /**
     Invokes the BundleInstance operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated BundleInstanceRequest object being passed to this operation.
     - Returns: A future to the BundleInstanceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func bundleInstance(
            input: ElasticComputeCloudModel.BundleInstanceRequest) -> EventLoopFuture<ElasticComputeCloudModel.BundleInstanceResult>

    /**
     Invokes the CancelBundleTask operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CancelBundleTaskRequest object being passed to this operation.
     - Returns: A future to the CancelBundleTaskResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func cancelBundleTask(
            input: ElasticComputeCloudModel.CancelBundleTaskRequest) -> EventLoopFuture<ElasticComputeCloudModel.CancelBundleTaskResult>

    /**
     Invokes the CancelCapacityReservation operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CancelCapacityReservationRequest object being passed to this operation.
     - Returns: A future to the CancelCapacityReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func cancelCapacityReservation(
            input: ElasticComputeCloudModel.CancelCapacityReservationRequest) -> EventLoopFuture<ElasticComputeCloudModel.CancelCapacityReservationResult>

    /**
     Invokes the CancelConversionTask operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CancelConversionRequest object being passed to this operation.
     */
    func cancelConversionTask(
            input: ElasticComputeCloudModel.CancelConversionRequest) -> EventLoopFuture<Void>

    /**
     Invokes the CancelExportTask operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CancelExportTaskRequest object being passed to this operation.
     */
    func cancelExportTask(
            input: ElasticComputeCloudModel.CancelExportTaskRequest) -> EventLoopFuture<Void>

    /**
     Invokes the CancelImportTask operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CancelImportTaskRequest object being passed to this operation.
     - Returns: A future to the CancelImportTaskResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func cancelImportTask(
            input: ElasticComputeCloudModel.CancelImportTaskRequest) -> EventLoopFuture<ElasticComputeCloudModel.CancelImportTaskResult>

    /**
     Invokes the CancelReservedInstancesListing operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CancelReservedInstancesListingRequest object being passed to this operation.
     - Returns: A future to the CancelReservedInstancesListingResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func cancelReservedInstancesListing(
            input: ElasticComputeCloudModel.CancelReservedInstancesListingRequest) -> EventLoopFuture<ElasticComputeCloudModel.CancelReservedInstancesListingResult>

    /**
     Invokes the CancelSpotFleetRequests operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CancelSpotFleetRequestsRequest object being passed to this operation.
     - Returns: A future to the CancelSpotFleetRequestsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func cancelSpotFleetRequests(
            input: ElasticComputeCloudModel.CancelSpotFleetRequestsRequest) -> EventLoopFuture<ElasticComputeCloudModel.CancelSpotFleetRequestsResponse>

    /**
     Invokes the CancelSpotInstanceRequests operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CancelSpotInstanceRequestsRequest object being passed to this operation.
     - Returns: A future to the CancelSpotInstanceRequestsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func cancelSpotInstanceRequests(
            input: ElasticComputeCloudModel.CancelSpotInstanceRequestsRequest) -> EventLoopFuture<ElasticComputeCloudModel.CancelSpotInstanceRequestsResult>

    /**
     Invokes the ConfirmProductInstance operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ConfirmProductInstanceRequest object being passed to this operation.
     - Returns: A future to the ConfirmProductInstanceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func confirmProductInstance(
            input: ElasticComputeCloudModel.ConfirmProductInstanceRequest) -> EventLoopFuture<ElasticComputeCloudModel.ConfirmProductInstanceResult>

    /**
     Invokes the CopyFpgaImage operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CopyFpgaImageRequest object being passed to this operation.
     - Returns: A future to the CopyFpgaImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func copyFpgaImage(
            input: ElasticComputeCloudModel.CopyFpgaImageRequest) -> EventLoopFuture<ElasticComputeCloudModel.CopyFpgaImageResult>

    /**
     Invokes the CopyImage operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CopyImageRequest object being passed to this operation.
     - Returns: A future to the CopyImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func copyImage(
            input: ElasticComputeCloudModel.CopyImageRequest) -> EventLoopFuture<ElasticComputeCloudModel.CopyImageResult>

    /**
     Invokes the CopySnapshot operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CopySnapshotRequest object being passed to this operation.
     - Returns: A future to the CopySnapshotResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func copySnapshot(
            input: ElasticComputeCloudModel.CopySnapshotRequest) -> EventLoopFuture<ElasticComputeCloudModel.CopySnapshotResult>

    /**
     Invokes the CreateCapacityReservation operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateCapacityReservationRequest object being passed to this operation.
     - Returns: A future to the CreateCapacityReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createCapacityReservation(
            input: ElasticComputeCloudModel.CreateCapacityReservationRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateCapacityReservationResult>

    /**
     Invokes the CreateCarrierGateway operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateCarrierGatewayRequest object being passed to this operation.
     - Returns: A future to the CreateCarrierGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createCarrierGateway(
            input: ElasticComputeCloudModel.CreateCarrierGatewayRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateCarrierGatewayResult>

    /**
     Invokes the CreateClientVpnEndpoint operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateClientVpnEndpointRequest object being passed to this operation.
     - Returns: A future to the CreateClientVpnEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createClientVpnEndpoint(
            input: ElasticComputeCloudModel.CreateClientVpnEndpointRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateClientVpnEndpointResult>

    /**
     Invokes the CreateClientVpnRoute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateClientVpnRouteRequest object being passed to this operation.
     - Returns: A future to the CreateClientVpnRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createClientVpnRoute(
            input: ElasticComputeCloudModel.CreateClientVpnRouteRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateClientVpnRouteResult>

    /**
     Invokes the CreateCustomerGateway operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateCustomerGatewayRequest object being passed to this operation.
     - Returns: A future to the CreateCustomerGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createCustomerGateway(
            input: ElasticComputeCloudModel.CreateCustomerGatewayRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateCustomerGatewayResult>

    /**
     Invokes the CreateDefaultSubnet operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateDefaultSubnetRequest object being passed to this operation.
     - Returns: A future to the CreateDefaultSubnetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createDefaultSubnet(
            input: ElasticComputeCloudModel.CreateDefaultSubnetRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateDefaultSubnetResult>

    /**
     Invokes the CreateDefaultVpc operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateDefaultVpcRequest object being passed to this operation.
     - Returns: A future to the CreateDefaultVpcResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createDefaultVpc(
            input: ElasticComputeCloudModel.CreateDefaultVpcRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateDefaultVpcResult>

    /**
     Invokes the CreateDhcpOptions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateDhcpOptionsRequest object being passed to this operation.
     - Returns: A future to the CreateDhcpOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createDhcpOptions(
            input: ElasticComputeCloudModel.CreateDhcpOptionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateDhcpOptionsResult>

    /**
     Invokes the CreateEgressOnlyInternetGateway operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateEgressOnlyInternetGatewayRequest object being passed to this operation.
     - Returns: A future to the CreateEgressOnlyInternetGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createEgressOnlyInternetGateway(
            input: ElasticComputeCloudModel.CreateEgressOnlyInternetGatewayRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateEgressOnlyInternetGatewayResult>

    /**
     Invokes the CreateFleet operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateFleetRequest object being passed to this operation.
     - Returns: A future to the CreateFleetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createFleet(
            input: ElasticComputeCloudModel.CreateFleetRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateFleetResult>

    /**
     Invokes the CreateFlowLogs operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateFlowLogsRequest object being passed to this operation.
     - Returns: A future to the CreateFlowLogsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createFlowLogs(
            input: ElasticComputeCloudModel.CreateFlowLogsRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateFlowLogsResult>

    /**
     Invokes the CreateFpgaImage operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateFpgaImageRequest object being passed to this operation.
     - Returns: A future to the CreateFpgaImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createFpgaImage(
            input: ElasticComputeCloudModel.CreateFpgaImageRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateFpgaImageResult>

    /**
     Invokes the CreateImage operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateImageRequest object being passed to this operation.
     - Returns: A future to the CreateImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createImage(
            input: ElasticComputeCloudModel.CreateImageRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateImageResult>

    /**
     Invokes the CreateInstanceExportTask operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateInstanceExportTaskRequest object being passed to this operation.
     - Returns: A future to the CreateInstanceExportTaskResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createInstanceExportTask(
            input: ElasticComputeCloudModel.CreateInstanceExportTaskRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateInstanceExportTaskResult>

    /**
     Invokes the CreateInternetGateway operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateInternetGatewayRequest object being passed to this operation.
     - Returns: A future to the CreateInternetGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createInternetGateway(
            input: ElasticComputeCloudModel.CreateInternetGatewayRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateInternetGatewayResult>

    /**
     Invokes the CreateKeyPair operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateKeyPairRequest object being passed to this operation.
     - Returns: A future to the KeyPair object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createKeyPair(
            input: ElasticComputeCloudModel.CreateKeyPairRequest) -> EventLoopFuture<ElasticComputeCloudModel.KeyPair>

    /**
     Invokes the CreateLaunchTemplate operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateLaunchTemplateRequest object being passed to this operation.
     - Returns: A future to the CreateLaunchTemplateResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createLaunchTemplate(
            input: ElasticComputeCloudModel.CreateLaunchTemplateRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateLaunchTemplateResult>

    /**
     Invokes the CreateLaunchTemplateVersion operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateLaunchTemplateVersionRequest object being passed to this operation.
     - Returns: A future to the CreateLaunchTemplateVersionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createLaunchTemplateVersion(
            input: ElasticComputeCloudModel.CreateLaunchTemplateVersionRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateLaunchTemplateVersionResult>

    /**
     Invokes the CreateLocalGatewayRoute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateLocalGatewayRouteRequest object being passed to this operation.
     - Returns: A future to the CreateLocalGatewayRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createLocalGatewayRoute(
            input: ElasticComputeCloudModel.CreateLocalGatewayRouteRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateLocalGatewayRouteResult>

    /**
     Invokes the CreateLocalGatewayRouteTableVpcAssociation operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateLocalGatewayRouteTableVpcAssociationRequest object being passed to this operation.
     - Returns: A future to the CreateLocalGatewayRouteTableVpcAssociationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createLocalGatewayRouteTableVpcAssociation(
            input: ElasticComputeCloudModel.CreateLocalGatewayRouteTableVpcAssociationRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateLocalGatewayRouteTableVpcAssociationResult>

    /**
     Invokes the CreateManagedPrefixList operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateManagedPrefixListRequest object being passed to this operation.
     - Returns: A future to the CreateManagedPrefixListResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createManagedPrefixList(
            input: ElasticComputeCloudModel.CreateManagedPrefixListRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateManagedPrefixListResult>

    /**
     Invokes the CreateNatGateway operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateNatGatewayRequest object being passed to this operation.
     - Returns: A future to the CreateNatGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createNatGateway(
            input: ElasticComputeCloudModel.CreateNatGatewayRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateNatGatewayResult>

    /**
     Invokes the CreateNetworkAcl operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateNetworkAclRequest object being passed to this operation.
     - Returns: A future to the CreateNetworkAclResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createNetworkAcl(
            input: ElasticComputeCloudModel.CreateNetworkAclRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateNetworkAclResult>

    /**
     Invokes the CreateNetworkAclEntry operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateNetworkAclEntryRequest object being passed to this operation.
     */
    func createNetworkAclEntry(
            input: ElasticComputeCloudModel.CreateNetworkAclEntryRequest) -> EventLoopFuture<Void>

    /**
     Invokes the CreateNetworkInsightsPath operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateNetworkInsightsPathRequest object being passed to this operation.
     - Returns: A future to the CreateNetworkInsightsPathResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createNetworkInsightsPath(
            input: ElasticComputeCloudModel.CreateNetworkInsightsPathRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateNetworkInsightsPathResult>

    /**
     Invokes the CreateNetworkInterface operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateNetworkInterfaceRequest object being passed to this operation.
     - Returns: A future to the CreateNetworkInterfaceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createNetworkInterface(
            input: ElasticComputeCloudModel.CreateNetworkInterfaceRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateNetworkInterfaceResult>

    /**
     Invokes the CreateNetworkInterfacePermission operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateNetworkInterfacePermissionRequest object being passed to this operation.
     - Returns: A future to the CreateNetworkInterfacePermissionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createNetworkInterfacePermission(
            input: ElasticComputeCloudModel.CreateNetworkInterfacePermissionRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateNetworkInterfacePermissionResult>

    /**
     Invokes the CreatePlacementGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreatePlacementGroupRequest object being passed to this operation.
     - Returns: A future to the CreatePlacementGroupResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createPlacementGroup(
            input: ElasticComputeCloudModel.CreatePlacementGroupRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreatePlacementGroupResult>

    /**
     Invokes the CreateReservedInstancesListing operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateReservedInstancesListingRequest object being passed to this operation.
     - Returns: A future to the CreateReservedInstancesListingResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createReservedInstancesListing(
            input: ElasticComputeCloudModel.CreateReservedInstancesListingRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateReservedInstancesListingResult>

    /**
     Invokes the CreateRoute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateRouteRequest object being passed to this operation.
     - Returns: A future to the CreateRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createRoute(
            input: ElasticComputeCloudModel.CreateRouteRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateRouteResult>

    /**
     Invokes the CreateRouteTable operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateRouteTableRequest object being passed to this operation.
     - Returns: A future to the CreateRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createRouteTable(
            input: ElasticComputeCloudModel.CreateRouteTableRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateRouteTableResult>

    /**
     Invokes the CreateSecurityGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateSecurityGroupRequest object being passed to this operation.
     - Returns: A future to the CreateSecurityGroupResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createSecurityGroup(
            input: ElasticComputeCloudModel.CreateSecurityGroupRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateSecurityGroupResult>

    /**
     Invokes the CreateSnapshot operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateSnapshotRequest object being passed to this operation.
     - Returns: A future to the Snapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createSnapshot(
            input: ElasticComputeCloudModel.CreateSnapshotRequest) -> EventLoopFuture<ElasticComputeCloudModel.Snapshot>

    /**
     Invokes the CreateSnapshots operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateSnapshotsRequest object being passed to this operation.
     - Returns: A future to the CreateSnapshotsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createSnapshots(
            input: ElasticComputeCloudModel.CreateSnapshotsRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateSnapshotsResult>

    /**
     Invokes the CreateSpotDatafeedSubscription operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateSpotDatafeedSubscriptionRequest object being passed to this operation.
     - Returns: A future to the CreateSpotDatafeedSubscriptionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createSpotDatafeedSubscription(
            input: ElasticComputeCloudModel.CreateSpotDatafeedSubscriptionRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateSpotDatafeedSubscriptionResult>

    /**
     Invokes the CreateSubnet operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateSubnetRequest object being passed to this operation.
     - Returns: A future to the CreateSubnetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createSubnet(
            input: ElasticComputeCloudModel.CreateSubnetRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateSubnetResult>

    /**
     Invokes the CreateTags operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateTagsRequest object being passed to this operation.
     */
    func createTags(
            input: ElasticComputeCloudModel.CreateTagsRequest) -> EventLoopFuture<Void>

    /**
     Invokes the CreateTrafficMirrorFilter operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateTrafficMirrorFilterRequest object being passed to this operation.
     - Returns: A future to the CreateTrafficMirrorFilterResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTrafficMirrorFilter(
            input: ElasticComputeCloudModel.CreateTrafficMirrorFilterRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateTrafficMirrorFilterResult>

    /**
     Invokes the CreateTrafficMirrorFilterRule operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateTrafficMirrorFilterRuleRequest object being passed to this operation.
     - Returns: A future to the CreateTrafficMirrorFilterRuleResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTrafficMirrorFilterRule(
            input: ElasticComputeCloudModel.CreateTrafficMirrorFilterRuleRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateTrafficMirrorFilterRuleResult>

    /**
     Invokes the CreateTrafficMirrorSession operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateTrafficMirrorSessionRequest object being passed to this operation.
     - Returns: A future to the CreateTrafficMirrorSessionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTrafficMirrorSession(
            input: ElasticComputeCloudModel.CreateTrafficMirrorSessionRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateTrafficMirrorSessionResult>

    /**
     Invokes the CreateTrafficMirrorTarget operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateTrafficMirrorTargetRequest object being passed to this operation.
     - Returns: A future to the CreateTrafficMirrorTargetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTrafficMirrorTarget(
            input: ElasticComputeCloudModel.CreateTrafficMirrorTargetRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateTrafficMirrorTargetResult>

    /**
     Invokes the CreateTransitGateway operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateTransitGatewayRequest object being passed to this operation.
     - Returns: A future to the CreateTransitGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTransitGateway(
            input: ElasticComputeCloudModel.CreateTransitGatewayRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateTransitGatewayResult>

    /**
     Invokes the CreateTransitGatewayConnect operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateTransitGatewayConnectRequest object being passed to this operation.
     - Returns: A future to the CreateTransitGatewayConnectResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTransitGatewayConnect(
            input: ElasticComputeCloudModel.CreateTransitGatewayConnectRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateTransitGatewayConnectResult>

    /**
     Invokes the CreateTransitGatewayConnectPeer operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateTransitGatewayConnectPeerRequest object being passed to this operation.
     - Returns: A future to the CreateTransitGatewayConnectPeerResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTransitGatewayConnectPeer(
            input: ElasticComputeCloudModel.CreateTransitGatewayConnectPeerRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateTransitGatewayConnectPeerResult>

    /**
     Invokes the CreateTransitGatewayMulticastDomain operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateTransitGatewayMulticastDomainRequest object being passed to this operation.
     - Returns: A future to the CreateTransitGatewayMulticastDomainResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTransitGatewayMulticastDomain(
            input: ElasticComputeCloudModel.CreateTransitGatewayMulticastDomainRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateTransitGatewayMulticastDomainResult>

    /**
     Invokes the CreateTransitGatewayPeeringAttachment operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateTransitGatewayPeeringAttachmentRequest object being passed to this operation.
     - Returns: A future to the CreateTransitGatewayPeeringAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTransitGatewayPeeringAttachment(
            input: ElasticComputeCloudModel.CreateTransitGatewayPeeringAttachmentRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateTransitGatewayPeeringAttachmentResult>

    /**
     Invokes the CreateTransitGatewayPrefixListReference operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateTransitGatewayPrefixListReferenceRequest object being passed to this operation.
     - Returns: A future to the CreateTransitGatewayPrefixListReferenceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTransitGatewayPrefixListReference(
            input: ElasticComputeCloudModel.CreateTransitGatewayPrefixListReferenceRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateTransitGatewayPrefixListReferenceResult>

    /**
     Invokes the CreateTransitGatewayRoute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateTransitGatewayRouteRequest object being passed to this operation.
     - Returns: A future to the CreateTransitGatewayRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTransitGatewayRoute(
            input: ElasticComputeCloudModel.CreateTransitGatewayRouteRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateTransitGatewayRouteResult>

    /**
     Invokes the CreateTransitGatewayRouteTable operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateTransitGatewayRouteTableRequest object being passed to this operation.
     - Returns: A future to the CreateTransitGatewayRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTransitGatewayRouteTable(
            input: ElasticComputeCloudModel.CreateTransitGatewayRouteTableRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateTransitGatewayRouteTableResult>

    /**
     Invokes the CreateTransitGatewayVpcAttachment operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateTransitGatewayVpcAttachmentRequest object being passed to this operation.
     - Returns: A future to the CreateTransitGatewayVpcAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createTransitGatewayVpcAttachment(
            input: ElasticComputeCloudModel.CreateTransitGatewayVpcAttachmentRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateTransitGatewayVpcAttachmentResult>

    /**
     Invokes the CreateVolume operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateVolumeRequest object being passed to this operation.
     - Returns: A future to the Volume object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVolume(
            input: ElasticComputeCloudModel.CreateVolumeRequest) -> EventLoopFuture<ElasticComputeCloudModel.Volume>

    /**
     Invokes the CreateVpc operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateVpcRequest object being passed to this operation.
     - Returns: A future to the CreateVpcResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVpc(
            input: ElasticComputeCloudModel.CreateVpcRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateVpcResult>

    /**
     Invokes the CreateVpcEndpoint operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateVpcEndpointRequest object being passed to this operation.
     - Returns: A future to the CreateVpcEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVpcEndpoint(
            input: ElasticComputeCloudModel.CreateVpcEndpointRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateVpcEndpointResult>

    /**
     Invokes the CreateVpcEndpointConnectionNotification operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateVpcEndpointConnectionNotificationRequest object being passed to this operation.
     - Returns: A future to the CreateVpcEndpointConnectionNotificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVpcEndpointConnectionNotification(
            input: ElasticComputeCloudModel.CreateVpcEndpointConnectionNotificationRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateVpcEndpointConnectionNotificationResult>

    /**
     Invokes the CreateVpcEndpointServiceConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateVpcEndpointServiceConfigurationRequest object being passed to this operation.
     - Returns: A future to the CreateVpcEndpointServiceConfigurationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVpcEndpointServiceConfiguration(
            input: ElasticComputeCloudModel.CreateVpcEndpointServiceConfigurationRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateVpcEndpointServiceConfigurationResult>

    /**
     Invokes the CreateVpcPeeringConnection operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateVpcPeeringConnectionRequest object being passed to this operation.
     - Returns: A future to the CreateVpcPeeringConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVpcPeeringConnection(
            input: ElasticComputeCloudModel.CreateVpcPeeringConnectionRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateVpcPeeringConnectionResult>

    /**
     Invokes the CreateVpnConnection operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateVpnConnectionRequest object being passed to this operation.
     - Returns: A future to the CreateVpnConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVpnConnection(
            input: ElasticComputeCloudModel.CreateVpnConnectionRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateVpnConnectionResult>

    /**
     Invokes the CreateVpnConnectionRoute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateVpnConnectionRouteRequest object being passed to this operation.
     */
    func createVpnConnectionRoute(
            input: ElasticComputeCloudModel.CreateVpnConnectionRouteRequest) -> EventLoopFuture<Void>

    /**
     Invokes the CreateVpnGateway operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateVpnGatewayRequest object being passed to this operation.
     - Returns: A future to the CreateVpnGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func createVpnGateway(
            input: ElasticComputeCloudModel.CreateVpnGatewayRequest) -> EventLoopFuture<ElasticComputeCloudModel.CreateVpnGatewayResult>

    /**
     Invokes the DeleteCarrierGateway operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteCarrierGatewayRequest object being passed to this operation.
     - Returns: A future to the DeleteCarrierGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteCarrierGateway(
            input: ElasticComputeCloudModel.DeleteCarrierGatewayRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteCarrierGatewayResult>

    /**
     Invokes the DeleteClientVpnEndpoint operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteClientVpnEndpointRequest object being passed to this operation.
     - Returns: A future to the DeleteClientVpnEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteClientVpnEndpoint(
            input: ElasticComputeCloudModel.DeleteClientVpnEndpointRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteClientVpnEndpointResult>

    /**
     Invokes the DeleteClientVpnRoute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteClientVpnRouteRequest object being passed to this operation.
     - Returns: A future to the DeleteClientVpnRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteClientVpnRoute(
            input: ElasticComputeCloudModel.DeleteClientVpnRouteRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteClientVpnRouteResult>

    /**
     Invokes the DeleteCustomerGateway operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteCustomerGatewayRequest object being passed to this operation.
     */
    func deleteCustomerGateway(
            input: ElasticComputeCloudModel.DeleteCustomerGatewayRequest) -> EventLoopFuture<Void>

    /**
     Invokes the DeleteDhcpOptions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteDhcpOptionsRequest object being passed to this operation.
     */
    func deleteDhcpOptions(
            input: ElasticComputeCloudModel.DeleteDhcpOptionsRequest) -> EventLoopFuture<Void>

    /**
     Invokes the DeleteEgressOnlyInternetGateway operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteEgressOnlyInternetGatewayRequest object being passed to this operation.
     - Returns: A future to the DeleteEgressOnlyInternetGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteEgressOnlyInternetGateway(
            input: ElasticComputeCloudModel.DeleteEgressOnlyInternetGatewayRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteEgressOnlyInternetGatewayResult>

    /**
     Invokes the DeleteFleets operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteFleetsRequest object being passed to this operation.
     - Returns: A future to the DeleteFleetsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteFleets(
            input: ElasticComputeCloudModel.DeleteFleetsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteFleetsResult>

    /**
     Invokes the DeleteFlowLogs operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteFlowLogsRequest object being passed to this operation.
     - Returns: A future to the DeleteFlowLogsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteFlowLogs(
            input: ElasticComputeCloudModel.DeleteFlowLogsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteFlowLogsResult>

    /**
     Invokes the DeleteFpgaImage operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteFpgaImageRequest object being passed to this operation.
     - Returns: A future to the DeleteFpgaImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteFpgaImage(
            input: ElasticComputeCloudModel.DeleteFpgaImageRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteFpgaImageResult>

    /**
     Invokes the DeleteInternetGateway operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteInternetGatewayRequest object being passed to this operation.
     */
    func deleteInternetGateway(
            input: ElasticComputeCloudModel.DeleteInternetGatewayRequest) -> EventLoopFuture<Void>

    /**
     Invokes the DeleteKeyPair operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteKeyPairRequest object being passed to this operation.
     */
    func deleteKeyPair(
            input: ElasticComputeCloudModel.DeleteKeyPairRequest) -> EventLoopFuture<Void>

    /**
     Invokes the DeleteLaunchTemplate operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteLaunchTemplateRequest object being passed to this operation.
     - Returns: A future to the DeleteLaunchTemplateResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteLaunchTemplate(
            input: ElasticComputeCloudModel.DeleteLaunchTemplateRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteLaunchTemplateResult>

    /**
     Invokes the DeleteLaunchTemplateVersions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteLaunchTemplateVersionsRequest object being passed to this operation.
     - Returns: A future to the DeleteLaunchTemplateVersionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteLaunchTemplateVersions(
            input: ElasticComputeCloudModel.DeleteLaunchTemplateVersionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteLaunchTemplateVersionsResult>

    /**
     Invokes the DeleteLocalGatewayRoute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteLocalGatewayRouteRequest object being passed to this operation.
     - Returns: A future to the DeleteLocalGatewayRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteLocalGatewayRoute(
            input: ElasticComputeCloudModel.DeleteLocalGatewayRouteRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteLocalGatewayRouteResult>

    /**
     Invokes the DeleteLocalGatewayRouteTableVpcAssociation operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteLocalGatewayRouteTableVpcAssociationRequest object being passed to this operation.
     - Returns: A future to the DeleteLocalGatewayRouteTableVpcAssociationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteLocalGatewayRouteTableVpcAssociation(
            input: ElasticComputeCloudModel.DeleteLocalGatewayRouteTableVpcAssociationRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteLocalGatewayRouteTableVpcAssociationResult>

    /**
     Invokes the DeleteManagedPrefixList operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteManagedPrefixListRequest object being passed to this operation.
     - Returns: A future to the DeleteManagedPrefixListResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteManagedPrefixList(
            input: ElasticComputeCloudModel.DeleteManagedPrefixListRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteManagedPrefixListResult>

    /**
     Invokes the DeleteNatGateway operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteNatGatewayRequest object being passed to this operation.
     - Returns: A future to the DeleteNatGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteNatGateway(
            input: ElasticComputeCloudModel.DeleteNatGatewayRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteNatGatewayResult>

    /**
     Invokes the DeleteNetworkAcl operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteNetworkAclRequest object being passed to this operation.
     */
    func deleteNetworkAcl(
            input: ElasticComputeCloudModel.DeleteNetworkAclRequest) -> EventLoopFuture<Void>

    /**
     Invokes the DeleteNetworkAclEntry operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteNetworkAclEntryRequest object being passed to this operation.
     */
    func deleteNetworkAclEntry(
            input: ElasticComputeCloudModel.DeleteNetworkAclEntryRequest) -> EventLoopFuture<Void>

    /**
     Invokes the DeleteNetworkInsightsAnalysis operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteNetworkInsightsAnalysisRequest object being passed to this operation.
     - Returns: A future to the DeleteNetworkInsightsAnalysisResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteNetworkInsightsAnalysis(
            input: ElasticComputeCloudModel.DeleteNetworkInsightsAnalysisRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteNetworkInsightsAnalysisResult>

    /**
     Invokes the DeleteNetworkInsightsPath operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteNetworkInsightsPathRequest object being passed to this operation.
     - Returns: A future to the DeleteNetworkInsightsPathResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteNetworkInsightsPath(
            input: ElasticComputeCloudModel.DeleteNetworkInsightsPathRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteNetworkInsightsPathResult>

    /**
     Invokes the DeleteNetworkInterface operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteNetworkInterfaceRequest object being passed to this operation.
     */
    func deleteNetworkInterface(
            input: ElasticComputeCloudModel.DeleteNetworkInterfaceRequest) -> EventLoopFuture<Void>

    /**
     Invokes the DeleteNetworkInterfacePermission operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteNetworkInterfacePermissionRequest object being passed to this operation.
     - Returns: A future to the DeleteNetworkInterfacePermissionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteNetworkInterfacePermission(
            input: ElasticComputeCloudModel.DeleteNetworkInterfacePermissionRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteNetworkInterfacePermissionResult>

    /**
     Invokes the DeletePlacementGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeletePlacementGroupRequest object being passed to this operation.
     */
    func deletePlacementGroup(
            input: ElasticComputeCloudModel.DeletePlacementGroupRequest) -> EventLoopFuture<Void>

    /**
     Invokes the DeleteQueuedReservedInstances operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteQueuedReservedInstancesRequest object being passed to this operation.
     - Returns: A future to the DeleteQueuedReservedInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteQueuedReservedInstances(
            input: ElasticComputeCloudModel.DeleteQueuedReservedInstancesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteQueuedReservedInstancesResult>

    /**
     Invokes the DeleteRoute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteRouteRequest object being passed to this operation.
     */
    func deleteRoute(
            input: ElasticComputeCloudModel.DeleteRouteRequest) -> EventLoopFuture<Void>

    /**
     Invokes the DeleteRouteTable operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteRouteTableRequest object being passed to this operation.
     */
    func deleteRouteTable(
            input: ElasticComputeCloudModel.DeleteRouteTableRequest) -> EventLoopFuture<Void>

    /**
     Invokes the DeleteSecurityGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteSecurityGroupRequest object being passed to this operation.
     */
    func deleteSecurityGroup(
            input: ElasticComputeCloudModel.DeleteSecurityGroupRequest) -> EventLoopFuture<Void>

    /**
     Invokes the DeleteSnapshot operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteSnapshotRequest object being passed to this operation.
     */
    func deleteSnapshot(
            input: ElasticComputeCloudModel.DeleteSnapshotRequest) -> EventLoopFuture<Void>

    /**
     Invokes the DeleteSpotDatafeedSubscription operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteSpotDatafeedSubscriptionRequest object being passed to this operation.
     */
    func deleteSpotDatafeedSubscription(
            input: ElasticComputeCloudModel.DeleteSpotDatafeedSubscriptionRequest) -> EventLoopFuture<Void>

    /**
     Invokes the DeleteSubnet operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteSubnetRequest object being passed to this operation.
     */
    func deleteSubnet(
            input: ElasticComputeCloudModel.DeleteSubnetRequest) -> EventLoopFuture<Void>

    /**
     Invokes the DeleteTags operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteTagsRequest object being passed to this operation.
     */
    func deleteTags(
            input: ElasticComputeCloudModel.DeleteTagsRequest) -> EventLoopFuture<Void>

    /**
     Invokes the DeleteTrafficMirrorFilter operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteTrafficMirrorFilterRequest object being passed to this operation.
     - Returns: A future to the DeleteTrafficMirrorFilterResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTrafficMirrorFilter(
            input: ElasticComputeCloudModel.DeleteTrafficMirrorFilterRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteTrafficMirrorFilterResult>

    /**
     Invokes the DeleteTrafficMirrorFilterRule operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteTrafficMirrorFilterRuleRequest object being passed to this operation.
     - Returns: A future to the DeleteTrafficMirrorFilterRuleResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTrafficMirrorFilterRule(
            input: ElasticComputeCloudModel.DeleteTrafficMirrorFilterRuleRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteTrafficMirrorFilterRuleResult>

    /**
     Invokes the DeleteTrafficMirrorSession operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteTrafficMirrorSessionRequest object being passed to this operation.
     - Returns: A future to the DeleteTrafficMirrorSessionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTrafficMirrorSession(
            input: ElasticComputeCloudModel.DeleteTrafficMirrorSessionRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteTrafficMirrorSessionResult>

    /**
     Invokes the DeleteTrafficMirrorTarget operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteTrafficMirrorTargetRequest object being passed to this operation.
     - Returns: A future to the DeleteTrafficMirrorTargetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTrafficMirrorTarget(
            input: ElasticComputeCloudModel.DeleteTrafficMirrorTargetRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteTrafficMirrorTargetResult>

    /**
     Invokes the DeleteTransitGateway operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteTransitGatewayRequest object being passed to this operation.
     - Returns: A future to the DeleteTransitGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTransitGateway(
            input: ElasticComputeCloudModel.DeleteTransitGatewayRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteTransitGatewayResult>

    /**
     Invokes the DeleteTransitGatewayConnect operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteTransitGatewayConnectRequest object being passed to this operation.
     - Returns: A future to the DeleteTransitGatewayConnectResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTransitGatewayConnect(
            input: ElasticComputeCloudModel.DeleteTransitGatewayConnectRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteTransitGatewayConnectResult>

    /**
     Invokes the DeleteTransitGatewayConnectPeer operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteTransitGatewayConnectPeerRequest object being passed to this operation.
     - Returns: A future to the DeleteTransitGatewayConnectPeerResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTransitGatewayConnectPeer(
            input: ElasticComputeCloudModel.DeleteTransitGatewayConnectPeerRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteTransitGatewayConnectPeerResult>

    /**
     Invokes the DeleteTransitGatewayMulticastDomain operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteTransitGatewayMulticastDomainRequest object being passed to this operation.
     - Returns: A future to the DeleteTransitGatewayMulticastDomainResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTransitGatewayMulticastDomain(
            input: ElasticComputeCloudModel.DeleteTransitGatewayMulticastDomainRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteTransitGatewayMulticastDomainResult>

    /**
     Invokes the DeleteTransitGatewayPeeringAttachment operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteTransitGatewayPeeringAttachmentRequest object being passed to this operation.
     - Returns: A future to the DeleteTransitGatewayPeeringAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTransitGatewayPeeringAttachment(
            input: ElasticComputeCloudModel.DeleteTransitGatewayPeeringAttachmentRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteTransitGatewayPeeringAttachmentResult>

    /**
     Invokes the DeleteTransitGatewayPrefixListReference operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteTransitGatewayPrefixListReferenceRequest object being passed to this operation.
     - Returns: A future to the DeleteTransitGatewayPrefixListReferenceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTransitGatewayPrefixListReference(
            input: ElasticComputeCloudModel.DeleteTransitGatewayPrefixListReferenceRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteTransitGatewayPrefixListReferenceResult>

    /**
     Invokes the DeleteTransitGatewayRoute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteTransitGatewayRouteRequest object being passed to this operation.
     - Returns: A future to the DeleteTransitGatewayRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTransitGatewayRoute(
            input: ElasticComputeCloudModel.DeleteTransitGatewayRouteRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteTransitGatewayRouteResult>

    /**
     Invokes the DeleteTransitGatewayRouteTable operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteTransitGatewayRouteTableRequest object being passed to this operation.
     - Returns: A future to the DeleteTransitGatewayRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTransitGatewayRouteTable(
            input: ElasticComputeCloudModel.DeleteTransitGatewayRouteTableRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteTransitGatewayRouteTableResult>

    /**
     Invokes the DeleteTransitGatewayVpcAttachment operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteTransitGatewayVpcAttachmentRequest object being passed to this operation.
     - Returns: A future to the DeleteTransitGatewayVpcAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteTransitGatewayVpcAttachment(
            input: ElasticComputeCloudModel.DeleteTransitGatewayVpcAttachmentRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteTransitGatewayVpcAttachmentResult>

    /**
     Invokes the DeleteVolume operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteVolumeRequest object being passed to this operation.
     */
    func deleteVolume(
            input: ElasticComputeCloudModel.DeleteVolumeRequest) -> EventLoopFuture<Void>

    /**
     Invokes the DeleteVpc operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteVpcRequest object being passed to this operation.
     */
    func deleteVpc(
            input: ElasticComputeCloudModel.DeleteVpcRequest) -> EventLoopFuture<Void>

    /**
     Invokes the DeleteVpcEndpointConnectionNotifications operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteVpcEndpointConnectionNotificationsRequest object being passed to this operation.
     - Returns: A future to the DeleteVpcEndpointConnectionNotificationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteVpcEndpointConnectionNotifications(
            input: ElasticComputeCloudModel.DeleteVpcEndpointConnectionNotificationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteVpcEndpointConnectionNotificationsResult>

    /**
     Invokes the DeleteVpcEndpointServiceConfigurations operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteVpcEndpointServiceConfigurationsRequest object being passed to this operation.
     - Returns: A future to the DeleteVpcEndpointServiceConfigurationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteVpcEndpointServiceConfigurations(
            input: ElasticComputeCloudModel.DeleteVpcEndpointServiceConfigurationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteVpcEndpointServiceConfigurationsResult>

    /**
     Invokes the DeleteVpcEndpoints operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteVpcEndpointsRequest object being passed to this operation.
     - Returns: A future to the DeleteVpcEndpointsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteVpcEndpoints(
            input: ElasticComputeCloudModel.DeleteVpcEndpointsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteVpcEndpointsResult>

    /**
     Invokes the DeleteVpcPeeringConnection operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteVpcPeeringConnectionRequest object being passed to this operation.
     - Returns: A future to the DeleteVpcPeeringConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deleteVpcPeeringConnection(
            input: ElasticComputeCloudModel.DeleteVpcPeeringConnectionRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeleteVpcPeeringConnectionResult>

    /**
     Invokes the DeleteVpnConnection operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteVpnConnectionRequest object being passed to this operation.
     */
    func deleteVpnConnection(
            input: ElasticComputeCloudModel.DeleteVpnConnectionRequest) -> EventLoopFuture<Void>

    /**
     Invokes the DeleteVpnConnectionRoute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteVpnConnectionRouteRequest object being passed to this operation.
     */
    func deleteVpnConnectionRoute(
            input: ElasticComputeCloudModel.DeleteVpnConnectionRouteRequest) -> EventLoopFuture<Void>

    /**
     Invokes the DeleteVpnGateway operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteVpnGatewayRequest object being passed to this operation.
     */
    func deleteVpnGateway(
            input: ElasticComputeCloudModel.DeleteVpnGatewayRequest) -> EventLoopFuture<Void>

    /**
     Invokes the DeprovisionByoipCidr operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeprovisionByoipCidrRequest object being passed to this operation.
     - Returns: A future to the DeprovisionByoipCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deprovisionByoipCidr(
            input: ElasticComputeCloudModel.DeprovisionByoipCidrRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeprovisionByoipCidrResult>

    /**
     Invokes the DeregisterImage operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeregisterImageRequest object being passed to this operation.
     */
    func deregisterImage(
            input: ElasticComputeCloudModel.DeregisterImageRequest) -> EventLoopFuture<Void>

    /**
     Invokes the DeregisterInstanceEventNotificationAttributes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeregisterInstanceEventNotificationAttributesRequest object being passed to this operation.
     - Returns: A future to the DeregisterInstanceEventNotificationAttributesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deregisterInstanceEventNotificationAttributes(
            input: ElasticComputeCloudModel.DeregisterInstanceEventNotificationAttributesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeregisterInstanceEventNotificationAttributesResult>

    /**
     Invokes the DeregisterTransitGatewayMulticastGroupMembers operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeregisterTransitGatewayMulticastGroupMembersRequest object being passed to this operation.
     - Returns: A future to the DeregisterTransitGatewayMulticastGroupMembersResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deregisterTransitGatewayMulticastGroupMembers(
            input: ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupMembersRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupMembersResult>

    /**
     Invokes the DeregisterTransitGatewayMulticastGroupSources operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeregisterTransitGatewayMulticastGroupSourcesRequest object being passed to this operation.
     - Returns: A future to the DeregisterTransitGatewayMulticastGroupSourcesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func deregisterTransitGatewayMulticastGroupSources(
            input: ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupSourcesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DeregisterTransitGatewayMulticastGroupSourcesResult>

    /**
     Invokes the DescribeAccountAttributes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeAccountAttributesRequest object being passed to this operation.
     - Returns: A future to the DescribeAccountAttributesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeAccountAttributes(
            input: ElasticComputeCloudModel.DescribeAccountAttributesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeAccountAttributesResult>

    /**
     Invokes the DescribeAddresses operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeAddressesRequest object being passed to this operation.
     - Returns: A future to the DescribeAddressesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeAddresses(
            input: ElasticComputeCloudModel.DescribeAddressesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeAddressesResult>

    /**
     Invokes the DescribeAddressesAttribute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeAddressesAttributeRequest object being passed to this operation.
     - Returns: A future to the DescribeAddressesAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeAddressesAttribute(
            input: ElasticComputeCloudModel.DescribeAddressesAttributeRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeAddressesAttributeResult>

    /**
     Invokes the DescribeAggregateIdFormat operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeAggregateIdFormatRequest object being passed to this operation.
     - Returns: A future to the DescribeAggregateIdFormatResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeAggregateIdFormat(
            input: ElasticComputeCloudModel.DescribeAggregateIdFormatRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeAggregateIdFormatResult>

    /**
     Invokes the DescribeAvailabilityZones operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeAvailabilityZonesRequest object being passed to this operation.
     - Returns: A future to the DescribeAvailabilityZonesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeAvailabilityZones(
            input: ElasticComputeCloudModel.DescribeAvailabilityZonesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeAvailabilityZonesResult>

    /**
     Invokes the DescribeBundleTasks operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeBundleTasksRequest object being passed to this operation.
     - Returns: A future to the DescribeBundleTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeBundleTasks(
            input: ElasticComputeCloudModel.DescribeBundleTasksRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeBundleTasksResult>

    /**
     Invokes the DescribeByoipCidrs operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeByoipCidrsRequest object being passed to this operation.
     - Returns: A future to the DescribeByoipCidrsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeByoipCidrs(
            input: ElasticComputeCloudModel.DescribeByoipCidrsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeByoipCidrsResult>

    /**
     Invokes the DescribeCapacityReservations operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeCapacityReservationsRequest object being passed to this operation.
     - Returns: A future to the DescribeCapacityReservationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeCapacityReservations(
            input: ElasticComputeCloudModel.DescribeCapacityReservationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeCapacityReservationsResult>

    /**
     Invokes the DescribeCarrierGateways operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeCarrierGatewaysRequest object being passed to this operation.
     - Returns: A future to the DescribeCarrierGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeCarrierGateways(
            input: ElasticComputeCloudModel.DescribeCarrierGatewaysRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeCarrierGatewaysResult>

    /**
     Invokes the DescribeClassicLinkInstances operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeClassicLinkInstancesRequest object being passed to this operation.
     - Returns: A future to the DescribeClassicLinkInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeClassicLinkInstances(
            input: ElasticComputeCloudModel.DescribeClassicLinkInstancesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeClassicLinkInstancesResult>

    /**
     Invokes the DescribeClientVpnAuthorizationRules operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeClientVpnAuthorizationRulesRequest object being passed to this operation.
     - Returns: A future to the DescribeClientVpnAuthorizationRulesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeClientVpnAuthorizationRules(
            input: ElasticComputeCloudModel.DescribeClientVpnAuthorizationRulesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeClientVpnAuthorizationRulesResult>

    /**
     Invokes the DescribeClientVpnConnections operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeClientVpnConnectionsRequest object being passed to this operation.
     - Returns: A future to the DescribeClientVpnConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeClientVpnConnections(
            input: ElasticComputeCloudModel.DescribeClientVpnConnectionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeClientVpnConnectionsResult>

    /**
     Invokes the DescribeClientVpnEndpoints operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeClientVpnEndpointsRequest object being passed to this operation.
     - Returns: A future to the DescribeClientVpnEndpointsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeClientVpnEndpoints(
            input: ElasticComputeCloudModel.DescribeClientVpnEndpointsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeClientVpnEndpointsResult>

    /**
     Invokes the DescribeClientVpnRoutes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeClientVpnRoutesRequest object being passed to this operation.
     - Returns: A future to the DescribeClientVpnRoutesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeClientVpnRoutes(
            input: ElasticComputeCloudModel.DescribeClientVpnRoutesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeClientVpnRoutesResult>

    /**
     Invokes the DescribeClientVpnTargetNetworks operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeClientVpnTargetNetworksRequest object being passed to this operation.
     - Returns: A future to the DescribeClientVpnTargetNetworksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeClientVpnTargetNetworks(
            input: ElasticComputeCloudModel.DescribeClientVpnTargetNetworksRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeClientVpnTargetNetworksResult>

    /**
     Invokes the DescribeCoipPools operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeCoipPoolsRequest object being passed to this operation.
     - Returns: A future to the DescribeCoipPoolsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeCoipPools(
            input: ElasticComputeCloudModel.DescribeCoipPoolsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeCoipPoolsResult>

    /**
     Invokes the DescribeConversionTasks operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeConversionTasksRequest object being passed to this operation.
     - Returns: A future to the DescribeConversionTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeConversionTasks(
            input: ElasticComputeCloudModel.DescribeConversionTasksRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeConversionTasksResult>

    /**
     Invokes the DescribeCustomerGateways operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeCustomerGatewaysRequest object being passed to this operation.
     - Returns: A future to the DescribeCustomerGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeCustomerGateways(
            input: ElasticComputeCloudModel.DescribeCustomerGatewaysRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeCustomerGatewaysResult>

    /**
     Invokes the DescribeDhcpOptions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeDhcpOptionsRequest object being passed to this operation.
     - Returns: A future to the DescribeDhcpOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeDhcpOptions(
            input: ElasticComputeCloudModel.DescribeDhcpOptionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeDhcpOptionsResult>

    /**
     Invokes the DescribeEgressOnlyInternetGateways operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeEgressOnlyInternetGatewaysRequest object being passed to this operation.
     - Returns: A future to the DescribeEgressOnlyInternetGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeEgressOnlyInternetGateways(
            input: ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeEgressOnlyInternetGatewaysResult>

    /**
     Invokes the DescribeElasticGpus operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeElasticGpusRequest object being passed to this operation.
     - Returns: A future to the DescribeElasticGpusResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeElasticGpus(
            input: ElasticComputeCloudModel.DescribeElasticGpusRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeElasticGpusResult>

    /**
     Invokes the DescribeExportImageTasks operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeExportImageTasksRequest object being passed to this operation.
     - Returns: A future to the DescribeExportImageTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeExportImageTasks(
            input: ElasticComputeCloudModel.DescribeExportImageTasksRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeExportImageTasksResult>

    /**
     Invokes the DescribeExportTasks operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeExportTasksRequest object being passed to this operation.
     - Returns: A future to the DescribeExportTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeExportTasks(
            input: ElasticComputeCloudModel.DescribeExportTasksRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeExportTasksResult>

    /**
     Invokes the DescribeFastSnapshotRestores operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeFastSnapshotRestoresRequest object being passed to this operation.
     - Returns: A future to the DescribeFastSnapshotRestoresResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeFastSnapshotRestores(
            input: ElasticComputeCloudModel.DescribeFastSnapshotRestoresRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeFastSnapshotRestoresResult>

    /**
     Invokes the DescribeFleetHistory operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeFleetHistoryRequest object being passed to this operation.
     - Returns: A future to the DescribeFleetHistoryResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeFleetHistory(
            input: ElasticComputeCloudModel.DescribeFleetHistoryRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeFleetHistoryResult>

    /**
     Invokes the DescribeFleetInstances operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeFleetInstancesRequest object being passed to this operation.
     - Returns: A future to the DescribeFleetInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeFleetInstances(
            input: ElasticComputeCloudModel.DescribeFleetInstancesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeFleetInstancesResult>

    /**
     Invokes the DescribeFleets operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeFleetsRequest object being passed to this operation.
     - Returns: A future to the DescribeFleetsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeFleets(
            input: ElasticComputeCloudModel.DescribeFleetsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeFleetsResult>

    /**
     Invokes the DescribeFlowLogs operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeFlowLogsRequest object being passed to this operation.
     - Returns: A future to the DescribeFlowLogsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeFlowLogs(
            input: ElasticComputeCloudModel.DescribeFlowLogsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeFlowLogsResult>

    /**
     Invokes the DescribeFpgaImageAttribute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeFpgaImageAttributeRequest object being passed to this operation.
     - Returns: A future to the DescribeFpgaImageAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeFpgaImageAttribute(
            input: ElasticComputeCloudModel.DescribeFpgaImageAttributeRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeFpgaImageAttributeResult>

    /**
     Invokes the DescribeFpgaImages operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeFpgaImagesRequest object being passed to this operation.
     - Returns: A future to the DescribeFpgaImagesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeFpgaImages(
            input: ElasticComputeCloudModel.DescribeFpgaImagesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeFpgaImagesResult>

    /**
     Invokes the DescribeHostReservationOfferings operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeHostReservationOfferingsRequest object being passed to this operation.
     - Returns: A future to the DescribeHostReservationOfferingsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeHostReservationOfferings(
            input: ElasticComputeCloudModel.DescribeHostReservationOfferingsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeHostReservationOfferingsResult>

    /**
     Invokes the DescribeHostReservations operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeHostReservationsRequest object being passed to this operation.
     - Returns: A future to the DescribeHostReservationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeHostReservations(
            input: ElasticComputeCloudModel.DescribeHostReservationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeHostReservationsResult>

    /**
     Invokes the DescribeHosts operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeHostsRequest object being passed to this operation.
     - Returns: A future to the DescribeHostsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeHosts(
            input: ElasticComputeCloudModel.DescribeHostsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeHostsResult>

    /**
     Invokes the DescribeIamInstanceProfileAssociations operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeIamInstanceProfileAssociationsRequest object being passed to this operation.
     - Returns: A future to the DescribeIamInstanceProfileAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeIamInstanceProfileAssociations(
            input: ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeIamInstanceProfileAssociationsResult>

    /**
     Invokes the DescribeIdFormat operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeIdFormatRequest object being passed to this operation.
     - Returns: A future to the DescribeIdFormatResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeIdFormat(
            input: ElasticComputeCloudModel.DescribeIdFormatRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeIdFormatResult>

    /**
     Invokes the DescribeIdentityIdFormat operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeIdentityIdFormatRequest object being passed to this operation.
     - Returns: A future to the DescribeIdentityIdFormatResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeIdentityIdFormat(
            input: ElasticComputeCloudModel.DescribeIdentityIdFormatRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeIdentityIdFormatResult>

    /**
     Invokes the DescribeImageAttribute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeImageAttributeRequest object being passed to this operation.
     - Returns: A future to the ImageAttribute object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeImageAttribute(
            input: ElasticComputeCloudModel.DescribeImageAttributeRequest) -> EventLoopFuture<ElasticComputeCloudModel.ImageAttribute>

    /**
     Invokes the DescribeImages operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeImagesRequest object being passed to this operation.
     - Returns: A future to the DescribeImagesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeImages(
            input: ElasticComputeCloudModel.DescribeImagesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeImagesResult>

    /**
     Invokes the DescribeImportImageTasks operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeImportImageTasksRequest object being passed to this operation.
     - Returns: A future to the DescribeImportImageTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeImportImageTasks(
            input: ElasticComputeCloudModel.DescribeImportImageTasksRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeImportImageTasksResult>

    /**
     Invokes the DescribeImportSnapshotTasks operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeImportSnapshotTasksRequest object being passed to this operation.
     - Returns: A future to the DescribeImportSnapshotTasksResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeImportSnapshotTasks(
            input: ElasticComputeCloudModel.DescribeImportSnapshotTasksRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeImportSnapshotTasksResult>

    /**
     Invokes the DescribeInstanceAttribute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeInstanceAttributeRequest object being passed to this operation.
     - Returns: A future to the InstanceAttribute object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeInstanceAttribute(
            input: ElasticComputeCloudModel.DescribeInstanceAttributeRequest) -> EventLoopFuture<ElasticComputeCloudModel.InstanceAttribute>

    /**
     Invokes the DescribeInstanceCreditSpecifications operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeInstanceCreditSpecificationsRequest object being passed to this operation.
     - Returns: A future to the DescribeInstanceCreditSpecificationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeInstanceCreditSpecifications(
            input: ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeInstanceCreditSpecificationsResult>

    /**
     Invokes the DescribeInstanceEventNotificationAttributes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeInstanceEventNotificationAttributesRequest object being passed to this operation.
     - Returns: A future to the DescribeInstanceEventNotificationAttributesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeInstanceEventNotificationAttributes(
            input: ElasticComputeCloudModel.DescribeInstanceEventNotificationAttributesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeInstanceEventNotificationAttributesResult>

    /**
     Invokes the DescribeInstanceStatus operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeInstanceStatusRequest object being passed to this operation.
     - Returns: A future to the DescribeInstanceStatusResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeInstanceStatus(
            input: ElasticComputeCloudModel.DescribeInstanceStatusRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeInstanceStatusResult>

    /**
     Invokes the DescribeInstanceTypeOfferings operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeInstanceTypeOfferingsRequest object being passed to this operation.
     - Returns: A future to the DescribeInstanceTypeOfferingsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeInstanceTypeOfferings(
            input: ElasticComputeCloudModel.DescribeInstanceTypeOfferingsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeInstanceTypeOfferingsResult>

    /**
     Invokes the DescribeInstanceTypes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeInstanceTypesRequest object being passed to this operation.
     - Returns: A future to the DescribeInstanceTypesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeInstanceTypes(
            input: ElasticComputeCloudModel.DescribeInstanceTypesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeInstanceTypesResult>

    /**
     Invokes the DescribeInstances operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeInstancesRequest object being passed to this operation.
     - Returns: A future to the DescribeInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeInstances(
            input: ElasticComputeCloudModel.DescribeInstancesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeInstancesResult>

    /**
     Invokes the DescribeInternetGateways operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeInternetGatewaysRequest object being passed to this operation.
     - Returns: A future to the DescribeInternetGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeInternetGateways(
            input: ElasticComputeCloudModel.DescribeInternetGatewaysRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeInternetGatewaysResult>

    /**
     Invokes the DescribeIpv6Pools operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeIpv6PoolsRequest object being passed to this operation.
     - Returns: A future to the DescribeIpv6PoolsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeIpv6Pools(
            input: ElasticComputeCloudModel.DescribeIpv6PoolsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeIpv6PoolsResult>

    /**
     Invokes the DescribeKeyPairs operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeKeyPairsRequest object being passed to this operation.
     - Returns: A future to the DescribeKeyPairsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeKeyPairs(
            input: ElasticComputeCloudModel.DescribeKeyPairsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeKeyPairsResult>

    /**
     Invokes the DescribeLaunchTemplateVersions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeLaunchTemplateVersionsRequest object being passed to this operation.
     - Returns: A future to the DescribeLaunchTemplateVersionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeLaunchTemplateVersions(
            input: ElasticComputeCloudModel.DescribeLaunchTemplateVersionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeLaunchTemplateVersionsResult>

    /**
     Invokes the DescribeLaunchTemplates operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeLaunchTemplatesRequest object being passed to this operation.
     - Returns: A future to the DescribeLaunchTemplatesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeLaunchTemplates(
            input: ElasticComputeCloudModel.DescribeLaunchTemplatesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeLaunchTemplatesResult>

    /**
     Invokes the DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequest object being passed to this operation.
     - Returns: A future to the DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeLocalGatewayRouteTableVirtualInterfaceGroupAssociations(
            input: ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult>

    /**
     Invokes the DescribeLocalGatewayRouteTableVpcAssociations operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeLocalGatewayRouteTableVpcAssociationsRequest object being passed to this operation.
     - Returns: A future to the DescribeLocalGatewayRouteTableVpcAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeLocalGatewayRouteTableVpcAssociations(
            input: ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVpcAssociationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeLocalGatewayRouteTableVpcAssociationsResult>

    /**
     Invokes the DescribeLocalGatewayRouteTables operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeLocalGatewayRouteTablesRequest object being passed to this operation.
     - Returns: A future to the DescribeLocalGatewayRouteTablesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeLocalGatewayRouteTables(
            input: ElasticComputeCloudModel.DescribeLocalGatewayRouteTablesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeLocalGatewayRouteTablesResult>

    /**
     Invokes the DescribeLocalGatewayVirtualInterfaceGroups operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeLocalGatewayVirtualInterfaceGroupsRequest object being passed to this operation.
     - Returns: A future to the DescribeLocalGatewayVirtualInterfaceGroupsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeLocalGatewayVirtualInterfaceGroups(
            input: ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfaceGroupsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfaceGroupsResult>

    /**
     Invokes the DescribeLocalGatewayVirtualInterfaces operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeLocalGatewayVirtualInterfacesRequest object being passed to this operation.
     - Returns: A future to the DescribeLocalGatewayVirtualInterfacesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeLocalGatewayVirtualInterfaces(
            input: ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfacesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeLocalGatewayVirtualInterfacesResult>

    /**
     Invokes the DescribeLocalGateways operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeLocalGatewaysRequest object being passed to this operation.
     - Returns: A future to the DescribeLocalGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeLocalGateways(
            input: ElasticComputeCloudModel.DescribeLocalGatewaysRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeLocalGatewaysResult>

    /**
     Invokes the DescribeManagedPrefixLists operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeManagedPrefixListsRequest object being passed to this operation.
     - Returns: A future to the DescribeManagedPrefixListsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeManagedPrefixLists(
            input: ElasticComputeCloudModel.DescribeManagedPrefixListsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeManagedPrefixListsResult>

    /**
     Invokes the DescribeMovingAddresses operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeMovingAddressesRequest object being passed to this operation.
     - Returns: A future to the DescribeMovingAddressesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeMovingAddresses(
            input: ElasticComputeCloudModel.DescribeMovingAddressesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeMovingAddressesResult>

    /**
     Invokes the DescribeNatGateways operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeNatGatewaysRequest object being passed to this operation.
     - Returns: A future to the DescribeNatGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeNatGateways(
            input: ElasticComputeCloudModel.DescribeNatGatewaysRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeNatGatewaysResult>

    /**
     Invokes the DescribeNetworkAcls operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeNetworkAclsRequest object being passed to this operation.
     - Returns: A future to the DescribeNetworkAclsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeNetworkAcls(
            input: ElasticComputeCloudModel.DescribeNetworkAclsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeNetworkAclsResult>

    /**
     Invokes the DescribeNetworkInsightsAnalyses operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeNetworkInsightsAnalysesRequest object being passed to this operation.
     - Returns: A future to the DescribeNetworkInsightsAnalysesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeNetworkInsightsAnalyses(
            input: ElasticComputeCloudModel.DescribeNetworkInsightsAnalysesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeNetworkInsightsAnalysesResult>

    /**
     Invokes the DescribeNetworkInsightsPaths operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeNetworkInsightsPathsRequest object being passed to this operation.
     - Returns: A future to the DescribeNetworkInsightsPathsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeNetworkInsightsPaths(
            input: ElasticComputeCloudModel.DescribeNetworkInsightsPathsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeNetworkInsightsPathsResult>

    /**
     Invokes the DescribeNetworkInterfaceAttribute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeNetworkInterfaceAttributeRequest object being passed to this operation.
     - Returns: A future to the DescribeNetworkInterfaceAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeNetworkInterfaceAttribute(
            input: ElasticComputeCloudModel.DescribeNetworkInterfaceAttributeRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeNetworkInterfaceAttributeResult>

    /**
     Invokes the DescribeNetworkInterfacePermissions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeNetworkInterfacePermissionsRequest object being passed to this operation.
     - Returns: A future to the DescribeNetworkInterfacePermissionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeNetworkInterfacePermissions(
            input: ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeNetworkInterfacePermissionsResult>

    /**
     Invokes the DescribeNetworkInterfaces operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeNetworkInterfacesRequest object being passed to this operation.
     - Returns: A future to the DescribeNetworkInterfacesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeNetworkInterfaces(
            input: ElasticComputeCloudModel.DescribeNetworkInterfacesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeNetworkInterfacesResult>

    /**
     Invokes the DescribePlacementGroups operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribePlacementGroupsRequest object being passed to this operation.
     - Returns: A future to the DescribePlacementGroupsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describePlacementGroups(
            input: ElasticComputeCloudModel.DescribePlacementGroupsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribePlacementGroupsResult>

    /**
     Invokes the DescribePrefixLists operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribePrefixListsRequest object being passed to this operation.
     - Returns: A future to the DescribePrefixListsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describePrefixLists(
            input: ElasticComputeCloudModel.DescribePrefixListsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribePrefixListsResult>

    /**
     Invokes the DescribePrincipalIdFormat operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribePrincipalIdFormatRequest object being passed to this operation.
     - Returns: A future to the DescribePrincipalIdFormatResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describePrincipalIdFormat(
            input: ElasticComputeCloudModel.DescribePrincipalIdFormatRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribePrincipalIdFormatResult>

    /**
     Invokes the DescribePublicIpv4Pools operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribePublicIpv4PoolsRequest object being passed to this operation.
     - Returns: A future to the DescribePublicIpv4PoolsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describePublicIpv4Pools(
            input: ElasticComputeCloudModel.DescribePublicIpv4PoolsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribePublicIpv4PoolsResult>

    /**
     Invokes the DescribeRegions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeRegionsRequest object being passed to this operation.
     - Returns: A future to the DescribeRegionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeRegions(
            input: ElasticComputeCloudModel.DescribeRegionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeRegionsResult>

    /**
     Invokes the DescribeReservedInstances operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeReservedInstancesRequest object being passed to this operation.
     - Returns: A future to the DescribeReservedInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeReservedInstances(
            input: ElasticComputeCloudModel.DescribeReservedInstancesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeReservedInstancesResult>

    /**
     Invokes the DescribeReservedInstancesListings operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeReservedInstancesListingsRequest object being passed to this operation.
     - Returns: A future to the DescribeReservedInstancesListingsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeReservedInstancesListings(
            input: ElasticComputeCloudModel.DescribeReservedInstancesListingsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeReservedInstancesListingsResult>

    /**
     Invokes the DescribeReservedInstancesModifications operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeReservedInstancesModificationsRequest object being passed to this operation.
     - Returns: A future to the DescribeReservedInstancesModificationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeReservedInstancesModifications(
            input: ElasticComputeCloudModel.DescribeReservedInstancesModificationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeReservedInstancesModificationsResult>

    /**
     Invokes the DescribeReservedInstancesOfferings operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeReservedInstancesOfferingsRequest object being passed to this operation.
     - Returns: A future to the DescribeReservedInstancesOfferingsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeReservedInstancesOfferings(
            input: ElasticComputeCloudModel.DescribeReservedInstancesOfferingsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeReservedInstancesOfferingsResult>

    /**
     Invokes the DescribeRouteTables operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeRouteTablesRequest object being passed to this operation.
     - Returns: A future to the DescribeRouteTablesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeRouteTables(
            input: ElasticComputeCloudModel.DescribeRouteTablesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeRouteTablesResult>

    /**
     Invokes the DescribeScheduledInstanceAvailability operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeScheduledInstanceAvailabilityRequest object being passed to this operation.
     - Returns: A future to the DescribeScheduledInstanceAvailabilityResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeScheduledInstanceAvailability(
            input: ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeScheduledInstanceAvailabilityResult>

    /**
     Invokes the DescribeScheduledInstances operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeScheduledInstancesRequest object being passed to this operation.
     - Returns: A future to the DescribeScheduledInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeScheduledInstances(
            input: ElasticComputeCloudModel.DescribeScheduledInstancesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeScheduledInstancesResult>

    /**
     Invokes the DescribeSecurityGroupReferences operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeSecurityGroupReferencesRequest object being passed to this operation.
     - Returns: A future to the DescribeSecurityGroupReferencesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSecurityGroupReferences(
            input: ElasticComputeCloudModel.DescribeSecurityGroupReferencesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeSecurityGroupReferencesResult>

    /**
     Invokes the DescribeSecurityGroups operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeSecurityGroupsRequest object being passed to this operation.
     - Returns: A future to the DescribeSecurityGroupsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSecurityGroups(
            input: ElasticComputeCloudModel.DescribeSecurityGroupsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeSecurityGroupsResult>

    /**
     Invokes the DescribeSnapshotAttribute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeSnapshotAttributeRequest object being passed to this operation.
     - Returns: A future to the DescribeSnapshotAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSnapshotAttribute(
            input: ElasticComputeCloudModel.DescribeSnapshotAttributeRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeSnapshotAttributeResult>

    /**
     Invokes the DescribeSnapshots operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeSnapshotsRequest object being passed to this operation.
     - Returns: A future to the DescribeSnapshotsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSnapshots(
            input: ElasticComputeCloudModel.DescribeSnapshotsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeSnapshotsResult>

    /**
     Invokes the DescribeSpotDatafeedSubscription operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeSpotDatafeedSubscriptionRequest object being passed to this operation.
     - Returns: A future to the DescribeSpotDatafeedSubscriptionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSpotDatafeedSubscription(
            input: ElasticComputeCloudModel.DescribeSpotDatafeedSubscriptionRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeSpotDatafeedSubscriptionResult>

    /**
     Invokes the DescribeSpotFleetInstances operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeSpotFleetInstancesRequest object being passed to this operation.
     - Returns: A future to the DescribeSpotFleetInstancesResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSpotFleetInstances(
            input: ElasticComputeCloudModel.DescribeSpotFleetInstancesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeSpotFleetInstancesResponse>

    /**
     Invokes the DescribeSpotFleetRequestHistory operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeSpotFleetRequestHistoryRequest object being passed to this operation.
     - Returns: A future to the DescribeSpotFleetRequestHistoryResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSpotFleetRequestHistory(
            input: ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeSpotFleetRequestHistoryResponse>

    /**
     Invokes the DescribeSpotFleetRequests operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeSpotFleetRequestsRequest object being passed to this operation.
     - Returns: A future to the DescribeSpotFleetRequestsResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSpotFleetRequests(
            input: ElasticComputeCloudModel.DescribeSpotFleetRequestsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeSpotFleetRequestsResponse>

    /**
     Invokes the DescribeSpotInstanceRequests operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeSpotInstanceRequestsRequest object being passed to this operation.
     - Returns: A future to the DescribeSpotInstanceRequestsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSpotInstanceRequests(
            input: ElasticComputeCloudModel.DescribeSpotInstanceRequestsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeSpotInstanceRequestsResult>

    /**
     Invokes the DescribeSpotPriceHistory operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeSpotPriceHistoryRequest object being passed to this operation.
     - Returns: A future to the DescribeSpotPriceHistoryResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSpotPriceHistory(
            input: ElasticComputeCloudModel.DescribeSpotPriceHistoryRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeSpotPriceHistoryResult>

    /**
     Invokes the DescribeStaleSecurityGroups operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeStaleSecurityGroupsRequest object being passed to this operation.
     - Returns: A future to the DescribeStaleSecurityGroupsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeStaleSecurityGroups(
            input: ElasticComputeCloudModel.DescribeStaleSecurityGroupsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeStaleSecurityGroupsResult>

    /**
     Invokes the DescribeSubnets operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeSubnetsRequest object being passed to this operation.
     - Returns: A future to the DescribeSubnetsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSubnets(
            input: ElasticComputeCloudModel.DescribeSubnetsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeSubnetsResult>

    /**
     Invokes the DescribeTags operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeTagsRequest object being passed to this operation.
     - Returns: A future to the DescribeTagsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTags(
            input: ElasticComputeCloudModel.DescribeTagsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeTagsResult>

    /**
     Invokes the DescribeTrafficMirrorFilters operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeTrafficMirrorFiltersRequest object being passed to this operation.
     - Returns: A future to the DescribeTrafficMirrorFiltersResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTrafficMirrorFilters(
            input: ElasticComputeCloudModel.DescribeTrafficMirrorFiltersRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeTrafficMirrorFiltersResult>

    /**
     Invokes the DescribeTrafficMirrorSessions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeTrafficMirrorSessionsRequest object being passed to this operation.
     - Returns: A future to the DescribeTrafficMirrorSessionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTrafficMirrorSessions(
            input: ElasticComputeCloudModel.DescribeTrafficMirrorSessionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeTrafficMirrorSessionsResult>

    /**
     Invokes the DescribeTrafficMirrorTargets operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeTrafficMirrorTargetsRequest object being passed to this operation.
     - Returns: A future to the DescribeTrafficMirrorTargetsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTrafficMirrorTargets(
            input: ElasticComputeCloudModel.DescribeTrafficMirrorTargetsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeTrafficMirrorTargetsResult>

    /**
     Invokes the DescribeTransitGatewayAttachments operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeTransitGatewayAttachmentsRequest object being passed to this operation.
     - Returns: A future to the DescribeTransitGatewayAttachmentsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTransitGatewayAttachments(
            input: ElasticComputeCloudModel.DescribeTransitGatewayAttachmentsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeTransitGatewayAttachmentsResult>

    /**
     Invokes the DescribeTransitGatewayConnectPeers operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeTransitGatewayConnectPeersRequest object being passed to this operation.
     - Returns: A future to the DescribeTransitGatewayConnectPeersResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTransitGatewayConnectPeers(
            input: ElasticComputeCloudModel.DescribeTransitGatewayConnectPeersRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeTransitGatewayConnectPeersResult>

    /**
     Invokes the DescribeTransitGatewayConnects operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeTransitGatewayConnectsRequest object being passed to this operation.
     - Returns: A future to the DescribeTransitGatewayConnectsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTransitGatewayConnects(
            input: ElasticComputeCloudModel.DescribeTransitGatewayConnectsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeTransitGatewayConnectsResult>

    /**
     Invokes the DescribeTransitGatewayMulticastDomains operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeTransitGatewayMulticastDomainsRequest object being passed to this operation.
     - Returns: A future to the DescribeTransitGatewayMulticastDomainsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTransitGatewayMulticastDomains(
            input: ElasticComputeCloudModel.DescribeTransitGatewayMulticastDomainsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeTransitGatewayMulticastDomainsResult>

    /**
     Invokes the DescribeTransitGatewayPeeringAttachments operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeTransitGatewayPeeringAttachmentsRequest object being passed to this operation.
     - Returns: A future to the DescribeTransitGatewayPeeringAttachmentsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTransitGatewayPeeringAttachments(
            input: ElasticComputeCloudModel.DescribeTransitGatewayPeeringAttachmentsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeTransitGatewayPeeringAttachmentsResult>

    /**
     Invokes the DescribeTransitGatewayRouteTables operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeTransitGatewayRouteTablesRequest object being passed to this operation.
     - Returns: A future to the DescribeTransitGatewayRouteTablesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTransitGatewayRouteTables(
            input: ElasticComputeCloudModel.DescribeTransitGatewayRouteTablesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeTransitGatewayRouteTablesResult>

    /**
     Invokes the DescribeTransitGatewayVpcAttachments operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeTransitGatewayVpcAttachmentsRequest object being passed to this operation.
     - Returns: A future to the DescribeTransitGatewayVpcAttachmentsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTransitGatewayVpcAttachments(
            input: ElasticComputeCloudModel.DescribeTransitGatewayVpcAttachmentsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeTransitGatewayVpcAttachmentsResult>

    /**
     Invokes the DescribeTransitGateways operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeTransitGatewaysRequest object being passed to this operation.
     - Returns: A future to the DescribeTransitGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeTransitGateways(
            input: ElasticComputeCloudModel.DescribeTransitGatewaysRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeTransitGatewaysResult>

    /**
     Invokes the DescribeVolumeAttribute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeVolumeAttributeRequest object being passed to this operation.
     - Returns: A future to the DescribeVolumeAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVolumeAttribute(
            input: ElasticComputeCloudModel.DescribeVolumeAttributeRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeVolumeAttributeResult>

    /**
     Invokes the DescribeVolumeStatus operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeVolumeStatusRequest object being passed to this operation.
     - Returns: A future to the DescribeVolumeStatusResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVolumeStatus(
            input: ElasticComputeCloudModel.DescribeVolumeStatusRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeVolumeStatusResult>

    /**
     Invokes the DescribeVolumes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeVolumesRequest object being passed to this operation.
     - Returns: A future to the DescribeVolumesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVolumes(
            input: ElasticComputeCloudModel.DescribeVolumesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeVolumesResult>

    /**
     Invokes the DescribeVolumesModifications operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeVolumesModificationsRequest object being passed to this operation.
     - Returns: A future to the DescribeVolumesModificationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVolumesModifications(
            input: ElasticComputeCloudModel.DescribeVolumesModificationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeVolumesModificationsResult>

    /**
     Invokes the DescribeVpcAttribute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeVpcAttributeRequest object being passed to this operation.
     - Returns: A future to the DescribeVpcAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcAttribute(
            input: ElasticComputeCloudModel.DescribeVpcAttributeRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeVpcAttributeResult>

    /**
     Invokes the DescribeVpcClassicLink operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeVpcClassicLinkRequest object being passed to this operation.
     - Returns: A future to the DescribeVpcClassicLinkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcClassicLink(
            input: ElasticComputeCloudModel.DescribeVpcClassicLinkRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeVpcClassicLinkResult>

    /**
     Invokes the DescribeVpcClassicLinkDnsSupport operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeVpcClassicLinkDnsSupportRequest object being passed to this operation.
     - Returns: A future to the DescribeVpcClassicLinkDnsSupportResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcClassicLinkDnsSupport(
            input: ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeVpcClassicLinkDnsSupportResult>

    /**
     Invokes the DescribeVpcEndpointConnectionNotifications operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeVpcEndpointConnectionNotificationsRequest object being passed to this operation.
     - Returns: A future to the DescribeVpcEndpointConnectionNotificationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcEndpointConnectionNotifications(
            input: ElasticComputeCloudModel.DescribeVpcEndpointConnectionNotificationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeVpcEndpointConnectionNotificationsResult>

    /**
     Invokes the DescribeVpcEndpointConnections operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeVpcEndpointConnectionsRequest object being passed to this operation.
     - Returns: A future to the DescribeVpcEndpointConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcEndpointConnections(
            input: ElasticComputeCloudModel.DescribeVpcEndpointConnectionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeVpcEndpointConnectionsResult>

    /**
     Invokes the DescribeVpcEndpointServiceConfigurations operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeVpcEndpointServiceConfigurationsRequest object being passed to this operation.
     - Returns: A future to the DescribeVpcEndpointServiceConfigurationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcEndpointServiceConfigurations(
            input: ElasticComputeCloudModel.DescribeVpcEndpointServiceConfigurationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeVpcEndpointServiceConfigurationsResult>

    /**
     Invokes the DescribeVpcEndpointServicePermissions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeVpcEndpointServicePermissionsRequest object being passed to this operation.
     - Returns: A future to the DescribeVpcEndpointServicePermissionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcEndpointServicePermissions(
            input: ElasticComputeCloudModel.DescribeVpcEndpointServicePermissionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeVpcEndpointServicePermissionsResult>

    /**
     Invokes the DescribeVpcEndpointServices operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeVpcEndpointServicesRequest object being passed to this operation.
     - Returns: A future to the DescribeVpcEndpointServicesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcEndpointServices(
            input: ElasticComputeCloudModel.DescribeVpcEndpointServicesRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeVpcEndpointServicesResult>

    /**
     Invokes the DescribeVpcEndpoints operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeVpcEndpointsRequest object being passed to this operation.
     - Returns: A future to the DescribeVpcEndpointsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcEndpoints(
            input: ElasticComputeCloudModel.DescribeVpcEndpointsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeVpcEndpointsResult>

    /**
     Invokes the DescribeVpcPeeringConnections operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeVpcPeeringConnectionsRequest object being passed to this operation.
     - Returns: A future to the DescribeVpcPeeringConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcPeeringConnections(
            input: ElasticComputeCloudModel.DescribeVpcPeeringConnectionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeVpcPeeringConnectionsResult>

    /**
     Invokes the DescribeVpcs operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeVpcsRequest object being passed to this operation.
     - Returns: A future to the DescribeVpcsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpcs(
            input: ElasticComputeCloudModel.DescribeVpcsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeVpcsResult>

    /**
     Invokes the DescribeVpnConnections operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeVpnConnectionsRequest object being passed to this operation.
     - Returns: A future to the DescribeVpnConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpnConnections(
            input: ElasticComputeCloudModel.DescribeVpnConnectionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeVpnConnectionsResult>

    /**
     Invokes the DescribeVpnGateways operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeVpnGatewaysRequest object being passed to this operation.
     - Returns: A future to the DescribeVpnGatewaysResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeVpnGateways(
            input: ElasticComputeCloudModel.DescribeVpnGatewaysRequest) -> EventLoopFuture<ElasticComputeCloudModel.DescribeVpnGatewaysResult>

    /**
     Invokes the DetachClassicLinkVpc operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DetachClassicLinkVpcRequest object being passed to this operation.
     - Returns: A future to the DetachClassicLinkVpcResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func detachClassicLinkVpc(
            input: ElasticComputeCloudModel.DetachClassicLinkVpcRequest) -> EventLoopFuture<ElasticComputeCloudModel.DetachClassicLinkVpcResult>

    /**
     Invokes the DetachInternetGateway operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DetachInternetGatewayRequest object being passed to this operation.
     */
    func detachInternetGateway(
            input: ElasticComputeCloudModel.DetachInternetGatewayRequest) -> EventLoopFuture<Void>

    /**
     Invokes the DetachNetworkInterface operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DetachNetworkInterfaceRequest object being passed to this operation.
     */
    func detachNetworkInterface(
            input: ElasticComputeCloudModel.DetachNetworkInterfaceRequest) -> EventLoopFuture<Void>

    /**
     Invokes the DetachVolume operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DetachVolumeRequest object being passed to this operation.
     - Returns: A future to the VolumeAttachment object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func detachVolume(
            input: ElasticComputeCloudModel.DetachVolumeRequest) -> EventLoopFuture<ElasticComputeCloudModel.VolumeAttachment>

    /**
     Invokes the DetachVpnGateway operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DetachVpnGatewayRequest object being passed to this operation.
     */
    func detachVpnGateway(
            input: ElasticComputeCloudModel.DetachVpnGatewayRequest) -> EventLoopFuture<Void>

    /**
     Invokes the DisableEbsEncryptionByDefault operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DisableEbsEncryptionByDefaultRequest object being passed to this operation.
     - Returns: A future to the DisableEbsEncryptionByDefaultResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disableEbsEncryptionByDefault(
            input: ElasticComputeCloudModel.DisableEbsEncryptionByDefaultRequest) -> EventLoopFuture<ElasticComputeCloudModel.DisableEbsEncryptionByDefaultResult>

    /**
     Invokes the DisableFastSnapshotRestores operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DisableFastSnapshotRestoresRequest object being passed to this operation.
     - Returns: A future to the DisableFastSnapshotRestoresResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disableFastSnapshotRestores(
            input: ElasticComputeCloudModel.DisableFastSnapshotRestoresRequest) -> EventLoopFuture<ElasticComputeCloudModel.DisableFastSnapshotRestoresResult>

    /**
     Invokes the DisableTransitGatewayRouteTablePropagation operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DisableTransitGatewayRouteTablePropagationRequest object being passed to this operation.
     - Returns: A future to the DisableTransitGatewayRouteTablePropagationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disableTransitGatewayRouteTablePropagation(
            input: ElasticComputeCloudModel.DisableTransitGatewayRouteTablePropagationRequest) -> EventLoopFuture<ElasticComputeCloudModel.DisableTransitGatewayRouteTablePropagationResult>

    /**
     Invokes the DisableVgwRoutePropagation operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DisableVgwRoutePropagationRequest object being passed to this operation.
     */
    func disableVgwRoutePropagation(
            input: ElasticComputeCloudModel.DisableVgwRoutePropagationRequest) -> EventLoopFuture<Void>

    /**
     Invokes the DisableVpcClassicLink operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DisableVpcClassicLinkRequest object being passed to this operation.
     - Returns: A future to the DisableVpcClassicLinkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disableVpcClassicLink(
            input: ElasticComputeCloudModel.DisableVpcClassicLinkRequest) -> EventLoopFuture<ElasticComputeCloudModel.DisableVpcClassicLinkResult>

    /**
     Invokes the DisableVpcClassicLinkDnsSupport operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DisableVpcClassicLinkDnsSupportRequest object being passed to this operation.
     - Returns: A future to the DisableVpcClassicLinkDnsSupportResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disableVpcClassicLinkDnsSupport(
            input: ElasticComputeCloudModel.DisableVpcClassicLinkDnsSupportRequest) -> EventLoopFuture<ElasticComputeCloudModel.DisableVpcClassicLinkDnsSupportResult>

    /**
     Invokes the DisassociateAddress operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DisassociateAddressRequest object being passed to this operation.
     */
    func disassociateAddress(
            input: ElasticComputeCloudModel.DisassociateAddressRequest) -> EventLoopFuture<Void>

    /**
     Invokes the DisassociateClientVpnTargetNetwork operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DisassociateClientVpnTargetNetworkRequest object being passed to this operation.
     - Returns: A future to the DisassociateClientVpnTargetNetworkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disassociateClientVpnTargetNetwork(
            input: ElasticComputeCloudModel.DisassociateClientVpnTargetNetworkRequest) -> EventLoopFuture<ElasticComputeCloudModel.DisassociateClientVpnTargetNetworkResult>

    /**
     Invokes the DisassociateEnclaveCertificateIamRole operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DisassociateEnclaveCertificateIamRoleRequest object being passed to this operation.
     - Returns: A future to the DisassociateEnclaveCertificateIamRoleResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disassociateEnclaveCertificateIamRole(
            input: ElasticComputeCloudModel.DisassociateEnclaveCertificateIamRoleRequest) -> EventLoopFuture<ElasticComputeCloudModel.DisassociateEnclaveCertificateIamRoleResult>

    /**
     Invokes the DisassociateIamInstanceProfile operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DisassociateIamInstanceProfileRequest object being passed to this operation.
     - Returns: A future to the DisassociateIamInstanceProfileResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disassociateIamInstanceProfile(
            input: ElasticComputeCloudModel.DisassociateIamInstanceProfileRequest) -> EventLoopFuture<ElasticComputeCloudModel.DisassociateIamInstanceProfileResult>

    /**
     Invokes the DisassociateRouteTable operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DisassociateRouteTableRequest object being passed to this operation.
     */
    func disassociateRouteTable(
            input: ElasticComputeCloudModel.DisassociateRouteTableRequest) -> EventLoopFuture<Void>

    /**
     Invokes the DisassociateSubnetCidrBlock operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DisassociateSubnetCidrBlockRequest object being passed to this operation.
     - Returns: A future to the DisassociateSubnetCidrBlockResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disassociateSubnetCidrBlock(
            input: ElasticComputeCloudModel.DisassociateSubnetCidrBlockRequest) -> EventLoopFuture<ElasticComputeCloudModel.DisassociateSubnetCidrBlockResult>

    /**
     Invokes the DisassociateTransitGatewayMulticastDomain operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DisassociateTransitGatewayMulticastDomainRequest object being passed to this operation.
     - Returns: A future to the DisassociateTransitGatewayMulticastDomainResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disassociateTransitGatewayMulticastDomain(
            input: ElasticComputeCloudModel.DisassociateTransitGatewayMulticastDomainRequest) -> EventLoopFuture<ElasticComputeCloudModel.DisassociateTransitGatewayMulticastDomainResult>

    /**
     Invokes the DisassociateTransitGatewayRouteTable operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DisassociateTransitGatewayRouteTableRequest object being passed to this operation.
     - Returns: A future to the DisassociateTransitGatewayRouteTableResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disassociateTransitGatewayRouteTable(
            input: ElasticComputeCloudModel.DisassociateTransitGatewayRouteTableRequest) -> EventLoopFuture<ElasticComputeCloudModel.DisassociateTransitGatewayRouteTableResult>

    /**
     Invokes the DisassociateVpcCidrBlock operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DisassociateVpcCidrBlockRequest object being passed to this operation.
     - Returns: A future to the DisassociateVpcCidrBlockResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func disassociateVpcCidrBlock(
            input: ElasticComputeCloudModel.DisassociateVpcCidrBlockRequest) -> EventLoopFuture<ElasticComputeCloudModel.DisassociateVpcCidrBlockResult>

    /**
     Invokes the EnableEbsEncryptionByDefault operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated EnableEbsEncryptionByDefaultRequest object being passed to this operation.
     - Returns: A future to the EnableEbsEncryptionByDefaultResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func enableEbsEncryptionByDefault(
            input: ElasticComputeCloudModel.EnableEbsEncryptionByDefaultRequest) -> EventLoopFuture<ElasticComputeCloudModel.EnableEbsEncryptionByDefaultResult>

    /**
     Invokes the EnableFastSnapshotRestores operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated EnableFastSnapshotRestoresRequest object being passed to this operation.
     - Returns: A future to the EnableFastSnapshotRestoresResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func enableFastSnapshotRestores(
            input: ElasticComputeCloudModel.EnableFastSnapshotRestoresRequest) -> EventLoopFuture<ElasticComputeCloudModel.EnableFastSnapshotRestoresResult>

    /**
     Invokes the EnableTransitGatewayRouteTablePropagation operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated EnableTransitGatewayRouteTablePropagationRequest object being passed to this operation.
     - Returns: A future to the EnableTransitGatewayRouteTablePropagationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func enableTransitGatewayRouteTablePropagation(
            input: ElasticComputeCloudModel.EnableTransitGatewayRouteTablePropagationRequest) -> EventLoopFuture<ElasticComputeCloudModel.EnableTransitGatewayRouteTablePropagationResult>

    /**
     Invokes the EnableVgwRoutePropagation operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated EnableVgwRoutePropagationRequest object being passed to this operation.
     */
    func enableVgwRoutePropagation(
            input: ElasticComputeCloudModel.EnableVgwRoutePropagationRequest) -> EventLoopFuture<Void>

    /**
     Invokes the EnableVolumeIO operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated EnableVolumeIORequest object being passed to this operation.
     */
    func enableVolumeIO(
            input: ElasticComputeCloudModel.EnableVolumeIORequest) -> EventLoopFuture<Void>

    /**
     Invokes the EnableVpcClassicLink operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated EnableVpcClassicLinkRequest object being passed to this operation.
     - Returns: A future to the EnableVpcClassicLinkResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func enableVpcClassicLink(
            input: ElasticComputeCloudModel.EnableVpcClassicLinkRequest) -> EventLoopFuture<ElasticComputeCloudModel.EnableVpcClassicLinkResult>

    /**
     Invokes the EnableVpcClassicLinkDnsSupport operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated EnableVpcClassicLinkDnsSupportRequest object being passed to this operation.
     - Returns: A future to the EnableVpcClassicLinkDnsSupportResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func enableVpcClassicLinkDnsSupport(
            input: ElasticComputeCloudModel.EnableVpcClassicLinkDnsSupportRequest) -> EventLoopFuture<ElasticComputeCloudModel.EnableVpcClassicLinkDnsSupportResult>

    /**
     Invokes the ExportClientVpnClientCertificateRevocationList operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ExportClientVpnClientCertificateRevocationListRequest object being passed to this operation.
     - Returns: A future to the ExportClientVpnClientCertificateRevocationListResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func exportClientVpnClientCertificateRevocationList(
            input: ElasticComputeCloudModel.ExportClientVpnClientCertificateRevocationListRequest) -> EventLoopFuture<ElasticComputeCloudModel.ExportClientVpnClientCertificateRevocationListResult>

    /**
     Invokes the ExportClientVpnClientConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ExportClientVpnClientConfigurationRequest object being passed to this operation.
     - Returns: A future to the ExportClientVpnClientConfigurationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func exportClientVpnClientConfiguration(
            input: ElasticComputeCloudModel.ExportClientVpnClientConfigurationRequest) -> EventLoopFuture<ElasticComputeCloudModel.ExportClientVpnClientConfigurationResult>

    /**
     Invokes the ExportImage operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ExportImageRequest object being passed to this operation.
     - Returns: A future to the ExportImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func exportImage(
            input: ElasticComputeCloudModel.ExportImageRequest) -> EventLoopFuture<ElasticComputeCloudModel.ExportImageResult>

    /**
     Invokes the ExportTransitGatewayRoutes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ExportTransitGatewayRoutesRequest object being passed to this operation.
     - Returns: A future to the ExportTransitGatewayRoutesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func exportTransitGatewayRoutes(
            input: ElasticComputeCloudModel.ExportTransitGatewayRoutesRequest) -> EventLoopFuture<ElasticComputeCloudModel.ExportTransitGatewayRoutesResult>

    /**
     Invokes the GetAssociatedEnclaveCertificateIamRoles operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetAssociatedEnclaveCertificateIamRolesRequest object being passed to this operation.
     - Returns: A future to the GetAssociatedEnclaveCertificateIamRolesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getAssociatedEnclaveCertificateIamRoles(
            input: ElasticComputeCloudModel.GetAssociatedEnclaveCertificateIamRolesRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetAssociatedEnclaveCertificateIamRolesResult>

    /**
     Invokes the GetAssociatedIpv6PoolCidrs operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetAssociatedIpv6PoolCidrsRequest object being passed to this operation.
     - Returns: A future to the GetAssociatedIpv6PoolCidrsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getAssociatedIpv6PoolCidrs(
            input: ElasticComputeCloudModel.GetAssociatedIpv6PoolCidrsRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetAssociatedIpv6PoolCidrsResult>

    /**
     Invokes the GetCapacityReservationUsage operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetCapacityReservationUsageRequest object being passed to this operation.
     - Returns: A future to the GetCapacityReservationUsageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getCapacityReservationUsage(
            input: ElasticComputeCloudModel.GetCapacityReservationUsageRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetCapacityReservationUsageResult>

    /**
     Invokes the GetCoipPoolUsage operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetCoipPoolUsageRequest object being passed to this operation.
     - Returns: A future to the GetCoipPoolUsageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getCoipPoolUsage(
            input: ElasticComputeCloudModel.GetCoipPoolUsageRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetCoipPoolUsageResult>

    /**
     Invokes the GetConsoleOutput operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetConsoleOutputRequest object being passed to this operation.
     - Returns: A future to the GetConsoleOutputResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getConsoleOutput(
            input: ElasticComputeCloudModel.GetConsoleOutputRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetConsoleOutputResult>

    /**
     Invokes the GetConsoleScreenshot operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetConsoleScreenshotRequest object being passed to this operation.
     - Returns: A future to the GetConsoleScreenshotResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getConsoleScreenshot(
            input: ElasticComputeCloudModel.GetConsoleScreenshotRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetConsoleScreenshotResult>

    /**
     Invokes the GetDefaultCreditSpecification operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetDefaultCreditSpecificationRequest object being passed to this operation.
     - Returns: A future to the GetDefaultCreditSpecificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getDefaultCreditSpecification(
            input: ElasticComputeCloudModel.GetDefaultCreditSpecificationRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetDefaultCreditSpecificationResult>

    /**
     Invokes the GetEbsDefaultKmsKeyId operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetEbsDefaultKmsKeyIdRequest object being passed to this operation.
     - Returns: A future to the GetEbsDefaultKmsKeyIdResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getEbsDefaultKmsKeyId(
            input: ElasticComputeCloudModel.GetEbsDefaultKmsKeyIdRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetEbsDefaultKmsKeyIdResult>

    /**
     Invokes the GetEbsEncryptionByDefault operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetEbsEncryptionByDefaultRequest object being passed to this operation.
     - Returns: A future to the GetEbsEncryptionByDefaultResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getEbsEncryptionByDefault(
            input: ElasticComputeCloudModel.GetEbsEncryptionByDefaultRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetEbsEncryptionByDefaultResult>

    /**
     Invokes the GetGroupsForCapacityReservation operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetGroupsForCapacityReservationRequest object being passed to this operation.
     - Returns: A future to the GetGroupsForCapacityReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getGroupsForCapacityReservation(
            input: ElasticComputeCloudModel.GetGroupsForCapacityReservationRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetGroupsForCapacityReservationResult>

    /**
     Invokes the GetHostReservationPurchasePreview operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetHostReservationPurchasePreviewRequest object being passed to this operation.
     - Returns: A future to the GetHostReservationPurchasePreviewResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getHostReservationPurchasePreview(
            input: ElasticComputeCloudModel.GetHostReservationPurchasePreviewRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetHostReservationPurchasePreviewResult>

    /**
     Invokes the GetLaunchTemplateData operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetLaunchTemplateDataRequest object being passed to this operation.
     - Returns: A future to the GetLaunchTemplateDataResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getLaunchTemplateData(
            input: ElasticComputeCloudModel.GetLaunchTemplateDataRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetLaunchTemplateDataResult>

    /**
     Invokes the GetManagedPrefixListAssociations operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetManagedPrefixListAssociationsRequest object being passed to this operation.
     - Returns: A future to the GetManagedPrefixListAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getManagedPrefixListAssociations(
            input: ElasticComputeCloudModel.GetManagedPrefixListAssociationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetManagedPrefixListAssociationsResult>

    /**
     Invokes the GetManagedPrefixListEntries operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetManagedPrefixListEntriesRequest object being passed to this operation.
     - Returns: A future to the GetManagedPrefixListEntriesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getManagedPrefixListEntries(
            input: ElasticComputeCloudModel.GetManagedPrefixListEntriesRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetManagedPrefixListEntriesResult>

    /**
     Invokes the GetPasswordData operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetPasswordDataRequest object being passed to this operation.
     - Returns: A future to the GetPasswordDataResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getPasswordData(
            input: ElasticComputeCloudModel.GetPasswordDataRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetPasswordDataResult>

    /**
     Invokes the GetReservedInstancesExchangeQuote operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetReservedInstancesExchangeQuoteRequest object being passed to this operation.
     - Returns: A future to the GetReservedInstancesExchangeQuoteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getReservedInstancesExchangeQuote(
            input: ElasticComputeCloudModel.GetReservedInstancesExchangeQuoteRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetReservedInstancesExchangeQuoteResult>

    /**
     Invokes the GetTransitGatewayAttachmentPropagations operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetTransitGatewayAttachmentPropagationsRequest object being passed to this operation.
     - Returns: A future to the GetTransitGatewayAttachmentPropagationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getTransitGatewayAttachmentPropagations(
            input: ElasticComputeCloudModel.GetTransitGatewayAttachmentPropagationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetTransitGatewayAttachmentPropagationsResult>

    /**
     Invokes the GetTransitGatewayMulticastDomainAssociations operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetTransitGatewayMulticastDomainAssociationsRequest object being passed to this operation.
     - Returns: A future to the GetTransitGatewayMulticastDomainAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getTransitGatewayMulticastDomainAssociations(
            input: ElasticComputeCloudModel.GetTransitGatewayMulticastDomainAssociationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetTransitGatewayMulticastDomainAssociationsResult>

    /**
     Invokes the GetTransitGatewayPrefixListReferences operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetTransitGatewayPrefixListReferencesRequest object being passed to this operation.
     - Returns: A future to the GetTransitGatewayPrefixListReferencesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getTransitGatewayPrefixListReferences(
            input: ElasticComputeCloudModel.GetTransitGatewayPrefixListReferencesRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetTransitGatewayPrefixListReferencesResult>

    /**
     Invokes the GetTransitGatewayRouteTableAssociations operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetTransitGatewayRouteTableAssociationsRequest object being passed to this operation.
     - Returns: A future to the GetTransitGatewayRouteTableAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getTransitGatewayRouteTableAssociations(
            input: ElasticComputeCloudModel.GetTransitGatewayRouteTableAssociationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetTransitGatewayRouteTableAssociationsResult>

    /**
     Invokes the GetTransitGatewayRouteTablePropagations operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetTransitGatewayRouteTablePropagationsRequest object being passed to this operation.
     - Returns: A future to the GetTransitGatewayRouteTablePropagationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getTransitGatewayRouteTablePropagations(
            input: ElasticComputeCloudModel.GetTransitGatewayRouteTablePropagationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.GetTransitGatewayRouteTablePropagationsResult>

    /**
     Invokes the ImportClientVpnClientCertificateRevocationList operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ImportClientVpnClientCertificateRevocationListRequest object being passed to this operation.
     - Returns: A future to the ImportClientVpnClientCertificateRevocationListResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func importClientVpnClientCertificateRevocationList(
            input: ElasticComputeCloudModel.ImportClientVpnClientCertificateRevocationListRequest) -> EventLoopFuture<ElasticComputeCloudModel.ImportClientVpnClientCertificateRevocationListResult>

    /**
     Invokes the ImportImage operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ImportImageRequest object being passed to this operation.
     - Returns: A future to the ImportImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func importImage(
            input: ElasticComputeCloudModel.ImportImageRequest) -> EventLoopFuture<ElasticComputeCloudModel.ImportImageResult>

    /**
     Invokes the ImportInstance operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ImportInstanceRequest object being passed to this operation.
     - Returns: A future to the ImportInstanceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func importInstance(
            input: ElasticComputeCloudModel.ImportInstanceRequest) -> EventLoopFuture<ElasticComputeCloudModel.ImportInstanceResult>

    /**
     Invokes the ImportKeyPair operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ImportKeyPairRequest object being passed to this operation.
     - Returns: A future to the ImportKeyPairResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func importKeyPair(
            input: ElasticComputeCloudModel.ImportKeyPairRequest) -> EventLoopFuture<ElasticComputeCloudModel.ImportKeyPairResult>

    /**
     Invokes the ImportSnapshot operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ImportSnapshotRequest object being passed to this operation.
     - Returns: A future to the ImportSnapshotResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func importSnapshot(
            input: ElasticComputeCloudModel.ImportSnapshotRequest) -> EventLoopFuture<ElasticComputeCloudModel.ImportSnapshotResult>

    /**
     Invokes the ImportVolume operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ImportVolumeRequest object being passed to this operation.
     - Returns: A future to the ImportVolumeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func importVolume(
            input: ElasticComputeCloudModel.ImportVolumeRequest) -> EventLoopFuture<ElasticComputeCloudModel.ImportVolumeResult>

    /**
     Invokes the ModifyAddressAttribute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyAddressAttributeRequest object being passed to this operation.
     - Returns: A future to the ModifyAddressAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyAddressAttribute(
            input: ElasticComputeCloudModel.ModifyAddressAttributeRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyAddressAttributeResult>

    /**
     Invokes the ModifyAvailabilityZoneGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyAvailabilityZoneGroupRequest object being passed to this operation.
     - Returns: A future to the ModifyAvailabilityZoneGroupResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyAvailabilityZoneGroup(
            input: ElasticComputeCloudModel.ModifyAvailabilityZoneGroupRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyAvailabilityZoneGroupResult>

    /**
     Invokes the ModifyCapacityReservation operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyCapacityReservationRequest object being passed to this operation.
     - Returns: A future to the ModifyCapacityReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyCapacityReservation(
            input: ElasticComputeCloudModel.ModifyCapacityReservationRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyCapacityReservationResult>

    /**
     Invokes the ModifyClientVpnEndpoint operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyClientVpnEndpointRequest object being passed to this operation.
     - Returns: A future to the ModifyClientVpnEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyClientVpnEndpoint(
            input: ElasticComputeCloudModel.ModifyClientVpnEndpointRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyClientVpnEndpointResult>

    /**
     Invokes the ModifyDefaultCreditSpecification operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyDefaultCreditSpecificationRequest object being passed to this operation.
     - Returns: A future to the ModifyDefaultCreditSpecificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyDefaultCreditSpecification(
            input: ElasticComputeCloudModel.ModifyDefaultCreditSpecificationRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyDefaultCreditSpecificationResult>

    /**
     Invokes the ModifyEbsDefaultKmsKeyId operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyEbsDefaultKmsKeyIdRequest object being passed to this operation.
     - Returns: A future to the ModifyEbsDefaultKmsKeyIdResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyEbsDefaultKmsKeyId(
            input: ElasticComputeCloudModel.ModifyEbsDefaultKmsKeyIdRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyEbsDefaultKmsKeyIdResult>

    /**
     Invokes the ModifyFleet operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyFleetRequest object being passed to this operation.
     - Returns: A future to the ModifyFleetResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyFleet(
            input: ElasticComputeCloudModel.ModifyFleetRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyFleetResult>

    /**
     Invokes the ModifyFpgaImageAttribute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyFpgaImageAttributeRequest object being passed to this operation.
     - Returns: A future to the ModifyFpgaImageAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyFpgaImageAttribute(
            input: ElasticComputeCloudModel.ModifyFpgaImageAttributeRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyFpgaImageAttributeResult>

    /**
     Invokes the ModifyHosts operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyHostsRequest object being passed to this operation.
     - Returns: A future to the ModifyHostsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyHosts(
            input: ElasticComputeCloudModel.ModifyHostsRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyHostsResult>

    /**
     Invokes the ModifyIdFormat operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyIdFormatRequest object being passed to this operation.
     */
    func modifyIdFormat(
            input: ElasticComputeCloudModel.ModifyIdFormatRequest) -> EventLoopFuture<Void>

    /**
     Invokes the ModifyIdentityIdFormat operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyIdentityIdFormatRequest object being passed to this operation.
     */
    func modifyIdentityIdFormat(
            input: ElasticComputeCloudModel.ModifyIdentityIdFormatRequest) -> EventLoopFuture<Void>

    /**
     Invokes the ModifyImageAttribute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyImageAttributeRequest object being passed to this operation.
     */
    func modifyImageAttribute(
            input: ElasticComputeCloudModel.ModifyImageAttributeRequest) -> EventLoopFuture<Void>

    /**
     Invokes the ModifyInstanceAttribute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyInstanceAttributeRequest object being passed to this operation.
     */
    func modifyInstanceAttribute(
            input: ElasticComputeCloudModel.ModifyInstanceAttributeRequest) -> EventLoopFuture<Void>

    /**
     Invokes the ModifyInstanceCapacityReservationAttributes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyInstanceCapacityReservationAttributesRequest object being passed to this operation.
     - Returns: A future to the ModifyInstanceCapacityReservationAttributesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyInstanceCapacityReservationAttributes(
            input: ElasticComputeCloudModel.ModifyInstanceCapacityReservationAttributesRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyInstanceCapacityReservationAttributesResult>

    /**
     Invokes the ModifyInstanceCreditSpecification operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyInstanceCreditSpecificationRequest object being passed to this operation.
     - Returns: A future to the ModifyInstanceCreditSpecificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyInstanceCreditSpecification(
            input: ElasticComputeCloudModel.ModifyInstanceCreditSpecificationRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyInstanceCreditSpecificationResult>

    /**
     Invokes the ModifyInstanceEventStartTime operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyInstanceEventStartTimeRequest object being passed to this operation.
     - Returns: A future to the ModifyInstanceEventStartTimeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyInstanceEventStartTime(
            input: ElasticComputeCloudModel.ModifyInstanceEventStartTimeRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyInstanceEventStartTimeResult>

    /**
     Invokes the ModifyInstanceMetadataOptions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyInstanceMetadataOptionsRequest object being passed to this operation.
     - Returns: A future to the ModifyInstanceMetadataOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyInstanceMetadataOptions(
            input: ElasticComputeCloudModel.ModifyInstanceMetadataOptionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyInstanceMetadataOptionsResult>

    /**
     Invokes the ModifyInstancePlacement operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyInstancePlacementRequest object being passed to this operation.
     - Returns: A future to the ModifyInstancePlacementResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyInstancePlacement(
            input: ElasticComputeCloudModel.ModifyInstancePlacementRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyInstancePlacementResult>

    /**
     Invokes the ModifyLaunchTemplate operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyLaunchTemplateRequest object being passed to this operation.
     - Returns: A future to the ModifyLaunchTemplateResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyLaunchTemplate(
            input: ElasticComputeCloudModel.ModifyLaunchTemplateRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyLaunchTemplateResult>

    /**
     Invokes the ModifyManagedPrefixList operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyManagedPrefixListRequest object being passed to this operation.
     - Returns: A future to the ModifyManagedPrefixListResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyManagedPrefixList(
            input: ElasticComputeCloudModel.ModifyManagedPrefixListRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyManagedPrefixListResult>

    /**
     Invokes the ModifyNetworkInterfaceAttribute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyNetworkInterfaceAttributeRequest object being passed to this operation.
     */
    func modifyNetworkInterfaceAttribute(
            input: ElasticComputeCloudModel.ModifyNetworkInterfaceAttributeRequest) -> EventLoopFuture<Void>

    /**
     Invokes the ModifyReservedInstances operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyReservedInstancesRequest object being passed to this operation.
     - Returns: A future to the ModifyReservedInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyReservedInstances(
            input: ElasticComputeCloudModel.ModifyReservedInstancesRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyReservedInstancesResult>

    /**
     Invokes the ModifySnapshotAttribute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifySnapshotAttributeRequest object being passed to this operation.
     */
    func modifySnapshotAttribute(
            input: ElasticComputeCloudModel.ModifySnapshotAttributeRequest) -> EventLoopFuture<Void>

    /**
     Invokes the ModifySpotFleetRequest operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifySpotFleetRequestRequest object being passed to this operation.
     - Returns: A future to the ModifySpotFleetRequestResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifySpotFleetRequest(
            input: ElasticComputeCloudModel.ModifySpotFleetRequestRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifySpotFleetRequestResponse>

    /**
     Invokes the ModifySubnetAttribute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifySubnetAttributeRequest object being passed to this operation.
     */
    func modifySubnetAttribute(
            input: ElasticComputeCloudModel.ModifySubnetAttributeRequest) -> EventLoopFuture<Void>

    /**
     Invokes the ModifyTrafficMirrorFilterNetworkServices operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyTrafficMirrorFilterNetworkServicesRequest object being passed to this operation.
     - Returns: A future to the ModifyTrafficMirrorFilterNetworkServicesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyTrafficMirrorFilterNetworkServices(
            input: ElasticComputeCloudModel.ModifyTrafficMirrorFilterNetworkServicesRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyTrafficMirrorFilterNetworkServicesResult>

    /**
     Invokes the ModifyTrafficMirrorFilterRule operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyTrafficMirrorFilterRuleRequest object being passed to this operation.
     - Returns: A future to the ModifyTrafficMirrorFilterRuleResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyTrafficMirrorFilterRule(
            input: ElasticComputeCloudModel.ModifyTrafficMirrorFilterRuleRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyTrafficMirrorFilterRuleResult>

    /**
     Invokes the ModifyTrafficMirrorSession operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyTrafficMirrorSessionRequest object being passed to this operation.
     - Returns: A future to the ModifyTrafficMirrorSessionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyTrafficMirrorSession(
            input: ElasticComputeCloudModel.ModifyTrafficMirrorSessionRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyTrafficMirrorSessionResult>

    /**
     Invokes the ModifyTransitGateway operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyTransitGatewayRequest object being passed to this operation.
     - Returns: A future to the ModifyTransitGatewayResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyTransitGateway(
            input: ElasticComputeCloudModel.ModifyTransitGatewayRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyTransitGatewayResult>

    /**
     Invokes the ModifyTransitGatewayPrefixListReference operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyTransitGatewayPrefixListReferenceRequest object being passed to this operation.
     - Returns: A future to the ModifyTransitGatewayPrefixListReferenceResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyTransitGatewayPrefixListReference(
            input: ElasticComputeCloudModel.ModifyTransitGatewayPrefixListReferenceRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyTransitGatewayPrefixListReferenceResult>

    /**
     Invokes the ModifyTransitGatewayVpcAttachment operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyTransitGatewayVpcAttachmentRequest object being passed to this operation.
     - Returns: A future to the ModifyTransitGatewayVpcAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyTransitGatewayVpcAttachment(
            input: ElasticComputeCloudModel.ModifyTransitGatewayVpcAttachmentRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyTransitGatewayVpcAttachmentResult>

    /**
     Invokes the ModifyVolume operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyVolumeRequest object being passed to this operation.
     - Returns: A future to the ModifyVolumeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVolume(
            input: ElasticComputeCloudModel.ModifyVolumeRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyVolumeResult>

    /**
     Invokes the ModifyVolumeAttribute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyVolumeAttributeRequest object being passed to this operation.
     */
    func modifyVolumeAttribute(
            input: ElasticComputeCloudModel.ModifyVolumeAttributeRequest) -> EventLoopFuture<Void>

    /**
     Invokes the ModifyVpcAttribute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyVpcAttributeRequest object being passed to this operation.
     */
    func modifyVpcAttribute(
            input: ElasticComputeCloudModel.ModifyVpcAttributeRequest) -> EventLoopFuture<Void>

    /**
     Invokes the ModifyVpcEndpoint operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyVpcEndpointRequest object being passed to this operation.
     - Returns: A future to the ModifyVpcEndpointResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpcEndpoint(
            input: ElasticComputeCloudModel.ModifyVpcEndpointRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyVpcEndpointResult>

    /**
     Invokes the ModifyVpcEndpointConnectionNotification operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyVpcEndpointConnectionNotificationRequest object being passed to this operation.
     - Returns: A future to the ModifyVpcEndpointConnectionNotificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpcEndpointConnectionNotification(
            input: ElasticComputeCloudModel.ModifyVpcEndpointConnectionNotificationRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyVpcEndpointConnectionNotificationResult>

    /**
     Invokes the ModifyVpcEndpointServiceConfiguration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyVpcEndpointServiceConfigurationRequest object being passed to this operation.
     - Returns: A future to the ModifyVpcEndpointServiceConfigurationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpcEndpointServiceConfiguration(
            input: ElasticComputeCloudModel.ModifyVpcEndpointServiceConfigurationRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyVpcEndpointServiceConfigurationResult>

    /**
     Invokes the ModifyVpcEndpointServicePermissions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyVpcEndpointServicePermissionsRequest object being passed to this operation.
     - Returns: A future to the ModifyVpcEndpointServicePermissionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpcEndpointServicePermissions(
            input: ElasticComputeCloudModel.ModifyVpcEndpointServicePermissionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyVpcEndpointServicePermissionsResult>

    /**
     Invokes the ModifyVpcPeeringConnectionOptions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyVpcPeeringConnectionOptionsRequest object being passed to this operation.
     - Returns: A future to the ModifyVpcPeeringConnectionOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpcPeeringConnectionOptions(
            input: ElasticComputeCloudModel.ModifyVpcPeeringConnectionOptionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyVpcPeeringConnectionOptionsResult>

    /**
     Invokes the ModifyVpcTenancy operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyVpcTenancyRequest object being passed to this operation.
     - Returns: A future to the ModifyVpcTenancyResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpcTenancy(
            input: ElasticComputeCloudModel.ModifyVpcTenancyRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyVpcTenancyResult>

    /**
     Invokes the ModifyVpnConnection operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyVpnConnectionRequest object being passed to this operation.
     - Returns: A future to the ModifyVpnConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpnConnection(
            input: ElasticComputeCloudModel.ModifyVpnConnectionRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyVpnConnectionResult>

    /**
     Invokes the ModifyVpnConnectionOptions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyVpnConnectionOptionsRequest object being passed to this operation.
     - Returns: A future to the ModifyVpnConnectionOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpnConnectionOptions(
            input: ElasticComputeCloudModel.ModifyVpnConnectionOptionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyVpnConnectionOptionsResult>

    /**
     Invokes the ModifyVpnTunnelCertificate operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyVpnTunnelCertificateRequest object being passed to this operation.
     - Returns: A future to the ModifyVpnTunnelCertificateResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpnTunnelCertificate(
            input: ElasticComputeCloudModel.ModifyVpnTunnelCertificateRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyVpnTunnelCertificateResult>

    /**
     Invokes the ModifyVpnTunnelOptions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyVpnTunnelOptionsRequest object being passed to this operation.
     - Returns: A future to the ModifyVpnTunnelOptionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func modifyVpnTunnelOptions(
            input: ElasticComputeCloudModel.ModifyVpnTunnelOptionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.ModifyVpnTunnelOptionsResult>

    /**
     Invokes the MonitorInstances operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated MonitorInstancesRequest object being passed to this operation.
     - Returns: A future to the MonitorInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func monitorInstances(
            input: ElasticComputeCloudModel.MonitorInstancesRequest) -> EventLoopFuture<ElasticComputeCloudModel.MonitorInstancesResult>

    /**
     Invokes the MoveAddressToVpc operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated MoveAddressToVpcRequest object being passed to this operation.
     - Returns: A future to the MoveAddressToVpcResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func moveAddressToVpc(
            input: ElasticComputeCloudModel.MoveAddressToVpcRequest) -> EventLoopFuture<ElasticComputeCloudModel.MoveAddressToVpcResult>

    /**
     Invokes the ProvisionByoipCidr operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ProvisionByoipCidrRequest object being passed to this operation.
     - Returns: A future to the ProvisionByoipCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func provisionByoipCidr(
            input: ElasticComputeCloudModel.ProvisionByoipCidrRequest) -> EventLoopFuture<ElasticComputeCloudModel.ProvisionByoipCidrResult>

    /**
     Invokes the PurchaseHostReservation operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PurchaseHostReservationRequest object being passed to this operation.
     - Returns: A future to the PurchaseHostReservationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func purchaseHostReservation(
            input: ElasticComputeCloudModel.PurchaseHostReservationRequest) -> EventLoopFuture<ElasticComputeCloudModel.PurchaseHostReservationResult>

    /**
     Invokes the PurchaseReservedInstancesOffering operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PurchaseReservedInstancesOfferingRequest object being passed to this operation.
     - Returns: A future to the PurchaseReservedInstancesOfferingResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func purchaseReservedInstancesOffering(
            input: ElasticComputeCloudModel.PurchaseReservedInstancesOfferingRequest) -> EventLoopFuture<ElasticComputeCloudModel.PurchaseReservedInstancesOfferingResult>

    /**
     Invokes the PurchaseScheduledInstances operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PurchaseScheduledInstancesRequest object being passed to this operation.
     - Returns: A future to the PurchaseScheduledInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func purchaseScheduledInstances(
            input: ElasticComputeCloudModel.PurchaseScheduledInstancesRequest) -> EventLoopFuture<ElasticComputeCloudModel.PurchaseScheduledInstancesResult>

    /**
     Invokes the RebootInstances operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RebootInstancesRequest object being passed to this operation.
     */
    func rebootInstances(
            input: ElasticComputeCloudModel.RebootInstancesRequest) -> EventLoopFuture<Void>

    /**
     Invokes the RegisterImage operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RegisterImageRequest object being passed to this operation.
     - Returns: A future to the RegisterImageResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func registerImage(
            input: ElasticComputeCloudModel.RegisterImageRequest) -> EventLoopFuture<ElasticComputeCloudModel.RegisterImageResult>

    /**
     Invokes the RegisterInstanceEventNotificationAttributes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RegisterInstanceEventNotificationAttributesRequest object being passed to this operation.
     - Returns: A future to the RegisterInstanceEventNotificationAttributesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func registerInstanceEventNotificationAttributes(
            input: ElasticComputeCloudModel.RegisterInstanceEventNotificationAttributesRequest) -> EventLoopFuture<ElasticComputeCloudModel.RegisterInstanceEventNotificationAttributesResult>

    /**
     Invokes the RegisterTransitGatewayMulticastGroupMembers operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RegisterTransitGatewayMulticastGroupMembersRequest object being passed to this operation.
     - Returns: A future to the RegisterTransitGatewayMulticastGroupMembersResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func registerTransitGatewayMulticastGroupMembers(
            input: ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupMembersRequest) -> EventLoopFuture<ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupMembersResult>

    /**
     Invokes the RegisterTransitGatewayMulticastGroupSources operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RegisterTransitGatewayMulticastGroupSourcesRequest object being passed to this operation.
     - Returns: A future to the RegisterTransitGatewayMulticastGroupSourcesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func registerTransitGatewayMulticastGroupSources(
            input: ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupSourcesRequest) -> EventLoopFuture<ElasticComputeCloudModel.RegisterTransitGatewayMulticastGroupSourcesResult>

    /**
     Invokes the RejectTransitGatewayMulticastDomainAssociations operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RejectTransitGatewayMulticastDomainAssociationsRequest object being passed to this operation.
     - Returns: A future to the RejectTransitGatewayMulticastDomainAssociationsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func rejectTransitGatewayMulticastDomainAssociations(
            input: ElasticComputeCloudModel.RejectTransitGatewayMulticastDomainAssociationsRequest) -> EventLoopFuture<ElasticComputeCloudModel.RejectTransitGatewayMulticastDomainAssociationsResult>

    /**
     Invokes the RejectTransitGatewayPeeringAttachment operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RejectTransitGatewayPeeringAttachmentRequest object being passed to this operation.
     - Returns: A future to the RejectTransitGatewayPeeringAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func rejectTransitGatewayPeeringAttachment(
            input: ElasticComputeCloudModel.RejectTransitGatewayPeeringAttachmentRequest) -> EventLoopFuture<ElasticComputeCloudModel.RejectTransitGatewayPeeringAttachmentResult>

    /**
     Invokes the RejectTransitGatewayVpcAttachment operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RejectTransitGatewayVpcAttachmentRequest object being passed to this operation.
     - Returns: A future to the RejectTransitGatewayVpcAttachmentResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func rejectTransitGatewayVpcAttachment(
            input: ElasticComputeCloudModel.RejectTransitGatewayVpcAttachmentRequest) -> EventLoopFuture<ElasticComputeCloudModel.RejectTransitGatewayVpcAttachmentResult>

    /**
     Invokes the RejectVpcEndpointConnections operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RejectVpcEndpointConnectionsRequest object being passed to this operation.
     - Returns: A future to the RejectVpcEndpointConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func rejectVpcEndpointConnections(
            input: ElasticComputeCloudModel.RejectVpcEndpointConnectionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.RejectVpcEndpointConnectionsResult>

    /**
     Invokes the RejectVpcPeeringConnection operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RejectVpcPeeringConnectionRequest object being passed to this operation.
     - Returns: A future to the RejectVpcPeeringConnectionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func rejectVpcPeeringConnection(
            input: ElasticComputeCloudModel.RejectVpcPeeringConnectionRequest) -> EventLoopFuture<ElasticComputeCloudModel.RejectVpcPeeringConnectionResult>

    /**
     Invokes the ReleaseAddress operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ReleaseAddressRequest object being passed to this operation.
     */
    func releaseAddress(
            input: ElasticComputeCloudModel.ReleaseAddressRequest) -> EventLoopFuture<Void>

    /**
     Invokes the ReleaseHosts operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ReleaseHostsRequest object being passed to this operation.
     - Returns: A future to the ReleaseHostsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func releaseHosts(
            input: ElasticComputeCloudModel.ReleaseHostsRequest) -> EventLoopFuture<ElasticComputeCloudModel.ReleaseHostsResult>

    /**
     Invokes the ReplaceIamInstanceProfileAssociation operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ReplaceIamInstanceProfileAssociationRequest object being passed to this operation.
     - Returns: A future to the ReplaceIamInstanceProfileAssociationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func replaceIamInstanceProfileAssociation(
            input: ElasticComputeCloudModel.ReplaceIamInstanceProfileAssociationRequest) -> EventLoopFuture<ElasticComputeCloudModel.ReplaceIamInstanceProfileAssociationResult>

    /**
     Invokes the ReplaceNetworkAclAssociation operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ReplaceNetworkAclAssociationRequest object being passed to this operation.
     - Returns: A future to the ReplaceNetworkAclAssociationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func replaceNetworkAclAssociation(
            input: ElasticComputeCloudModel.ReplaceNetworkAclAssociationRequest) -> EventLoopFuture<ElasticComputeCloudModel.ReplaceNetworkAclAssociationResult>

    /**
     Invokes the ReplaceNetworkAclEntry operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ReplaceNetworkAclEntryRequest object being passed to this operation.
     */
    func replaceNetworkAclEntry(
            input: ElasticComputeCloudModel.ReplaceNetworkAclEntryRequest) -> EventLoopFuture<Void>

    /**
     Invokes the ReplaceRoute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ReplaceRouteRequest object being passed to this operation.
     */
    func replaceRoute(
            input: ElasticComputeCloudModel.ReplaceRouteRequest) -> EventLoopFuture<Void>

    /**
     Invokes the ReplaceRouteTableAssociation operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ReplaceRouteTableAssociationRequest object being passed to this operation.
     - Returns: A future to the ReplaceRouteTableAssociationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func replaceRouteTableAssociation(
            input: ElasticComputeCloudModel.ReplaceRouteTableAssociationRequest) -> EventLoopFuture<ElasticComputeCloudModel.ReplaceRouteTableAssociationResult>

    /**
     Invokes the ReplaceTransitGatewayRoute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ReplaceTransitGatewayRouteRequest object being passed to this operation.
     - Returns: A future to the ReplaceTransitGatewayRouteResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func replaceTransitGatewayRoute(
            input: ElasticComputeCloudModel.ReplaceTransitGatewayRouteRequest) -> EventLoopFuture<ElasticComputeCloudModel.ReplaceTransitGatewayRouteResult>

    /**
     Invokes the ReportInstanceStatus operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ReportInstanceStatusRequest object being passed to this operation.
     */
    func reportInstanceStatus(
            input: ElasticComputeCloudModel.ReportInstanceStatusRequest) -> EventLoopFuture<Void>

    /**
     Invokes the RequestSpotFleet operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RequestSpotFleetRequest object being passed to this operation.
     - Returns: A future to the RequestSpotFleetResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func requestSpotFleet(
            input: ElasticComputeCloudModel.RequestSpotFleetRequest) -> EventLoopFuture<ElasticComputeCloudModel.RequestSpotFleetResponse>

    /**
     Invokes the RequestSpotInstances operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RequestSpotInstancesRequest object being passed to this operation.
     - Returns: A future to the RequestSpotInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func requestSpotInstances(
            input: ElasticComputeCloudModel.RequestSpotInstancesRequest) -> EventLoopFuture<ElasticComputeCloudModel.RequestSpotInstancesResult>

    /**
     Invokes the ResetAddressAttribute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ResetAddressAttributeRequest object being passed to this operation.
     - Returns: A future to the ResetAddressAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func resetAddressAttribute(
            input: ElasticComputeCloudModel.ResetAddressAttributeRequest) -> EventLoopFuture<ElasticComputeCloudModel.ResetAddressAttributeResult>

    /**
     Invokes the ResetEbsDefaultKmsKeyId operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ResetEbsDefaultKmsKeyIdRequest object being passed to this operation.
     - Returns: A future to the ResetEbsDefaultKmsKeyIdResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func resetEbsDefaultKmsKeyId(
            input: ElasticComputeCloudModel.ResetEbsDefaultKmsKeyIdRequest) -> EventLoopFuture<ElasticComputeCloudModel.ResetEbsDefaultKmsKeyIdResult>

    /**
     Invokes the ResetFpgaImageAttribute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ResetFpgaImageAttributeRequest object being passed to this operation.
     - Returns: A future to the ResetFpgaImageAttributeResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func resetFpgaImageAttribute(
            input: ElasticComputeCloudModel.ResetFpgaImageAttributeRequest) -> EventLoopFuture<ElasticComputeCloudModel.ResetFpgaImageAttributeResult>

    /**
     Invokes the ResetImageAttribute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ResetImageAttributeRequest object being passed to this operation.
     */
    func resetImageAttribute(
            input: ElasticComputeCloudModel.ResetImageAttributeRequest) -> EventLoopFuture<Void>

    /**
     Invokes the ResetInstanceAttribute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ResetInstanceAttributeRequest object being passed to this operation.
     */
    func resetInstanceAttribute(
            input: ElasticComputeCloudModel.ResetInstanceAttributeRequest) -> EventLoopFuture<Void>

    /**
     Invokes the ResetNetworkInterfaceAttribute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ResetNetworkInterfaceAttributeRequest object being passed to this operation.
     */
    func resetNetworkInterfaceAttribute(
            input: ElasticComputeCloudModel.ResetNetworkInterfaceAttributeRequest) -> EventLoopFuture<Void>

    /**
     Invokes the ResetSnapshotAttribute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ResetSnapshotAttributeRequest object being passed to this operation.
     */
    func resetSnapshotAttribute(
            input: ElasticComputeCloudModel.ResetSnapshotAttributeRequest) -> EventLoopFuture<Void>

    /**
     Invokes the RestoreAddressToClassic operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RestoreAddressToClassicRequest object being passed to this operation.
     - Returns: A future to the RestoreAddressToClassicResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func restoreAddressToClassic(
            input: ElasticComputeCloudModel.RestoreAddressToClassicRequest) -> EventLoopFuture<ElasticComputeCloudModel.RestoreAddressToClassicResult>

    /**
     Invokes the RestoreManagedPrefixListVersion operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RestoreManagedPrefixListVersionRequest object being passed to this operation.
     - Returns: A future to the RestoreManagedPrefixListVersionResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func restoreManagedPrefixListVersion(
            input: ElasticComputeCloudModel.RestoreManagedPrefixListVersionRequest) -> EventLoopFuture<ElasticComputeCloudModel.RestoreManagedPrefixListVersionResult>

    /**
     Invokes the RevokeClientVpnIngress operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RevokeClientVpnIngressRequest object being passed to this operation.
     - Returns: A future to the RevokeClientVpnIngressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func revokeClientVpnIngress(
            input: ElasticComputeCloudModel.RevokeClientVpnIngressRequest) -> EventLoopFuture<ElasticComputeCloudModel.RevokeClientVpnIngressResult>

    /**
     Invokes the RevokeSecurityGroupEgress operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RevokeSecurityGroupEgressRequest object being passed to this operation.
     - Returns: A future to the RevokeSecurityGroupEgressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func revokeSecurityGroupEgress(
            input: ElasticComputeCloudModel.RevokeSecurityGroupEgressRequest) -> EventLoopFuture<ElasticComputeCloudModel.RevokeSecurityGroupEgressResult>

    /**
     Invokes the RevokeSecurityGroupIngress operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RevokeSecurityGroupIngressRequest object being passed to this operation.
     - Returns: A future to the RevokeSecurityGroupIngressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func revokeSecurityGroupIngress(
            input: ElasticComputeCloudModel.RevokeSecurityGroupIngressRequest) -> EventLoopFuture<ElasticComputeCloudModel.RevokeSecurityGroupIngressResult>

    /**
     Invokes the RunInstances operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RunInstancesRequest object being passed to this operation.
     - Returns: A future to the Reservation object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func runInstances(
            input: ElasticComputeCloudModel.RunInstancesRequest) -> EventLoopFuture<ElasticComputeCloudModel.Reservation>

    /**
     Invokes the RunScheduledInstances operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RunScheduledInstancesRequest object being passed to this operation.
     - Returns: A future to the RunScheduledInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func runScheduledInstances(
            input: ElasticComputeCloudModel.RunScheduledInstancesRequest) -> EventLoopFuture<ElasticComputeCloudModel.RunScheduledInstancesResult>

    /**
     Invokes the SearchLocalGatewayRoutes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SearchLocalGatewayRoutesRequest object being passed to this operation.
     - Returns: A future to the SearchLocalGatewayRoutesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func searchLocalGatewayRoutes(
            input: ElasticComputeCloudModel.SearchLocalGatewayRoutesRequest) -> EventLoopFuture<ElasticComputeCloudModel.SearchLocalGatewayRoutesResult>

    /**
     Invokes the SearchTransitGatewayMulticastGroups operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SearchTransitGatewayMulticastGroupsRequest object being passed to this operation.
     - Returns: A future to the SearchTransitGatewayMulticastGroupsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func searchTransitGatewayMulticastGroups(
            input: ElasticComputeCloudModel.SearchTransitGatewayMulticastGroupsRequest) -> EventLoopFuture<ElasticComputeCloudModel.SearchTransitGatewayMulticastGroupsResult>

    /**
     Invokes the SearchTransitGatewayRoutes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SearchTransitGatewayRoutesRequest object being passed to this operation.
     - Returns: A future to the SearchTransitGatewayRoutesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func searchTransitGatewayRoutes(
            input: ElasticComputeCloudModel.SearchTransitGatewayRoutesRequest) -> EventLoopFuture<ElasticComputeCloudModel.SearchTransitGatewayRoutesResult>

    /**
     Invokes the SendDiagnosticInterrupt operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SendDiagnosticInterruptRequest object being passed to this operation.
     */
    func sendDiagnosticInterrupt(
            input: ElasticComputeCloudModel.SendDiagnosticInterruptRequest) -> EventLoopFuture<Void>

    /**
     Invokes the StartInstances operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated StartInstancesRequest object being passed to this operation.
     - Returns: A future to the StartInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func startInstances(
            input: ElasticComputeCloudModel.StartInstancesRequest) -> EventLoopFuture<ElasticComputeCloudModel.StartInstancesResult>

    /**
     Invokes the StartNetworkInsightsAnalysis operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated StartNetworkInsightsAnalysisRequest object being passed to this operation.
     - Returns: A future to the StartNetworkInsightsAnalysisResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func startNetworkInsightsAnalysis(
            input: ElasticComputeCloudModel.StartNetworkInsightsAnalysisRequest) -> EventLoopFuture<ElasticComputeCloudModel.StartNetworkInsightsAnalysisResult>

    /**
     Invokes the StartVpcEndpointServicePrivateDnsVerification operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated StartVpcEndpointServicePrivateDnsVerificationRequest object being passed to this operation.
     - Returns: A future to the StartVpcEndpointServicePrivateDnsVerificationResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func startVpcEndpointServicePrivateDnsVerification(
            input: ElasticComputeCloudModel.StartVpcEndpointServicePrivateDnsVerificationRequest) -> EventLoopFuture<ElasticComputeCloudModel.StartVpcEndpointServicePrivateDnsVerificationResult>

    /**
     Invokes the StopInstances operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated StopInstancesRequest object being passed to this operation.
     - Returns: A future to the StopInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func stopInstances(
            input: ElasticComputeCloudModel.StopInstancesRequest) -> EventLoopFuture<ElasticComputeCloudModel.StopInstancesResult>

    /**
     Invokes the TerminateClientVpnConnections operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated TerminateClientVpnConnectionsRequest object being passed to this operation.
     - Returns: A future to the TerminateClientVpnConnectionsResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func terminateClientVpnConnections(
            input: ElasticComputeCloudModel.TerminateClientVpnConnectionsRequest) -> EventLoopFuture<ElasticComputeCloudModel.TerminateClientVpnConnectionsResult>

    /**
     Invokes the TerminateInstances operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated TerminateInstancesRequest object being passed to this operation.
     - Returns: A future to the TerminateInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func terminateInstances(
            input: ElasticComputeCloudModel.TerminateInstancesRequest) -> EventLoopFuture<ElasticComputeCloudModel.TerminateInstancesResult>

    /**
     Invokes the UnassignIpv6Addresses operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UnassignIpv6AddressesRequest object being passed to this operation.
     - Returns: A future to the UnassignIpv6AddressesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func unassignIpv6Addresses(
            input: ElasticComputeCloudModel.UnassignIpv6AddressesRequest) -> EventLoopFuture<ElasticComputeCloudModel.UnassignIpv6AddressesResult>

    /**
     Invokes the UnassignPrivateIpAddresses operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UnassignPrivateIpAddressesRequest object being passed to this operation.
     */
    func unassignPrivateIpAddresses(
            input: ElasticComputeCloudModel.UnassignPrivateIpAddressesRequest) -> EventLoopFuture<Void>

    /**
     Invokes the UnmonitorInstances operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UnmonitorInstancesRequest object being passed to this operation.
     - Returns: A future to the UnmonitorInstancesResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func unmonitorInstances(
            input: ElasticComputeCloudModel.UnmonitorInstancesRequest) -> EventLoopFuture<ElasticComputeCloudModel.UnmonitorInstancesResult>

    /**
     Invokes the UpdateSecurityGroupRuleDescriptionsEgress operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UpdateSecurityGroupRuleDescriptionsEgressRequest object being passed to this operation.
     - Returns: A future to the UpdateSecurityGroupRuleDescriptionsEgressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func updateSecurityGroupRuleDescriptionsEgress(
            input: ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsEgressRequest) -> EventLoopFuture<ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsEgressResult>

    /**
     Invokes the UpdateSecurityGroupRuleDescriptionsIngress operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UpdateSecurityGroupRuleDescriptionsIngressRequest object being passed to this operation.
     - Returns: A future to the UpdateSecurityGroupRuleDescriptionsIngressResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func updateSecurityGroupRuleDescriptionsIngress(
            input: ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsIngressRequest) -> EventLoopFuture<ElasticComputeCloudModel.UpdateSecurityGroupRuleDescriptionsIngressResult>

    /**
     Invokes the WithdrawByoipCidr operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated WithdrawByoipCidrRequest object being passed to this operation.
     - Returns: A future to the WithdrawByoipCidrResult object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func withdrawByoipCidr(
            input: ElasticComputeCloudModel.WithdrawByoipCidrRequest) -> EventLoopFuture<ElasticComputeCloudModel.WithdrawByoipCidrResult>
}
