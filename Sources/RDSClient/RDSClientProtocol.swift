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
// RDSClientProtocol.swift
// RDSClient
//

import Foundation
import RDSModel
import SmokeAWSCore
import SmokeHTTPClient
import NIO

/**
 Client Protocol for the RDS service.
 */
public protocol RDSClientProtocol {
    typealias AddRoleToDBClusterEventLoopFutureAsyncType = (
            _ input: RDSModel.AddRoleToDBClusterMessage) -> EventLoopFuture<Void>
    typealias AddRoleToDBInstanceEventLoopFutureAsyncType = (
            _ input: RDSModel.AddRoleToDBInstanceMessage) -> EventLoopFuture<Void>
    typealias AddSourceIdentifierToSubscriptionEventLoopFutureAsyncType = (
            _ input: RDSModel.AddSourceIdentifierToSubscriptionMessage) -> EventLoopFuture<RDSModel.AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription>
    typealias AddTagsToResourceEventLoopFutureAsyncType = (
            _ input: RDSModel.AddTagsToResourceMessage) -> EventLoopFuture<Void>
    typealias ApplyPendingMaintenanceActionEventLoopFutureAsyncType = (
            _ input: RDSModel.ApplyPendingMaintenanceActionMessage) -> EventLoopFuture<RDSModel.ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction>
    typealias AuthorizeDBSecurityGroupIngressEventLoopFutureAsyncType = (
            _ input: RDSModel.AuthorizeDBSecurityGroupIngressMessage) -> EventLoopFuture<RDSModel.AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress>
    typealias BacktrackDBClusterEventLoopFutureAsyncType = (
            _ input: RDSModel.BacktrackDBClusterMessage) -> EventLoopFuture<RDSModel.DBClusterBacktrackForBacktrackDBCluster>
    typealias CancelExportTaskEventLoopFutureAsyncType = (
            _ input: RDSModel.CancelExportTaskMessage) -> EventLoopFuture<RDSModel.ExportTaskForCancelExportTask>
    typealias CopyDBClusterParameterGroupEventLoopFutureAsyncType = (
            _ input: RDSModel.CopyDBClusterParameterGroupMessage) -> EventLoopFuture<RDSModel.CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup>
    typealias CopyDBClusterSnapshotEventLoopFutureAsyncType = (
            _ input: RDSModel.CopyDBClusterSnapshotMessage) -> EventLoopFuture<RDSModel.CopyDBClusterSnapshotResultForCopyDBClusterSnapshot>
    typealias CopyDBParameterGroupEventLoopFutureAsyncType = (
            _ input: RDSModel.CopyDBParameterGroupMessage) -> EventLoopFuture<RDSModel.CopyDBParameterGroupResultForCopyDBParameterGroup>
    typealias CopyDBSnapshotEventLoopFutureAsyncType = (
            _ input: RDSModel.CopyDBSnapshotMessage) -> EventLoopFuture<RDSModel.CopyDBSnapshotResultForCopyDBSnapshot>
    typealias CopyOptionGroupEventLoopFutureAsyncType = (
            _ input: RDSModel.CopyOptionGroupMessage) -> EventLoopFuture<RDSModel.CopyOptionGroupResultForCopyOptionGroup>
    typealias CreateCustomAvailabilityZoneEventLoopFutureAsyncType = (
            _ input: RDSModel.CreateCustomAvailabilityZoneMessage) -> EventLoopFuture<RDSModel.CreateCustomAvailabilityZoneResultForCreateCustomAvailabilityZone>
    typealias CreateDBClusterEventLoopFutureAsyncType = (
            _ input: RDSModel.CreateDBClusterMessage) -> EventLoopFuture<RDSModel.CreateDBClusterResultForCreateDBCluster>
    typealias CreateDBClusterEndpointEventLoopFutureAsyncType = (
            _ input: RDSModel.CreateDBClusterEndpointMessage) -> EventLoopFuture<RDSModel.DBClusterEndpointForCreateDBClusterEndpoint>
    typealias CreateDBClusterParameterGroupEventLoopFutureAsyncType = (
            _ input: RDSModel.CreateDBClusterParameterGroupMessage) -> EventLoopFuture<RDSModel.CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup>
    typealias CreateDBClusterSnapshotEventLoopFutureAsyncType = (
            _ input: RDSModel.CreateDBClusterSnapshotMessage) -> EventLoopFuture<RDSModel.CreateDBClusterSnapshotResultForCreateDBClusterSnapshot>
    typealias CreateDBInstanceEventLoopFutureAsyncType = (
            _ input: RDSModel.CreateDBInstanceMessage) -> EventLoopFuture<RDSModel.CreateDBInstanceResultForCreateDBInstance>
    typealias CreateDBInstanceReadReplicaEventLoopFutureAsyncType = (
            _ input: RDSModel.CreateDBInstanceReadReplicaMessage) -> EventLoopFuture<RDSModel.CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica>
    typealias CreateDBParameterGroupEventLoopFutureAsyncType = (
            _ input: RDSModel.CreateDBParameterGroupMessage) -> EventLoopFuture<RDSModel.CreateDBParameterGroupResultForCreateDBParameterGroup>
    typealias CreateDBProxyEventLoopFutureAsyncType = (
            _ input: RDSModel.CreateDBProxyRequest) -> EventLoopFuture<RDSModel.CreateDBProxyResponseForCreateDBProxy>
    typealias CreateDBSecurityGroupEventLoopFutureAsyncType = (
            _ input: RDSModel.CreateDBSecurityGroupMessage) -> EventLoopFuture<RDSModel.CreateDBSecurityGroupResultForCreateDBSecurityGroup>
    typealias CreateDBSnapshotEventLoopFutureAsyncType = (
            _ input: RDSModel.CreateDBSnapshotMessage) -> EventLoopFuture<RDSModel.CreateDBSnapshotResultForCreateDBSnapshot>
    typealias CreateDBSubnetGroupEventLoopFutureAsyncType = (
            _ input: RDSModel.CreateDBSubnetGroupMessage) -> EventLoopFuture<RDSModel.CreateDBSubnetGroupResultForCreateDBSubnetGroup>
    typealias CreateEventSubscriptionEventLoopFutureAsyncType = (
            _ input: RDSModel.CreateEventSubscriptionMessage) -> EventLoopFuture<RDSModel.CreateEventSubscriptionResultForCreateEventSubscription>
    typealias CreateGlobalClusterEventLoopFutureAsyncType = (
            _ input: RDSModel.CreateGlobalClusterMessage) -> EventLoopFuture<RDSModel.CreateGlobalClusterResultForCreateGlobalCluster>
    typealias CreateOptionGroupEventLoopFutureAsyncType = (
            _ input: RDSModel.CreateOptionGroupMessage) -> EventLoopFuture<RDSModel.CreateOptionGroupResultForCreateOptionGroup>
    typealias DeleteCustomAvailabilityZoneEventLoopFutureAsyncType = (
            _ input: RDSModel.DeleteCustomAvailabilityZoneMessage) -> EventLoopFuture<RDSModel.DeleteCustomAvailabilityZoneResultForDeleteCustomAvailabilityZone>
    typealias DeleteDBClusterEventLoopFutureAsyncType = (
            _ input: RDSModel.DeleteDBClusterMessage) -> EventLoopFuture<RDSModel.DeleteDBClusterResultForDeleteDBCluster>
    typealias DeleteDBClusterEndpointEventLoopFutureAsyncType = (
            _ input: RDSModel.DeleteDBClusterEndpointMessage) -> EventLoopFuture<RDSModel.DBClusterEndpointForDeleteDBClusterEndpoint>
    typealias DeleteDBClusterParameterGroupEventLoopFutureAsyncType = (
            _ input: RDSModel.DeleteDBClusterParameterGroupMessage) -> EventLoopFuture<Void>
    typealias DeleteDBClusterSnapshotEventLoopFutureAsyncType = (
            _ input: RDSModel.DeleteDBClusterSnapshotMessage) -> EventLoopFuture<RDSModel.DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot>
    typealias DeleteDBInstanceEventLoopFutureAsyncType = (
            _ input: RDSModel.DeleteDBInstanceMessage) -> EventLoopFuture<RDSModel.DeleteDBInstanceResultForDeleteDBInstance>
    typealias DeleteDBInstanceAutomatedBackupEventLoopFutureAsyncType = (
            _ input: RDSModel.DeleteDBInstanceAutomatedBackupMessage) -> EventLoopFuture<RDSModel.DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup>
    typealias DeleteDBParameterGroupEventLoopFutureAsyncType = (
            _ input: RDSModel.DeleteDBParameterGroupMessage) -> EventLoopFuture<Void>
    typealias DeleteDBProxyEventLoopFutureAsyncType = (
            _ input: RDSModel.DeleteDBProxyRequest) -> EventLoopFuture<RDSModel.DeleteDBProxyResponseForDeleteDBProxy>
    typealias DeleteDBSecurityGroupEventLoopFutureAsyncType = (
            _ input: RDSModel.DeleteDBSecurityGroupMessage) -> EventLoopFuture<Void>
    typealias DeleteDBSnapshotEventLoopFutureAsyncType = (
            _ input: RDSModel.DeleteDBSnapshotMessage) -> EventLoopFuture<RDSModel.DeleteDBSnapshotResultForDeleteDBSnapshot>
    typealias DeleteDBSubnetGroupEventLoopFutureAsyncType = (
            _ input: RDSModel.DeleteDBSubnetGroupMessage) -> EventLoopFuture<Void>
    typealias DeleteEventSubscriptionEventLoopFutureAsyncType = (
            _ input: RDSModel.DeleteEventSubscriptionMessage) -> EventLoopFuture<RDSModel.DeleteEventSubscriptionResultForDeleteEventSubscription>
    typealias DeleteGlobalClusterEventLoopFutureAsyncType = (
            _ input: RDSModel.DeleteGlobalClusterMessage) -> EventLoopFuture<RDSModel.DeleteGlobalClusterResultForDeleteGlobalCluster>
    typealias DeleteInstallationMediaEventLoopFutureAsyncType = (
            _ input: RDSModel.DeleteInstallationMediaMessage) -> EventLoopFuture<RDSModel.InstallationMediaForDeleteInstallationMedia>
    typealias DeleteOptionGroupEventLoopFutureAsyncType = (
            _ input: RDSModel.DeleteOptionGroupMessage) -> EventLoopFuture<Void>
    typealias DeregisterDBProxyTargetsEventLoopFutureAsyncType = (
            _ input: RDSModel.DeregisterDBProxyTargetsRequest) -> EventLoopFuture<RDSModel.DeregisterDBProxyTargetsResponseForDeregisterDBProxyTargets>
    typealias DescribeAccountAttributesEventLoopFutureAsyncType = (
            _ input: RDSModel.DescribeAccountAttributesMessage) -> EventLoopFuture<RDSModel.AccountAttributesMessageForDescribeAccountAttributes>
    typealias DescribeCertificatesEventLoopFutureAsyncType = (
            _ input: RDSModel.DescribeCertificatesMessage) -> EventLoopFuture<RDSModel.CertificateMessageForDescribeCertificates>
    typealias DescribeCustomAvailabilityZonesEventLoopFutureAsyncType = (
            _ input: RDSModel.DescribeCustomAvailabilityZonesMessage) -> EventLoopFuture<RDSModel.CustomAvailabilityZoneMessageForDescribeCustomAvailabilityZones>
    typealias DescribeDBClusterBacktracksEventLoopFutureAsyncType = (
            _ input: RDSModel.DescribeDBClusterBacktracksMessage) -> EventLoopFuture<RDSModel.DBClusterBacktrackMessageForDescribeDBClusterBacktracks>
    typealias DescribeDBClusterEndpointsEventLoopFutureAsyncType = (
            _ input: RDSModel.DescribeDBClusterEndpointsMessage) -> EventLoopFuture<RDSModel.DBClusterEndpointMessageForDescribeDBClusterEndpoints>
    typealias DescribeDBClusterParameterGroupsEventLoopFutureAsyncType = (
            _ input: RDSModel.DescribeDBClusterParameterGroupsMessage) -> EventLoopFuture<RDSModel.DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups>
    typealias DescribeDBClusterParametersEventLoopFutureAsyncType = (
            _ input: RDSModel.DescribeDBClusterParametersMessage) -> EventLoopFuture<RDSModel.DBClusterParameterGroupDetailsForDescribeDBClusterParameters>
    typealias DescribeDBClusterSnapshotAttributesEventLoopFutureAsyncType = (
            _ input: RDSModel.DescribeDBClusterSnapshotAttributesMessage) -> EventLoopFuture<RDSModel.DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes>
    typealias DescribeDBClusterSnapshotsEventLoopFutureAsyncType = (
            _ input: RDSModel.DescribeDBClusterSnapshotsMessage) -> EventLoopFuture<RDSModel.DBClusterSnapshotMessageForDescribeDBClusterSnapshots>
    typealias DescribeDBClustersEventLoopFutureAsyncType = (
            _ input: RDSModel.DescribeDBClustersMessage) -> EventLoopFuture<RDSModel.DBClusterMessageForDescribeDBClusters>
    typealias DescribeDBEngineVersionsEventLoopFutureAsyncType = (
            _ input: RDSModel.DescribeDBEngineVersionsMessage) -> EventLoopFuture<RDSModel.DBEngineVersionMessageForDescribeDBEngineVersions>
    typealias DescribeDBInstanceAutomatedBackupsEventLoopFutureAsyncType = (
            _ input: RDSModel.DescribeDBInstanceAutomatedBackupsMessage) -> EventLoopFuture<RDSModel.DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups>
    typealias DescribeDBInstancesEventLoopFutureAsyncType = (
            _ input: RDSModel.DescribeDBInstancesMessage) -> EventLoopFuture<RDSModel.DBInstanceMessageForDescribeDBInstances>
    typealias DescribeDBLogFilesEventLoopFutureAsyncType = (
            _ input: RDSModel.DescribeDBLogFilesMessage) -> EventLoopFuture<RDSModel.DescribeDBLogFilesResponseForDescribeDBLogFiles>
    typealias DescribeDBParameterGroupsEventLoopFutureAsyncType = (
            _ input: RDSModel.DescribeDBParameterGroupsMessage) -> EventLoopFuture<RDSModel.DBParameterGroupsMessageForDescribeDBParameterGroups>
    typealias DescribeDBParametersEventLoopFutureAsyncType = (
            _ input: RDSModel.DescribeDBParametersMessage) -> EventLoopFuture<RDSModel.DBParameterGroupDetailsForDescribeDBParameters>
    typealias DescribeDBProxiesEventLoopFutureAsyncType = (
            _ input: RDSModel.DescribeDBProxiesRequest) -> EventLoopFuture<RDSModel.DescribeDBProxiesResponseForDescribeDBProxies>
    typealias DescribeDBProxyTargetGroupsEventLoopFutureAsyncType = (
            _ input: RDSModel.DescribeDBProxyTargetGroupsRequest) -> EventLoopFuture<RDSModel.DescribeDBProxyTargetGroupsResponseForDescribeDBProxyTargetGroups>
    typealias DescribeDBProxyTargetsEventLoopFutureAsyncType = (
            _ input: RDSModel.DescribeDBProxyTargetsRequest) -> EventLoopFuture<RDSModel.DescribeDBProxyTargetsResponseForDescribeDBProxyTargets>
    typealias DescribeDBSecurityGroupsEventLoopFutureAsyncType = (
            _ input: RDSModel.DescribeDBSecurityGroupsMessage) -> EventLoopFuture<RDSModel.DBSecurityGroupMessageForDescribeDBSecurityGroups>
    typealias DescribeDBSnapshotAttributesEventLoopFutureAsyncType = (
            _ input: RDSModel.DescribeDBSnapshotAttributesMessage) -> EventLoopFuture<RDSModel.DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes>
    typealias DescribeDBSnapshotsEventLoopFutureAsyncType = (
            _ input: RDSModel.DescribeDBSnapshotsMessage) -> EventLoopFuture<RDSModel.DBSnapshotMessageForDescribeDBSnapshots>
    typealias DescribeDBSubnetGroupsEventLoopFutureAsyncType = (
            _ input: RDSModel.DescribeDBSubnetGroupsMessage) -> EventLoopFuture<RDSModel.DBSubnetGroupMessageForDescribeDBSubnetGroups>
    typealias DescribeEngineDefaultClusterParametersEventLoopFutureAsyncType = (
            _ input: RDSModel.DescribeEngineDefaultClusterParametersMessage) -> EventLoopFuture<RDSModel.DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters>
    typealias DescribeEngineDefaultParametersEventLoopFutureAsyncType = (
            _ input: RDSModel.DescribeEngineDefaultParametersMessage) -> EventLoopFuture<RDSModel.DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters>
    typealias DescribeEventCategoriesEventLoopFutureAsyncType = (
            _ input: RDSModel.DescribeEventCategoriesMessage) -> EventLoopFuture<RDSModel.EventCategoriesMessageForDescribeEventCategories>
    typealias DescribeEventSubscriptionsEventLoopFutureAsyncType = (
            _ input: RDSModel.DescribeEventSubscriptionsMessage) -> EventLoopFuture<RDSModel.EventSubscriptionsMessageForDescribeEventSubscriptions>
    typealias DescribeEventsEventLoopFutureAsyncType = (
            _ input: RDSModel.DescribeEventsMessage) -> EventLoopFuture<RDSModel.EventsMessageForDescribeEvents>
    typealias DescribeExportTasksEventLoopFutureAsyncType = (
            _ input: RDSModel.DescribeExportTasksMessage) -> EventLoopFuture<RDSModel.ExportTasksMessageForDescribeExportTasks>
    typealias DescribeGlobalClustersEventLoopFutureAsyncType = (
            _ input: RDSModel.DescribeGlobalClustersMessage) -> EventLoopFuture<RDSModel.GlobalClustersMessageForDescribeGlobalClusters>
    typealias DescribeInstallationMediaEventLoopFutureAsyncType = (
            _ input: RDSModel.DescribeInstallationMediaMessage) -> EventLoopFuture<RDSModel.InstallationMediaMessageForDescribeInstallationMedia>
    typealias DescribeOptionGroupOptionsEventLoopFutureAsyncType = (
            _ input: RDSModel.DescribeOptionGroupOptionsMessage) -> EventLoopFuture<RDSModel.OptionGroupOptionsMessageForDescribeOptionGroupOptions>
    typealias DescribeOptionGroupsEventLoopFutureAsyncType = (
            _ input: RDSModel.DescribeOptionGroupsMessage) -> EventLoopFuture<RDSModel.OptionGroupsForDescribeOptionGroups>
    typealias DescribeOrderableDBInstanceOptionsEventLoopFutureAsyncType = (
            _ input: RDSModel.DescribeOrderableDBInstanceOptionsMessage) -> EventLoopFuture<RDSModel.OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions>
    typealias DescribePendingMaintenanceActionsEventLoopFutureAsyncType = (
            _ input: RDSModel.DescribePendingMaintenanceActionsMessage) -> EventLoopFuture<RDSModel.PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions>
    typealias DescribeReservedDBInstancesEventLoopFutureAsyncType = (
            _ input: RDSModel.DescribeReservedDBInstancesMessage) -> EventLoopFuture<RDSModel.ReservedDBInstanceMessageForDescribeReservedDBInstances>
    typealias DescribeReservedDBInstancesOfferingsEventLoopFutureAsyncType = (
            _ input: RDSModel.DescribeReservedDBInstancesOfferingsMessage) -> EventLoopFuture<RDSModel.ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings>
    typealias DescribeSourceRegionsEventLoopFutureAsyncType = (
            _ input: RDSModel.DescribeSourceRegionsMessage) -> EventLoopFuture<RDSModel.SourceRegionMessageForDescribeSourceRegions>
    typealias DescribeValidDBInstanceModificationsEventLoopFutureAsyncType = (
            _ input: RDSModel.DescribeValidDBInstanceModificationsMessage) -> EventLoopFuture<RDSModel.DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications>
    typealias DownloadDBLogFilePortionEventLoopFutureAsyncType = (
            _ input: RDSModel.DownloadDBLogFilePortionMessage) -> EventLoopFuture<RDSModel.DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion>
    typealias FailoverDBClusterEventLoopFutureAsyncType = (
            _ input: RDSModel.FailoverDBClusterMessage) -> EventLoopFuture<RDSModel.FailoverDBClusterResultForFailoverDBCluster>
    typealias FailoverGlobalClusterEventLoopFutureAsyncType = (
            _ input: RDSModel.FailoverGlobalClusterMessage) -> EventLoopFuture<RDSModel.FailoverGlobalClusterResultForFailoverGlobalCluster>
    typealias ImportInstallationMediaEventLoopFutureAsyncType = (
            _ input: RDSModel.ImportInstallationMediaMessage) -> EventLoopFuture<RDSModel.InstallationMediaForImportInstallationMedia>
    typealias ListTagsForResourceEventLoopFutureAsyncType = (
            _ input: RDSModel.ListTagsForResourceMessage) -> EventLoopFuture<RDSModel.TagListMessageForListTagsForResource>
    typealias ModifyCertificatesEventLoopFutureAsyncType = (
            _ input: RDSModel.ModifyCertificatesMessage) -> EventLoopFuture<RDSModel.ModifyCertificatesResultForModifyCertificates>
    typealias ModifyCurrentDBClusterCapacityEventLoopFutureAsyncType = (
            _ input: RDSModel.ModifyCurrentDBClusterCapacityMessage) -> EventLoopFuture<RDSModel.DBClusterCapacityInfoForModifyCurrentDBClusterCapacity>
    typealias ModifyDBClusterEventLoopFutureAsyncType = (
            _ input: RDSModel.ModifyDBClusterMessage) -> EventLoopFuture<RDSModel.ModifyDBClusterResultForModifyDBCluster>
    typealias ModifyDBClusterEndpointEventLoopFutureAsyncType = (
            _ input: RDSModel.ModifyDBClusterEndpointMessage) -> EventLoopFuture<RDSModel.DBClusterEndpointForModifyDBClusterEndpoint>
    typealias ModifyDBClusterParameterGroupEventLoopFutureAsyncType = (
            _ input: RDSModel.ModifyDBClusterParameterGroupMessage) -> EventLoopFuture<RDSModel.DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup>
    typealias ModifyDBClusterSnapshotAttributeEventLoopFutureAsyncType = (
            _ input: RDSModel.ModifyDBClusterSnapshotAttributeMessage) -> EventLoopFuture<RDSModel.ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute>
    typealias ModifyDBInstanceEventLoopFutureAsyncType = (
            _ input: RDSModel.ModifyDBInstanceMessage) -> EventLoopFuture<RDSModel.ModifyDBInstanceResultForModifyDBInstance>
    typealias ModifyDBParameterGroupEventLoopFutureAsyncType = (
            _ input: RDSModel.ModifyDBParameterGroupMessage) -> EventLoopFuture<RDSModel.DBParameterGroupNameMessageForModifyDBParameterGroup>
    typealias ModifyDBProxyEventLoopFutureAsyncType = (
            _ input: RDSModel.ModifyDBProxyRequest) -> EventLoopFuture<RDSModel.ModifyDBProxyResponseForModifyDBProxy>
    typealias ModifyDBProxyTargetGroupEventLoopFutureAsyncType = (
            _ input: RDSModel.ModifyDBProxyTargetGroupRequest) -> EventLoopFuture<RDSModel.ModifyDBProxyTargetGroupResponseForModifyDBProxyTargetGroup>
    typealias ModifyDBSnapshotEventLoopFutureAsyncType = (
            _ input: RDSModel.ModifyDBSnapshotMessage) -> EventLoopFuture<RDSModel.ModifyDBSnapshotResultForModifyDBSnapshot>
    typealias ModifyDBSnapshotAttributeEventLoopFutureAsyncType = (
            _ input: RDSModel.ModifyDBSnapshotAttributeMessage) -> EventLoopFuture<RDSModel.ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute>
    typealias ModifyDBSubnetGroupEventLoopFutureAsyncType = (
            _ input: RDSModel.ModifyDBSubnetGroupMessage) -> EventLoopFuture<RDSModel.ModifyDBSubnetGroupResultForModifyDBSubnetGroup>
    typealias ModifyEventSubscriptionEventLoopFutureAsyncType = (
            _ input: RDSModel.ModifyEventSubscriptionMessage) -> EventLoopFuture<RDSModel.ModifyEventSubscriptionResultForModifyEventSubscription>
    typealias ModifyGlobalClusterEventLoopFutureAsyncType = (
            _ input: RDSModel.ModifyGlobalClusterMessage) -> EventLoopFuture<RDSModel.ModifyGlobalClusterResultForModifyGlobalCluster>
    typealias ModifyOptionGroupEventLoopFutureAsyncType = (
            _ input: RDSModel.ModifyOptionGroupMessage) -> EventLoopFuture<RDSModel.ModifyOptionGroupResultForModifyOptionGroup>
    typealias PromoteReadReplicaEventLoopFutureAsyncType = (
            _ input: RDSModel.PromoteReadReplicaMessage) -> EventLoopFuture<RDSModel.PromoteReadReplicaResultForPromoteReadReplica>
    typealias PromoteReadReplicaDBClusterEventLoopFutureAsyncType = (
            _ input: RDSModel.PromoteReadReplicaDBClusterMessage) -> EventLoopFuture<RDSModel.PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster>
    typealias PurchaseReservedDBInstancesOfferingEventLoopFutureAsyncType = (
            _ input: RDSModel.PurchaseReservedDBInstancesOfferingMessage) -> EventLoopFuture<RDSModel.PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering>
    typealias RebootDBInstanceEventLoopFutureAsyncType = (
            _ input: RDSModel.RebootDBInstanceMessage) -> EventLoopFuture<RDSModel.RebootDBInstanceResultForRebootDBInstance>
    typealias RegisterDBProxyTargetsEventLoopFutureAsyncType = (
            _ input: RDSModel.RegisterDBProxyTargetsRequest) -> EventLoopFuture<RDSModel.RegisterDBProxyTargetsResponseForRegisterDBProxyTargets>
    typealias RemoveFromGlobalClusterEventLoopFutureAsyncType = (
            _ input: RDSModel.RemoveFromGlobalClusterMessage) -> EventLoopFuture<RDSModel.RemoveFromGlobalClusterResultForRemoveFromGlobalCluster>
    typealias RemoveRoleFromDBClusterEventLoopFutureAsyncType = (
            _ input: RDSModel.RemoveRoleFromDBClusterMessage) -> EventLoopFuture<Void>
    typealias RemoveRoleFromDBInstanceEventLoopFutureAsyncType = (
            _ input: RDSModel.RemoveRoleFromDBInstanceMessage) -> EventLoopFuture<Void>
    typealias RemoveSourceIdentifierFromSubscriptionEventLoopFutureAsyncType = (
            _ input: RDSModel.RemoveSourceIdentifierFromSubscriptionMessage) -> EventLoopFuture<RDSModel.RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription>
    typealias RemoveTagsFromResourceEventLoopFutureAsyncType = (
            _ input: RDSModel.RemoveTagsFromResourceMessage) -> EventLoopFuture<Void>
    typealias ResetDBClusterParameterGroupEventLoopFutureAsyncType = (
            _ input: RDSModel.ResetDBClusterParameterGroupMessage) -> EventLoopFuture<RDSModel.DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup>
    typealias ResetDBParameterGroupEventLoopFutureAsyncType = (
            _ input: RDSModel.ResetDBParameterGroupMessage) -> EventLoopFuture<RDSModel.DBParameterGroupNameMessageForResetDBParameterGroup>
    typealias RestoreDBClusterFromS3EventLoopFutureAsyncType = (
            _ input: RDSModel.RestoreDBClusterFromS3Message) -> EventLoopFuture<RDSModel.RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3>
    typealias RestoreDBClusterFromSnapshotEventLoopFutureAsyncType = (
            _ input: RDSModel.RestoreDBClusterFromSnapshotMessage) -> EventLoopFuture<RDSModel.RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot>
    typealias RestoreDBClusterToPointInTimeEventLoopFutureAsyncType = (
            _ input: RDSModel.RestoreDBClusterToPointInTimeMessage) -> EventLoopFuture<RDSModel.RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime>
    typealias RestoreDBInstanceFromDBSnapshotEventLoopFutureAsyncType = (
            _ input: RDSModel.RestoreDBInstanceFromDBSnapshotMessage) -> EventLoopFuture<RDSModel.RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot>
    typealias RestoreDBInstanceFromS3EventLoopFutureAsyncType = (
            _ input: RDSModel.RestoreDBInstanceFromS3Message) -> EventLoopFuture<RDSModel.RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3>
    typealias RestoreDBInstanceToPointInTimeEventLoopFutureAsyncType = (
            _ input: RDSModel.RestoreDBInstanceToPointInTimeMessage) -> EventLoopFuture<RDSModel.RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime>
    typealias RevokeDBSecurityGroupIngressEventLoopFutureAsyncType = (
            _ input: RDSModel.RevokeDBSecurityGroupIngressMessage) -> EventLoopFuture<RDSModel.RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress>
    typealias StartActivityStreamEventLoopFutureAsyncType = (
            _ input: RDSModel.StartActivityStreamRequest) -> EventLoopFuture<RDSModel.StartActivityStreamResponseForStartActivityStream>
    typealias StartDBClusterEventLoopFutureAsyncType = (
            _ input: RDSModel.StartDBClusterMessage) -> EventLoopFuture<RDSModel.StartDBClusterResultForStartDBCluster>
    typealias StartDBInstanceEventLoopFutureAsyncType = (
            _ input: RDSModel.StartDBInstanceMessage) -> EventLoopFuture<RDSModel.StartDBInstanceResultForStartDBInstance>
    typealias StartDBInstanceAutomatedBackupsReplicationEventLoopFutureAsyncType = (
            _ input: RDSModel.StartDBInstanceAutomatedBackupsReplicationMessage) -> EventLoopFuture<RDSModel.StartDBInstanceAutomatedBackupsReplicationResultForStartDBInstanceAutomatedBackupsReplication>
    typealias StartExportTaskEventLoopFutureAsyncType = (
            _ input: RDSModel.StartExportTaskMessage) -> EventLoopFuture<RDSModel.ExportTaskForStartExportTask>
    typealias StopActivityStreamEventLoopFutureAsyncType = (
            _ input: RDSModel.StopActivityStreamRequest) -> EventLoopFuture<RDSModel.StopActivityStreamResponseForStopActivityStream>
    typealias StopDBClusterEventLoopFutureAsyncType = (
            _ input: RDSModel.StopDBClusterMessage) -> EventLoopFuture<RDSModel.StopDBClusterResultForStopDBCluster>
    typealias StopDBInstanceEventLoopFutureAsyncType = (
            _ input: RDSModel.StopDBInstanceMessage) -> EventLoopFuture<RDSModel.StopDBInstanceResultForStopDBInstance>
    typealias StopDBInstanceAutomatedBackupsReplicationEventLoopFutureAsyncType = (
            _ input: RDSModel.StopDBInstanceAutomatedBackupsReplicationMessage) -> EventLoopFuture<RDSModel.StopDBInstanceAutomatedBackupsReplicationResultForStopDBInstanceAutomatedBackupsReplication>

    /**
     Invokes the AddRoleToDBCluster operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AddRoleToDBClusterMessage object being passed to this operation.
           The possible errors are: dBClusterNotFound, dBClusterRoleAlreadyExists, dBClusterRoleQuotaExceeded, invalidDBClusterState.
     */
    func addRoleToDBCluster(
            input: RDSModel.AddRoleToDBClusterMessage) -> EventLoopFuture<Void>

    /**
     Invokes the AddRoleToDBInstance operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AddRoleToDBInstanceMessage object being passed to this operation.
           The possible errors are: dBInstanceNotFound, dBInstanceRoleAlreadyExists, dBInstanceRoleQuotaExceeded, invalidDBInstanceState.
     */
    func addRoleToDBInstance(
            input: RDSModel.AddRoleToDBInstanceMessage) -> EventLoopFuture<Void>

    /**
     Invokes the AddSourceIdentifierToSubscription operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AddSourceIdentifierToSubscriptionMessage object being passed to this operation.
     - Returns: A future to the AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: sourceNotFound, subscriptionNotFound.
     */
    func addSourceIdentifierToSubscription(
            input: RDSModel.AddSourceIdentifierToSubscriptionMessage) -> EventLoopFuture<RDSModel.AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription>

    /**
     Invokes the AddTagsToResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AddTagsToResourceMessage object being passed to this operation.
           The possible errors are: dBClusterNotFound, dBInstanceNotFound, dBProxyNotFound, dBProxyTargetGroupNotFound, dBSnapshotNotFound.
     */
    func addTagsToResource(
            input: RDSModel.AddTagsToResourceMessage) -> EventLoopFuture<Void>

    /**
     Invokes the ApplyPendingMaintenanceAction operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ApplyPendingMaintenanceActionMessage object being passed to this operation.
     - Returns: A future to the ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidDBClusterState, invalidDBInstanceState, resourceNotFound.
     */
    func applyPendingMaintenanceAction(
            input: RDSModel.ApplyPendingMaintenanceActionMessage) -> EventLoopFuture<RDSModel.ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction>

    /**
     Invokes the AuthorizeDBSecurityGroupIngress operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AuthorizeDBSecurityGroupIngressMessage object being passed to this operation.
     - Returns: A future to the AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationAlreadyExists, authorizationQuotaExceeded, dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    func authorizeDBSecurityGroupIngress(
            input: RDSModel.AuthorizeDBSecurityGroupIngressMessage) -> EventLoopFuture<RDSModel.AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress>

    /**
     Invokes the BacktrackDBCluster operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated BacktrackDBClusterMessage object being passed to this operation.
     - Returns: A future to the DBClusterBacktrackForBacktrackDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, invalidDBClusterState.
     */
    func backtrackDBCluster(
            input: RDSModel.BacktrackDBClusterMessage) -> EventLoopFuture<RDSModel.DBClusterBacktrackForBacktrackDBCluster>

    /**
     Invokes the CancelExportTask operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CancelExportTaskMessage object being passed to this operation.
     - Returns: A future to the ExportTaskForCancelExportTask object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: exportTaskNotFound, invalidExportTaskState.
     */
    func cancelExportTask(
            input: RDSModel.CancelExportTaskMessage) -> EventLoopFuture<RDSModel.ExportTaskForCancelExportTask>

    /**
     Invokes the CopyDBClusterParameterGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CopyDBClusterParameterGroupMessage object being passed to this operation.
     - Returns: A future to the CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBParameterGroupAlreadyExists, dBParameterGroupNotFound, dBParameterGroupQuotaExceeded.
     */
    func copyDBClusterParameterGroup(
            input: RDSModel.CopyDBClusterParameterGroupMessage) -> EventLoopFuture<RDSModel.CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup>

    /**
     Invokes the CopyDBClusterSnapshot operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CopyDBClusterSnapshotMessage object being passed to this operation.
     - Returns: A future to the CopyDBClusterSnapshotResultForCopyDBClusterSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterSnapshotAlreadyExists, dBClusterSnapshotNotFound, invalidDBClusterSnapshotState, invalidDBClusterState, kMSKeyNotAccessible, snapshotQuotaExceeded.
     */
    func copyDBClusterSnapshot(
            input: RDSModel.CopyDBClusterSnapshotMessage) -> EventLoopFuture<RDSModel.CopyDBClusterSnapshotResultForCopyDBClusterSnapshot>

    /**
     Invokes the CopyDBParameterGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CopyDBParameterGroupMessage object being passed to this operation.
     - Returns: A future to the CopyDBParameterGroupResultForCopyDBParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBParameterGroupAlreadyExists, dBParameterGroupNotFound, dBParameterGroupQuotaExceeded.
     */
    func copyDBParameterGroup(
            input: RDSModel.CopyDBParameterGroupMessage) -> EventLoopFuture<RDSModel.CopyDBParameterGroupResultForCopyDBParameterGroup>

    /**
     Invokes the CopyDBSnapshot operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CopyDBSnapshotMessage object being passed to this operation.
     - Returns: A future to the CopyDBSnapshotResultForCopyDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: customAvailabilityZoneNotFound, dBSnapshotAlreadyExists, dBSnapshotNotFound, invalidDBSnapshotState, kMSKeyNotAccessible, snapshotQuotaExceeded.
     */
    func copyDBSnapshot(
            input: RDSModel.CopyDBSnapshotMessage) -> EventLoopFuture<RDSModel.CopyDBSnapshotResultForCopyDBSnapshot>

    /**
     Invokes the CopyOptionGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CopyOptionGroupMessage object being passed to this operation.
     - Returns: A future to the CopyOptionGroupResultForCopyOptionGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: optionGroupAlreadyExists, optionGroupNotFound, optionGroupQuotaExceeded.
     */
    func copyOptionGroup(
            input: RDSModel.CopyOptionGroupMessage) -> EventLoopFuture<RDSModel.CopyOptionGroupResultForCopyOptionGroup>

    /**
     Invokes the CreateCustomAvailabilityZone operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateCustomAvailabilityZoneMessage object being passed to this operation.
     - Returns: A future to the CreateCustomAvailabilityZoneResultForCreateCustomAvailabilityZone object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: customAvailabilityZoneAlreadyExists, customAvailabilityZoneQuotaExceeded, kMSKeyNotAccessible.
     */
    func createCustomAvailabilityZone(
            input: RDSModel.CreateCustomAvailabilityZoneMessage) -> EventLoopFuture<RDSModel.CreateCustomAvailabilityZoneResultForCreateCustomAvailabilityZone>

    /**
     Invokes the CreateDBCluster operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateDBClusterMessage object being passed to this operation.
     - Returns: A future to the CreateDBClusterResultForCreateDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBInstanceNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, globalClusterNotFound, insufficientStorageClusterCapacity, invalidDBClusterState, invalidDBInstanceState, invalidDBSubnetGroupState, invalidGlobalClusterState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, storageQuotaExceeded.
     */
    func createDBCluster(
            input: RDSModel.CreateDBClusterMessage) -> EventLoopFuture<RDSModel.CreateDBClusterResultForCreateDBCluster>

    /**
     Invokes the CreateDBClusterEndpoint operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateDBClusterEndpointMessage object being passed to this operation.
     - Returns: A future to the DBClusterEndpointForCreateDBClusterEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterEndpointAlreadyExists, dBClusterEndpointQuotaExceeded, dBClusterNotFound, dBInstanceNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    func createDBClusterEndpoint(
            input: RDSModel.CreateDBClusterEndpointMessage) -> EventLoopFuture<RDSModel.DBClusterEndpointForCreateDBClusterEndpoint>

    /**
     Invokes the CreateDBClusterParameterGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateDBClusterParameterGroupMessage object being passed to this operation.
     - Returns: A future to the CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBParameterGroupAlreadyExists, dBParameterGroupQuotaExceeded.
     */
    func createDBClusterParameterGroup(
            input: RDSModel.CreateDBClusterParameterGroupMessage) -> EventLoopFuture<RDSModel.CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup>

    /**
     Invokes the CreateDBClusterSnapshot operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateDBClusterSnapshotMessage object being passed to this operation.
     - Returns: A future to the CreateDBClusterSnapshotResultForCreateDBClusterSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, dBClusterSnapshotAlreadyExists, invalidDBClusterSnapshotState, invalidDBClusterState, snapshotQuotaExceeded.
     */
    func createDBClusterSnapshot(
            input: RDSModel.CreateDBClusterSnapshotMessage) -> EventLoopFuture<RDSModel.CreateDBClusterSnapshotResultForCreateDBClusterSnapshot>

    /**
     Invokes the CreateDBInstance operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateDBInstanceMessage object being passed to this operation.
     - Returns: A future to the CreateDBInstanceResultForCreateDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, backupPolicyNotFound, dBClusterNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBClusterState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func createDBInstance(
            input: RDSModel.CreateDBInstanceMessage) -> EventLoopFuture<RDSModel.CreateDBInstanceResultForCreateDBInstance>

    /**
     Invokes the CreateDBInstanceReadReplica operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateDBInstanceReadReplicaMessage object being passed to this operation.
     - Returns: A future to the CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBInstanceAlreadyExists, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotAllowed, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidDBSubnetGroup, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func createDBInstanceReadReplica(
            input: RDSModel.CreateDBInstanceReadReplicaMessage) -> EventLoopFuture<RDSModel.CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica>

    /**
     Invokes the CreateDBParameterGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateDBParameterGroupMessage object being passed to this operation.
     - Returns: A future to the CreateDBParameterGroupResultForCreateDBParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBParameterGroupAlreadyExists, dBParameterGroupQuotaExceeded.
     */
    func createDBParameterGroup(
            input: RDSModel.CreateDBParameterGroupMessage) -> EventLoopFuture<RDSModel.CreateDBParameterGroupResultForCreateDBParameterGroup>

    /**
     Invokes the CreateDBProxy operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateDBProxyRequest object being passed to this operation.
     - Returns: A future to the CreateDBProxyResponseForCreateDBProxy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBProxyAlreadyExists, dBProxyQuotaExceeded, invalidSubnet.
     */
    func createDBProxy(
            input: RDSModel.CreateDBProxyRequest) -> EventLoopFuture<RDSModel.CreateDBProxyResponseForCreateDBProxy>

    /**
     Invokes the CreateDBSecurityGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateDBSecurityGroupMessage object being passed to this operation.
     - Returns: A future to the CreateDBSecurityGroupResultForCreateDBSecurityGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBSecurityGroupAlreadyExists, dBSecurityGroupNotSupported, dBSecurityGroupQuotaExceeded.
     */
    func createDBSecurityGroup(
            input: RDSModel.CreateDBSecurityGroupMessage) -> EventLoopFuture<RDSModel.CreateDBSecurityGroupResultForCreateDBSecurityGroup>

    /**
     Invokes the CreateDBSnapshot operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateDBSnapshotMessage object being passed to this operation.
     - Returns: A future to the CreateDBSnapshotResultForCreateDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound, dBSnapshotAlreadyExists, invalidDBInstanceState, snapshotQuotaExceeded.
     */
    func createDBSnapshot(
            input: RDSModel.CreateDBSnapshotMessage) -> EventLoopFuture<RDSModel.CreateDBSnapshotResultForCreateDBSnapshot>

    /**
     Invokes the CreateDBSubnetGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateDBSubnetGroupMessage object being passed to this operation.
     - Returns: A future to the CreateDBSubnetGroupResultForCreateDBSubnetGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBSubnetGroupAlreadyExists, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupQuotaExceeded, dBSubnetQuotaExceeded, invalidSubnet.
     */
    func createDBSubnetGroup(
            input: RDSModel.CreateDBSubnetGroupMessage) -> EventLoopFuture<RDSModel.CreateDBSubnetGroupResultForCreateDBSubnetGroup>

    /**
     Invokes the CreateEventSubscription operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateEventSubscriptionMessage object being passed to this operation.
     - Returns: A future to the CreateEventSubscriptionResultForCreateEventSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: eventSubscriptionQuotaExceeded, sNSInvalidTopic, sNSNoAuthorization, sNSTopicArnNotFound, sourceNotFound, subscriptionAlreadyExist, subscriptionCategoryNotFound.
     */
    func createEventSubscription(
            input: RDSModel.CreateEventSubscriptionMessage) -> EventLoopFuture<RDSModel.CreateEventSubscriptionResultForCreateEventSubscription>

    /**
     Invokes the CreateGlobalCluster operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateGlobalClusterMessage object being passed to this operation.
     - Returns: A future to the CreateGlobalClusterResultForCreateGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, globalClusterAlreadyExists, globalClusterQuotaExceeded, invalidDBClusterState.
     */
    func createGlobalCluster(
            input: RDSModel.CreateGlobalClusterMessage) -> EventLoopFuture<RDSModel.CreateGlobalClusterResultForCreateGlobalCluster>

    /**
     Invokes the CreateOptionGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateOptionGroupMessage object being passed to this operation.
     - Returns: A future to the CreateOptionGroupResultForCreateOptionGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: optionGroupAlreadyExists, optionGroupQuotaExceeded.
     */
    func createOptionGroup(
            input: RDSModel.CreateOptionGroupMessage) -> EventLoopFuture<RDSModel.CreateOptionGroupResultForCreateOptionGroup>

    /**
     Invokes the DeleteCustomAvailabilityZone operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteCustomAvailabilityZoneMessage object being passed to this operation.
     - Returns: A future to the DeleteCustomAvailabilityZoneResultForDeleteCustomAvailabilityZone object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: customAvailabilityZoneNotFound, kMSKeyNotAccessible.
     */
    func deleteCustomAvailabilityZone(
            input: RDSModel.DeleteCustomAvailabilityZoneMessage) -> EventLoopFuture<RDSModel.DeleteCustomAvailabilityZoneResultForDeleteCustomAvailabilityZone>

    /**
     Invokes the DeleteDBCluster operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteDBClusterMessage object being passed to this operation.
     - Returns: A future to the DeleteDBClusterResultForDeleteDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, dBClusterSnapshotAlreadyExists, invalidDBClusterSnapshotState, invalidDBClusterState, snapshotQuotaExceeded.
     */
    func deleteDBCluster(
            input: RDSModel.DeleteDBClusterMessage) -> EventLoopFuture<RDSModel.DeleteDBClusterResultForDeleteDBCluster>

    /**
     Invokes the DeleteDBClusterEndpoint operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteDBClusterEndpointMessage object being passed to this operation.
     - Returns: A future to the DBClusterEndpointForDeleteDBClusterEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterEndpointNotFound, invalidDBClusterEndpointState, invalidDBClusterState.
     */
    func deleteDBClusterEndpoint(
            input: RDSModel.DeleteDBClusterEndpointMessage) -> EventLoopFuture<RDSModel.DBClusterEndpointForDeleteDBClusterEndpoint>

    /**
     Invokes the DeleteDBClusterParameterGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteDBClusterParameterGroupMessage object being passed to this operation.
           The possible errors are: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func deleteDBClusterParameterGroup(
            input: RDSModel.DeleteDBClusterParameterGroupMessage) -> EventLoopFuture<Void>

    /**
     Invokes the DeleteDBClusterSnapshot operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteDBClusterSnapshotMessage object being passed to this operation.
     - Returns: A future to the DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterSnapshotNotFound, invalidDBClusterSnapshotState.
     */
    func deleteDBClusterSnapshot(
            input: RDSModel.DeleteDBClusterSnapshotMessage) -> EventLoopFuture<RDSModel.DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot>

    /**
     Invokes the DeleteDBInstance operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteDBInstanceMessage object being passed to this operation.
     - Returns: A future to the DeleteDBInstanceResultForDeleteDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBInstanceAutomatedBackupQuotaExceeded, dBInstanceNotFound, dBSnapshotAlreadyExists, invalidDBClusterState, invalidDBInstanceState, snapshotQuotaExceeded.
     */
    func deleteDBInstance(
            input: RDSModel.DeleteDBInstanceMessage) -> EventLoopFuture<RDSModel.DeleteDBInstanceResultForDeleteDBInstance>

    /**
     Invokes the DeleteDBInstanceAutomatedBackup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteDBInstanceAutomatedBackupMessage object being passed to this operation.
     - Returns: A future to the DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBInstanceAutomatedBackupNotFound, invalidDBInstanceAutomatedBackupState.
     */
    func deleteDBInstanceAutomatedBackup(
            input: RDSModel.DeleteDBInstanceAutomatedBackupMessage) -> EventLoopFuture<RDSModel.DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup>

    /**
     Invokes the DeleteDBParameterGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteDBParameterGroupMessage object being passed to this operation.
           The possible errors are: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func deleteDBParameterGroup(
            input: RDSModel.DeleteDBParameterGroupMessage) -> EventLoopFuture<Void>

    /**
     Invokes the DeleteDBProxy operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteDBProxyRequest object being passed to this operation.
     - Returns: A future to the DeleteDBProxyResponseForDeleteDBProxy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBProxyNotFound, invalidDBProxyState.
     */
    func deleteDBProxy(
            input: RDSModel.DeleteDBProxyRequest) -> EventLoopFuture<RDSModel.DeleteDBProxyResponseForDeleteDBProxy>

    /**
     Invokes the DeleteDBSecurityGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteDBSecurityGroupMessage object being passed to this operation.
           The possible errors are: dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    func deleteDBSecurityGroup(
            input: RDSModel.DeleteDBSecurityGroupMessage) -> EventLoopFuture<Void>

    /**
     Invokes the DeleteDBSnapshot operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteDBSnapshotMessage object being passed to this operation.
     - Returns: A future to the DeleteDBSnapshotResultForDeleteDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBSnapshotNotFound, invalidDBSnapshotState.
     */
    func deleteDBSnapshot(
            input: RDSModel.DeleteDBSnapshotMessage) -> EventLoopFuture<RDSModel.DeleteDBSnapshotResultForDeleteDBSnapshot>

    /**
     Invokes the DeleteDBSubnetGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteDBSubnetGroupMessage object being passed to this operation.
           The possible errors are: dBSubnetGroupNotFound, invalidDBSubnetGroupState, invalidDBSubnetState.
     */
    func deleteDBSubnetGroup(
            input: RDSModel.DeleteDBSubnetGroupMessage) -> EventLoopFuture<Void>

    /**
     Invokes the DeleteEventSubscription operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteEventSubscriptionMessage object being passed to this operation.
     - Returns: A future to the DeleteEventSubscriptionResultForDeleteEventSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidEventSubscriptionState, subscriptionNotFound.
     */
    func deleteEventSubscription(
            input: RDSModel.DeleteEventSubscriptionMessage) -> EventLoopFuture<RDSModel.DeleteEventSubscriptionResultForDeleteEventSubscription>

    /**
     Invokes the DeleteGlobalCluster operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteGlobalClusterMessage object being passed to this operation.
     - Returns: A future to the DeleteGlobalClusterResultForDeleteGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: globalClusterNotFound, invalidGlobalClusterState.
     */
    func deleteGlobalCluster(
            input: RDSModel.DeleteGlobalClusterMessage) -> EventLoopFuture<RDSModel.DeleteGlobalClusterResultForDeleteGlobalCluster>

    /**
     Invokes the DeleteInstallationMedia operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteInstallationMediaMessage object being passed to this operation.
     - Returns: A future to the InstallationMediaForDeleteInstallationMedia object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: installationMediaNotFound.
     */
    func deleteInstallationMedia(
            input: RDSModel.DeleteInstallationMediaMessage) -> EventLoopFuture<RDSModel.InstallationMediaForDeleteInstallationMedia>

    /**
     Invokes the DeleteOptionGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteOptionGroupMessage object being passed to this operation.
           The possible errors are: invalidOptionGroupState, optionGroupNotFound.
     */
    func deleteOptionGroup(
            input: RDSModel.DeleteOptionGroupMessage) -> EventLoopFuture<Void>

    /**
     Invokes the DeregisterDBProxyTargets operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeregisterDBProxyTargetsRequest object being passed to this operation.
     - Returns: A future to the DeregisterDBProxyTargetsResponseForDeregisterDBProxyTargets object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBProxyNotFound, dBProxyTargetGroupNotFound, dBProxyTargetNotFound, invalidDBProxyState.
     */
    func deregisterDBProxyTargets(
            input: RDSModel.DeregisterDBProxyTargetsRequest) -> EventLoopFuture<RDSModel.DeregisterDBProxyTargetsResponseForDeregisterDBProxyTargets>

    /**
     Invokes the DescribeAccountAttributes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeAccountAttributesMessage object being passed to this operation.
     - Returns: A future to the AccountAttributesMessageForDescribeAccountAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeAccountAttributes(
            input: RDSModel.DescribeAccountAttributesMessage) -> EventLoopFuture<RDSModel.AccountAttributesMessageForDescribeAccountAttributes>

    /**
     Invokes the DescribeCertificates operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeCertificatesMessage object being passed to this operation.
     - Returns: A future to the CertificateMessageForDescribeCertificates object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: certificateNotFound.
     */
    func describeCertificates(
            input: RDSModel.DescribeCertificatesMessage) -> EventLoopFuture<RDSModel.CertificateMessageForDescribeCertificates>

    /**
     Invokes the DescribeCustomAvailabilityZones operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeCustomAvailabilityZonesMessage object being passed to this operation.
     - Returns: A future to the CustomAvailabilityZoneMessageForDescribeCustomAvailabilityZones object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: customAvailabilityZoneNotFound.
     */
    func describeCustomAvailabilityZones(
            input: RDSModel.DescribeCustomAvailabilityZonesMessage) -> EventLoopFuture<RDSModel.CustomAvailabilityZoneMessageForDescribeCustomAvailabilityZones>

    /**
     Invokes the DescribeDBClusterBacktracks operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeDBClusterBacktracksMessage object being passed to this operation.
     - Returns: A future to the DBClusterBacktrackMessageForDescribeDBClusterBacktracks object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterBacktrackNotFound, dBClusterNotFound.
     */
    func describeDBClusterBacktracks(
            input: RDSModel.DescribeDBClusterBacktracksMessage) -> EventLoopFuture<RDSModel.DBClusterBacktrackMessageForDescribeDBClusterBacktracks>

    /**
     Invokes the DescribeDBClusterEndpoints operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeDBClusterEndpointsMessage object being passed to this operation.
     - Returns: A future to the DBClusterEndpointMessageForDescribeDBClusterEndpoints object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound.
     */
    func describeDBClusterEndpoints(
            input: RDSModel.DescribeDBClusterEndpointsMessage) -> EventLoopFuture<RDSModel.DBClusterEndpointMessageForDescribeDBClusterEndpoints>

    /**
     Invokes the DescribeDBClusterParameterGroups operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeDBClusterParameterGroupsMessage object being passed to this operation.
     - Returns: A future to the DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound.
     */
    func describeDBClusterParameterGroups(
            input: RDSModel.DescribeDBClusterParameterGroupsMessage) -> EventLoopFuture<RDSModel.DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups>

    /**
     Invokes the DescribeDBClusterParameters operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeDBClusterParametersMessage object being passed to this operation.
     - Returns: A future to the DBClusterParameterGroupDetailsForDescribeDBClusterParameters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound.
     */
    func describeDBClusterParameters(
            input: RDSModel.DescribeDBClusterParametersMessage) -> EventLoopFuture<RDSModel.DBClusterParameterGroupDetailsForDescribeDBClusterParameters>

    /**
     Invokes the DescribeDBClusterSnapshotAttributes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeDBClusterSnapshotAttributesMessage object being passed to this operation.
     - Returns: A future to the DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterSnapshotNotFound.
     */
    func describeDBClusterSnapshotAttributes(
            input: RDSModel.DescribeDBClusterSnapshotAttributesMessage) -> EventLoopFuture<RDSModel.DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes>

    /**
     Invokes the DescribeDBClusterSnapshots operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeDBClusterSnapshotsMessage object being passed to this operation.
     - Returns: A future to the DBClusterSnapshotMessageForDescribeDBClusterSnapshots object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterSnapshotNotFound.
     */
    func describeDBClusterSnapshots(
            input: RDSModel.DescribeDBClusterSnapshotsMessage) -> EventLoopFuture<RDSModel.DBClusterSnapshotMessageForDescribeDBClusterSnapshots>

    /**
     Invokes the DescribeDBClusters operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeDBClustersMessage object being passed to this operation.
     - Returns: A future to the DBClusterMessageForDescribeDBClusters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound.
     */
    func describeDBClusters(
            input: RDSModel.DescribeDBClustersMessage) -> EventLoopFuture<RDSModel.DBClusterMessageForDescribeDBClusters>

    /**
     Invokes the DescribeDBEngineVersions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeDBEngineVersionsMessage object being passed to this operation.
     - Returns: A future to the DBEngineVersionMessageForDescribeDBEngineVersions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeDBEngineVersions(
            input: RDSModel.DescribeDBEngineVersionsMessage) -> EventLoopFuture<RDSModel.DBEngineVersionMessageForDescribeDBEngineVersions>

    /**
     Invokes the DescribeDBInstanceAutomatedBackups operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeDBInstanceAutomatedBackupsMessage object being passed to this operation.
     - Returns: A future to the DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBInstanceAutomatedBackupNotFound.
     */
    func describeDBInstanceAutomatedBackups(
            input: RDSModel.DescribeDBInstanceAutomatedBackupsMessage) -> EventLoopFuture<RDSModel.DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups>

    /**
     Invokes the DescribeDBInstances operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeDBInstancesMessage object being passed to this operation.
     - Returns: A future to the DBInstanceMessageForDescribeDBInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound.
     */
    func describeDBInstances(
            input: RDSModel.DescribeDBInstancesMessage) -> EventLoopFuture<RDSModel.DBInstanceMessageForDescribeDBInstances>

    /**
     Invokes the DescribeDBLogFiles operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeDBLogFilesMessage object being passed to this operation.
     - Returns: A future to the DescribeDBLogFilesResponseForDescribeDBLogFiles object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound.
     */
    func describeDBLogFiles(
            input: RDSModel.DescribeDBLogFilesMessage) -> EventLoopFuture<RDSModel.DescribeDBLogFilesResponseForDescribeDBLogFiles>

    /**
     Invokes the DescribeDBParameterGroups operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeDBParameterGroupsMessage object being passed to this operation.
     - Returns: A future to the DBParameterGroupsMessageForDescribeDBParameterGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound.
     */
    func describeDBParameterGroups(
            input: RDSModel.DescribeDBParameterGroupsMessage) -> EventLoopFuture<RDSModel.DBParameterGroupsMessageForDescribeDBParameterGroups>

    /**
     Invokes the DescribeDBParameters operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeDBParametersMessage object being passed to this operation.
     - Returns: A future to the DBParameterGroupDetailsForDescribeDBParameters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound.
     */
    func describeDBParameters(
            input: RDSModel.DescribeDBParametersMessage) -> EventLoopFuture<RDSModel.DBParameterGroupDetailsForDescribeDBParameters>

    /**
     Invokes the DescribeDBProxies operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeDBProxiesRequest object being passed to this operation.
     - Returns: A future to the DescribeDBProxiesResponseForDescribeDBProxies object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBProxyNotFound.
     */
    func describeDBProxies(
            input: RDSModel.DescribeDBProxiesRequest) -> EventLoopFuture<RDSModel.DescribeDBProxiesResponseForDescribeDBProxies>

    /**
     Invokes the DescribeDBProxyTargetGroups operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeDBProxyTargetGroupsRequest object being passed to this operation.
     - Returns: A future to the DescribeDBProxyTargetGroupsResponseForDescribeDBProxyTargetGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBProxyNotFound, dBProxyTargetGroupNotFound, invalidDBProxyState.
     */
    func describeDBProxyTargetGroups(
            input: RDSModel.DescribeDBProxyTargetGroupsRequest) -> EventLoopFuture<RDSModel.DescribeDBProxyTargetGroupsResponseForDescribeDBProxyTargetGroups>

    /**
     Invokes the DescribeDBProxyTargets operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeDBProxyTargetsRequest object being passed to this operation.
     - Returns: A future to the DescribeDBProxyTargetsResponseForDescribeDBProxyTargets object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBProxyNotFound, dBProxyTargetGroupNotFound, dBProxyTargetNotFound, invalidDBProxyState.
     */
    func describeDBProxyTargets(
            input: RDSModel.DescribeDBProxyTargetsRequest) -> EventLoopFuture<RDSModel.DescribeDBProxyTargetsResponseForDescribeDBProxyTargets>

    /**
     Invokes the DescribeDBSecurityGroups operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeDBSecurityGroupsMessage object being passed to this operation.
     - Returns: A future to the DBSecurityGroupMessageForDescribeDBSecurityGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBSecurityGroupNotFound.
     */
    func describeDBSecurityGroups(
            input: RDSModel.DescribeDBSecurityGroupsMessage) -> EventLoopFuture<RDSModel.DBSecurityGroupMessageForDescribeDBSecurityGroups>

    /**
     Invokes the DescribeDBSnapshotAttributes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeDBSnapshotAttributesMessage object being passed to this operation.
     - Returns: A future to the DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBSnapshotNotFound.
     */
    func describeDBSnapshotAttributes(
            input: RDSModel.DescribeDBSnapshotAttributesMessage) -> EventLoopFuture<RDSModel.DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes>

    /**
     Invokes the DescribeDBSnapshots operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeDBSnapshotsMessage object being passed to this operation.
     - Returns: A future to the DBSnapshotMessageForDescribeDBSnapshots object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBSnapshotNotFound.
     */
    func describeDBSnapshots(
            input: RDSModel.DescribeDBSnapshotsMessage) -> EventLoopFuture<RDSModel.DBSnapshotMessageForDescribeDBSnapshots>

    /**
     Invokes the DescribeDBSubnetGroups operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeDBSubnetGroupsMessage object being passed to this operation.
     - Returns: A future to the DBSubnetGroupMessageForDescribeDBSubnetGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBSubnetGroupNotFound.
     */
    func describeDBSubnetGroups(
            input: RDSModel.DescribeDBSubnetGroupsMessage) -> EventLoopFuture<RDSModel.DBSubnetGroupMessageForDescribeDBSubnetGroups>

    /**
     Invokes the DescribeEngineDefaultClusterParameters operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeEngineDefaultClusterParametersMessage object being passed to this operation.
     - Returns: A future to the DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeEngineDefaultClusterParameters(
            input: RDSModel.DescribeEngineDefaultClusterParametersMessage) -> EventLoopFuture<RDSModel.DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters>

    /**
     Invokes the DescribeEngineDefaultParameters operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeEngineDefaultParametersMessage object being passed to this operation.
     - Returns: A future to the DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeEngineDefaultParameters(
            input: RDSModel.DescribeEngineDefaultParametersMessage) -> EventLoopFuture<RDSModel.DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters>

    /**
     Invokes the DescribeEventCategories operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeEventCategoriesMessage object being passed to this operation.
     - Returns: A future to the EventCategoriesMessageForDescribeEventCategories object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeEventCategories(
            input: RDSModel.DescribeEventCategoriesMessage) -> EventLoopFuture<RDSModel.EventCategoriesMessageForDescribeEventCategories>

    /**
     Invokes the DescribeEventSubscriptions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeEventSubscriptionsMessage object being passed to this operation.
     - Returns: A future to the EventSubscriptionsMessageForDescribeEventSubscriptions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: subscriptionNotFound.
     */
    func describeEventSubscriptions(
            input: RDSModel.DescribeEventSubscriptionsMessage) -> EventLoopFuture<RDSModel.EventSubscriptionsMessageForDescribeEventSubscriptions>

    /**
     Invokes the DescribeEvents operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeEventsMessage object being passed to this operation.
     - Returns: A future to the EventsMessageForDescribeEvents object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeEvents(
            input: RDSModel.DescribeEventsMessage) -> EventLoopFuture<RDSModel.EventsMessageForDescribeEvents>

    /**
     Invokes the DescribeExportTasks operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeExportTasksMessage object being passed to this operation.
     - Returns: A future to the ExportTasksMessageForDescribeExportTasks object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: exportTaskNotFound.
     */
    func describeExportTasks(
            input: RDSModel.DescribeExportTasksMessage) -> EventLoopFuture<RDSModel.ExportTasksMessageForDescribeExportTasks>

    /**
     Invokes the DescribeGlobalClusters operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeGlobalClustersMessage object being passed to this operation.
     - Returns: A future to the GlobalClustersMessageForDescribeGlobalClusters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: globalClusterNotFound.
     */
    func describeGlobalClusters(
            input: RDSModel.DescribeGlobalClustersMessage) -> EventLoopFuture<RDSModel.GlobalClustersMessageForDescribeGlobalClusters>

    /**
     Invokes the DescribeInstallationMedia operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeInstallationMediaMessage object being passed to this operation.
     - Returns: A future to the InstallationMediaMessageForDescribeInstallationMedia object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: installationMediaNotFound.
     */
    func describeInstallationMedia(
            input: RDSModel.DescribeInstallationMediaMessage) -> EventLoopFuture<RDSModel.InstallationMediaMessageForDescribeInstallationMedia>

    /**
     Invokes the DescribeOptionGroupOptions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeOptionGroupOptionsMessage object being passed to this operation.
     - Returns: A future to the OptionGroupOptionsMessageForDescribeOptionGroupOptions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeOptionGroupOptions(
            input: RDSModel.DescribeOptionGroupOptionsMessage) -> EventLoopFuture<RDSModel.OptionGroupOptionsMessageForDescribeOptionGroupOptions>

    /**
     Invokes the DescribeOptionGroups operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeOptionGroupsMessage object being passed to this operation.
     - Returns: A future to the OptionGroupsForDescribeOptionGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: optionGroupNotFound.
     */
    func describeOptionGroups(
            input: RDSModel.DescribeOptionGroupsMessage) -> EventLoopFuture<RDSModel.OptionGroupsForDescribeOptionGroups>

    /**
     Invokes the DescribeOrderableDBInstanceOptions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeOrderableDBInstanceOptionsMessage object being passed to this operation.
     - Returns: A future to the OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeOrderableDBInstanceOptions(
            input: RDSModel.DescribeOrderableDBInstanceOptionsMessage) -> EventLoopFuture<RDSModel.OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions>

    /**
     Invokes the DescribePendingMaintenanceActions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribePendingMaintenanceActionsMessage object being passed to this operation.
     - Returns: A future to the PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: resourceNotFound.
     */
    func describePendingMaintenanceActions(
            input: RDSModel.DescribePendingMaintenanceActionsMessage) -> EventLoopFuture<RDSModel.PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions>

    /**
     Invokes the DescribeReservedDBInstances operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeReservedDBInstancesMessage object being passed to this operation.
     - Returns: A future to the ReservedDBInstanceMessageForDescribeReservedDBInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: reservedDBInstanceNotFound.
     */
    func describeReservedDBInstances(
            input: RDSModel.DescribeReservedDBInstancesMessage) -> EventLoopFuture<RDSModel.ReservedDBInstanceMessageForDescribeReservedDBInstances>

    /**
     Invokes the DescribeReservedDBInstancesOfferings operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeReservedDBInstancesOfferingsMessage object being passed to this operation.
     - Returns: A future to the ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: reservedDBInstancesOfferingNotFound.
     */
    func describeReservedDBInstancesOfferings(
            input: RDSModel.DescribeReservedDBInstancesOfferingsMessage) -> EventLoopFuture<RDSModel.ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings>

    /**
     Invokes the DescribeSourceRegions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeSourceRegionsMessage object being passed to this operation.
     - Returns: A future to the SourceRegionMessageForDescribeSourceRegions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeSourceRegions(
            input: RDSModel.DescribeSourceRegionsMessage) -> EventLoopFuture<RDSModel.SourceRegionMessageForDescribeSourceRegions>

    /**
     Invokes the DescribeValidDBInstanceModifications operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeValidDBInstanceModificationsMessage object being passed to this operation.
     - Returns: A future to the DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound, invalidDBInstanceState.
     */
    func describeValidDBInstanceModifications(
            input: RDSModel.DescribeValidDBInstanceModificationsMessage) -> EventLoopFuture<RDSModel.DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications>

    /**
     Invokes the DownloadDBLogFilePortion operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DownloadDBLogFilePortionMessage object being passed to this operation.
     - Returns: A future to the DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound, dBLogFileNotFound.
     */
    func downloadDBLogFilePortion(
            input: RDSModel.DownloadDBLogFilePortionMessage) -> EventLoopFuture<RDSModel.DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion>

    /**
     Invokes the FailoverDBCluster operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated FailoverDBClusterMessage object being passed to this operation.
     - Returns: A future to the FailoverDBClusterResultForFailoverDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    func failoverDBCluster(
            input: RDSModel.FailoverDBClusterMessage) -> EventLoopFuture<RDSModel.FailoverDBClusterResultForFailoverDBCluster>

    /**
     Invokes the FailoverGlobalCluster operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated FailoverGlobalClusterMessage object being passed to this operation.
     - Returns: A future to the FailoverGlobalClusterResultForFailoverGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, globalClusterNotFound, invalidDBClusterState, invalidGlobalClusterState.
     */
    func failoverGlobalCluster(
            input: RDSModel.FailoverGlobalClusterMessage) -> EventLoopFuture<RDSModel.FailoverGlobalClusterResultForFailoverGlobalCluster>

    /**
     Invokes the ImportInstallationMedia operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ImportInstallationMediaMessage object being passed to this operation.
     - Returns: A future to the InstallationMediaForImportInstallationMedia object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: customAvailabilityZoneNotFound, installationMediaAlreadyExists.
     */
    func importInstallationMedia(
            input: RDSModel.ImportInstallationMediaMessage) -> EventLoopFuture<RDSModel.InstallationMediaForImportInstallationMedia>

    /**
     Invokes the ListTagsForResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListTagsForResourceMessage object being passed to this operation.
     - Returns: A future to the TagListMessageForListTagsForResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, dBInstanceNotFound, dBProxyNotFound, dBProxyTargetGroupNotFound, dBSnapshotNotFound.
     */
    func listTagsForResource(
            input: RDSModel.ListTagsForResourceMessage) -> EventLoopFuture<RDSModel.TagListMessageForListTagsForResource>

    /**
     Invokes the ModifyCertificates operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyCertificatesMessage object being passed to this operation.
     - Returns: A future to the ModifyCertificatesResultForModifyCertificates object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: certificateNotFound.
     */
    func modifyCertificates(
            input: RDSModel.ModifyCertificatesMessage) -> EventLoopFuture<RDSModel.ModifyCertificatesResultForModifyCertificates>

    /**
     Invokes the ModifyCurrentDBClusterCapacity operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyCurrentDBClusterCapacityMessage object being passed to this operation.
     - Returns: A future to the DBClusterCapacityInfoForModifyCurrentDBClusterCapacity object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, invalidDBClusterCapacity, invalidDBClusterState.
     */
    func modifyCurrentDBClusterCapacity(
            input: RDSModel.ModifyCurrentDBClusterCapacityMessage) -> EventLoopFuture<RDSModel.DBClusterCapacityInfoForModifyCurrentDBClusterCapacity>

    /**
     Invokes the ModifyDBCluster operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyDBClusterMessage object being passed to this operation.
     - Returns: A future to the ModifyDBClusterResultForModifyDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBSubnetGroupNotFound, domainNotFound, invalidDBClusterState, invalidDBInstanceState, invalidDBSecurityGroupState, invalidDBSubnetGroupState, invalidSubnet, invalidVPCNetworkState, storageQuotaExceeded.
     */
    func modifyDBCluster(
            input: RDSModel.ModifyDBClusterMessage) -> EventLoopFuture<RDSModel.ModifyDBClusterResultForModifyDBCluster>

    /**
     Invokes the ModifyDBClusterEndpoint operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyDBClusterEndpointMessage object being passed to this operation.
     - Returns: A future to the DBClusterEndpointForModifyDBClusterEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterEndpointNotFound, dBInstanceNotFound, invalidDBClusterEndpointState, invalidDBClusterState, invalidDBInstanceState.
     */
    func modifyDBClusterEndpoint(
            input: RDSModel.ModifyDBClusterEndpointMessage) -> EventLoopFuture<RDSModel.DBClusterEndpointForModifyDBClusterEndpoint>

    /**
     Invokes the ModifyDBClusterParameterGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyDBClusterParameterGroupMessage object being passed to this operation.
     - Returns: A future to the DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func modifyDBClusterParameterGroup(
            input: RDSModel.ModifyDBClusterParameterGroupMessage) -> EventLoopFuture<RDSModel.DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup>

    /**
     Invokes the ModifyDBClusterSnapshotAttribute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyDBClusterSnapshotAttributeMessage object being passed to this operation.
     - Returns: A future to the ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterSnapshotNotFound, invalidDBClusterSnapshotState, sharedSnapshotQuotaExceeded.
     */
    func modifyDBClusterSnapshotAttribute(
            input: RDSModel.ModifyDBClusterSnapshotAttributeMessage) -> EventLoopFuture<RDSModel.ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute>

    /**
     Invokes the ModifyDBInstance operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyDBInstanceMessage object being passed to this operation.
     - Returns: A future to the ModifyDBInstanceResultForModifyDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, backupPolicyNotFound, certificateNotFound, dBInstanceAlreadyExists, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBUpgradeDependencyFailure, domainNotFound, insufficientDBInstanceCapacity, invalidDBClusterState, invalidDBInstanceState, invalidDBSecurityGroupState, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func modifyDBInstance(
            input: RDSModel.ModifyDBInstanceMessage) -> EventLoopFuture<RDSModel.ModifyDBInstanceResultForModifyDBInstance>

    /**
     Invokes the ModifyDBParameterGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyDBParameterGroupMessage object being passed to this operation.
     - Returns: A future to the DBParameterGroupNameMessageForModifyDBParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func modifyDBParameterGroup(
            input: RDSModel.ModifyDBParameterGroupMessage) -> EventLoopFuture<RDSModel.DBParameterGroupNameMessageForModifyDBParameterGroup>

    /**
     Invokes the ModifyDBProxy operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyDBProxyRequest object being passed to this operation.
     - Returns: A future to the ModifyDBProxyResponseForModifyDBProxy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBProxyAlreadyExists, dBProxyNotFound, invalidDBProxyState.
     */
    func modifyDBProxy(
            input: RDSModel.ModifyDBProxyRequest) -> EventLoopFuture<RDSModel.ModifyDBProxyResponseForModifyDBProxy>

    /**
     Invokes the ModifyDBProxyTargetGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyDBProxyTargetGroupRequest object being passed to this operation.
     - Returns: A future to the ModifyDBProxyTargetGroupResponseForModifyDBProxyTargetGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBProxyNotFound, dBProxyTargetGroupNotFound, invalidDBProxyState.
     */
    func modifyDBProxyTargetGroup(
            input: RDSModel.ModifyDBProxyTargetGroupRequest) -> EventLoopFuture<RDSModel.ModifyDBProxyTargetGroupResponseForModifyDBProxyTargetGroup>

    /**
     Invokes the ModifyDBSnapshot operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyDBSnapshotMessage object being passed to this operation.
     - Returns: A future to the ModifyDBSnapshotResultForModifyDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBSnapshotNotFound.
     */
    func modifyDBSnapshot(
            input: RDSModel.ModifyDBSnapshotMessage) -> EventLoopFuture<RDSModel.ModifyDBSnapshotResultForModifyDBSnapshot>

    /**
     Invokes the ModifyDBSnapshotAttribute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyDBSnapshotAttributeMessage object being passed to this operation.
     - Returns: A future to the ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBSnapshotNotFound, invalidDBSnapshotState, sharedSnapshotQuotaExceeded.
     */
    func modifyDBSnapshotAttribute(
            input: RDSModel.ModifyDBSnapshotAttributeMessage) -> EventLoopFuture<RDSModel.ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute>

    /**
     Invokes the ModifyDBSubnetGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyDBSubnetGroupMessage object being passed to this operation.
     - Returns: A future to the ModifyDBSubnetGroupResultForModifyDBSubnetGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, dBSubnetQuotaExceeded, invalidSubnet, subnetAlreadyInUse.
     */
    func modifyDBSubnetGroup(
            input: RDSModel.ModifyDBSubnetGroupMessage) -> EventLoopFuture<RDSModel.ModifyDBSubnetGroupResultForModifyDBSubnetGroup>

    /**
     Invokes the ModifyEventSubscription operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyEventSubscriptionMessage object being passed to this operation.
     - Returns: A future to the ModifyEventSubscriptionResultForModifyEventSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: eventSubscriptionQuotaExceeded, sNSInvalidTopic, sNSNoAuthorization, sNSTopicArnNotFound, subscriptionCategoryNotFound, subscriptionNotFound.
     */
    func modifyEventSubscription(
            input: RDSModel.ModifyEventSubscriptionMessage) -> EventLoopFuture<RDSModel.ModifyEventSubscriptionResultForModifyEventSubscription>

    /**
     Invokes the ModifyGlobalCluster operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyGlobalClusterMessage object being passed to this operation.
     - Returns: A future to the ModifyGlobalClusterResultForModifyGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: globalClusterNotFound, invalidDBClusterState, invalidDBInstanceState, invalidGlobalClusterState.
     */
    func modifyGlobalCluster(
            input: RDSModel.ModifyGlobalClusterMessage) -> EventLoopFuture<RDSModel.ModifyGlobalClusterResultForModifyGlobalCluster>

    /**
     Invokes the ModifyOptionGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyOptionGroupMessage object being passed to this operation.
     - Returns: A future to the ModifyOptionGroupResultForModifyOptionGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidOptionGroupState, optionGroupNotFound.
     */
    func modifyOptionGroup(
            input: RDSModel.ModifyOptionGroupMessage) -> EventLoopFuture<RDSModel.ModifyOptionGroupResultForModifyOptionGroup>

    /**
     Invokes the PromoteReadReplica operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PromoteReadReplicaMessage object being passed to this operation.
     - Returns: A future to the PromoteReadReplicaResultForPromoteReadReplica object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound, invalidDBInstanceState.
     */
    func promoteReadReplica(
            input: RDSModel.PromoteReadReplicaMessage) -> EventLoopFuture<RDSModel.PromoteReadReplicaResultForPromoteReadReplica>

    /**
     Invokes the PromoteReadReplicaDBCluster operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PromoteReadReplicaDBClusterMessage object being passed to this operation.
     - Returns: A future to the PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, invalidDBClusterState.
     */
    func promoteReadReplicaDBCluster(
            input: RDSModel.PromoteReadReplicaDBClusterMessage) -> EventLoopFuture<RDSModel.PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster>

    /**
     Invokes the PurchaseReservedDBInstancesOffering operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PurchaseReservedDBInstancesOfferingMessage object being passed to this operation.
     - Returns: A future to the PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: reservedDBInstanceAlreadyExists, reservedDBInstanceQuotaExceeded, reservedDBInstancesOfferingNotFound.
     */
    func purchaseReservedDBInstancesOffering(
            input: RDSModel.PurchaseReservedDBInstancesOfferingMessage) -> EventLoopFuture<RDSModel.PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering>

    /**
     Invokes the RebootDBInstance operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RebootDBInstanceMessage object being passed to this operation.
     - Returns: A future to the RebootDBInstanceResultForRebootDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound, invalidDBInstanceState.
     */
    func rebootDBInstance(
            input: RDSModel.RebootDBInstanceMessage) -> EventLoopFuture<RDSModel.RebootDBInstanceResultForRebootDBInstance>

    /**
     Invokes the RegisterDBProxyTargets operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RegisterDBProxyTargetsRequest object being passed to this operation.
     - Returns: A future to the RegisterDBProxyTargetsResponseForRegisterDBProxyTargets object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, dBInstanceNotFound, dBProxyNotFound, dBProxyTargetAlreadyRegistered, dBProxyTargetGroupNotFound, insufficientAvailableIPsInSubnet, invalidDBClusterState, invalidDBInstanceState, invalidDBProxyState.
     */
    func registerDBProxyTargets(
            input: RDSModel.RegisterDBProxyTargetsRequest) -> EventLoopFuture<RDSModel.RegisterDBProxyTargetsResponseForRegisterDBProxyTargets>

    /**
     Invokes the RemoveFromGlobalCluster operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RemoveFromGlobalClusterMessage object being passed to this operation.
     - Returns: A future to the RemoveFromGlobalClusterResultForRemoveFromGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, globalClusterNotFound, invalidGlobalClusterState.
     */
    func removeFromGlobalCluster(
            input: RDSModel.RemoveFromGlobalClusterMessage) -> EventLoopFuture<RDSModel.RemoveFromGlobalClusterResultForRemoveFromGlobalCluster>

    /**
     Invokes the RemoveRoleFromDBCluster operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RemoveRoleFromDBClusterMessage object being passed to this operation.
           The possible errors are: dBClusterNotFound, dBClusterRoleNotFound, invalidDBClusterState.
     */
    func removeRoleFromDBCluster(
            input: RDSModel.RemoveRoleFromDBClusterMessage) -> EventLoopFuture<Void>

    /**
     Invokes the RemoveRoleFromDBInstance operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RemoveRoleFromDBInstanceMessage object being passed to this operation.
           The possible errors are: dBInstanceNotFound, dBInstanceRoleNotFound, invalidDBInstanceState.
     */
    func removeRoleFromDBInstance(
            input: RDSModel.RemoveRoleFromDBInstanceMessage) -> EventLoopFuture<Void>

    /**
     Invokes the RemoveSourceIdentifierFromSubscription operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RemoveSourceIdentifierFromSubscriptionMessage object being passed to this operation.
     - Returns: A future to the RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: sourceNotFound, subscriptionNotFound.
     */
    func removeSourceIdentifierFromSubscription(
            input: RDSModel.RemoveSourceIdentifierFromSubscriptionMessage) -> EventLoopFuture<RDSModel.RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription>

    /**
     Invokes the RemoveTagsFromResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RemoveTagsFromResourceMessage object being passed to this operation.
           The possible errors are: dBClusterNotFound, dBInstanceNotFound, dBProxyNotFound, dBProxyTargetGroupNotFound, dBSnapshotNotFound.
     */
    func removeTagsFromResource(
            input: RDSModel.RemoveTagsFromResourceMessage) -> EventLoopFuture<Void>

    /**
     Invokes the ResetDBClusterParameterGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ResetDBClusterParameterGroupMessage object being passed to this operation.
     - Returns: A future to the DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func resetDBClusterParameterGroup(
            input: RDSModel.ResetDBClusterParameterGroupMessage) -> EventLoopFuture<RDSModel.DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup>

    /**
     Invokes the ResetDBParameterGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ResetDBParameterGroupMessage object being passed to this operation.
     - Returns: A future to the DBParameterGroupNameMessageForResetDBParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    func resetDBParameterGroup(
            input: RDSModel.ResetDBParameterGroupMessage) -> EventLoopFuture<RDSModel.DBParameterGroupNameMessageForResetDBParameterGroup>

    /**
     Invokes the RestoreDBClusterFromS3 operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RestoreDBClusterFromS3Message object being passed to this operation.
     - Returns: A future to the RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3 object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBSubnetGroupNotFound, domainNotFound, insufficientStorageClusterCapacity, invalidDBClusterState, invalidDBSubnetGroupState, invalidS3Bucket, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, storageQuotaExceeded.
     */
    func restoreDBClusterFromS3(
            input: RDSModel.RestoreDBClusterFromS3Message) -> EventLoopFuture<RDSModel.RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3>

    /**
     Invokes the RestoreDBClusterFromSnapshot operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RestoreDBClusterFromSnapshotMessage object being passed to this operation.
     - Returns: A future to the RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterAlreadyExists, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBClusterSnapshotNotFound, dBSnapshotNotFound, dBSubnetGroupNotFound, dBSubnetGroupNotFound, domainNotFound, insufficientDBClusterCapacity, insufficientStorageClusterCapacity, invalidDBClusterSnapshotState, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, storageQuotaExceeded, storageQuotaExceeded.
     */
    func restoreDBClusterFromSnapshot(
            input: RDSModel.RestoreDBClusterFromSnapshotMessage) -> EventLoopFuture<RDSModel.RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot>

    /**
     Invokes the RestoreDBClusterToPointInTime operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RestoreDBClusterToPointInTimeMessage object being passed to this operation.
     - Returns: A future to the RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBClusterSnapshotNotFound, dBSubnetGroupNotFound, domainNotFound, insufficientDBClusterCapacity, insufficientStorageClusterCapacity, invalidDBClusterSnapshotState, invalidDBClusterState, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, storageQuotaExceeded.
     */
    func restoreDBClusterToPointInTime(
            input: RDSModel.RestoreDBClusterToPointInTimeMessage) -> EventLoopFuture<RDSModel.RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime>

    /**
     Invokes the RestoreDBInstanceFromDBSnapshot operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RestoreDBInstanceFromDBSnapshotMessage object being passed to this operation.
     - Returns: A future to the RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSnapshotNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func restoreDBInstanceFromDBSnapshot(
            input: RDSModel.RestoreDBInstanceFromDBSnapshotMessage) -> EventLoopFuture<RDSModel.RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot>

    /**
     Invokes the RestoreDBInstanceFromS3 operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RestoreDBInstanceFromS3Message object being passed to this operation.
     - Returns: A future to the RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3 object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidS3Bucket, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func restoreDBInstanceFromS3(
            input: RDSModel.RestoreDBInstanceFromS3Message) -> EventLoopFuture<RDSModel.RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3>

    /**
     Invokes the RestoreDBInstanceToPointInTime operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RestoreDBInstanceToPointInTimeMessage object being passed to this operation.
     - Returns: A future to the RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBInstanceAutomatedBackupNotFound, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, pointInTimeRestoreNotEnabled, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    func restoreDBInstanceToPointInTime(
            input: RDSModel.RestoreDBInstanceToPointInTimeMessage) -> EventLoopFuture<RDSModel.RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime>

    /**
     Invokes the RevokeDBSecurityGroupIngress operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RevokeDBSecurityGroupIngressMessage object being passed to this operation.
     - Returns: A future to the RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    func revokeDBSecurityGroupIngress(
            input: RDSModel.RevokeDBSecurityGroupIngressMessage) -> EventLoopFuture<RDSModel.RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress>

    /**
     Invokes the StartActivityStream operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated StartActivityStreamRequest object being passed to this operation.
     - Returns: A future to the StartActivityStreamResponseForStartActivityStream object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, dBInstanceNotFound, invalidDBClusterState, invalidDBInstanceState, kMSKeyNotAccessible, resourceNotFound.
     */
    func startActivityStream(
            input: RDSModel.StartActivityStreamRequest) -> EventLoopFuture<RDSModel.StartActivityStreamResponseForStartActivityStream>

    /**
     Invokes the StartDBCluster operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated StartDBClusterMessage object being passed to this operation.
     - Returns: A future to the StartDBClusterResultForStartDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    func startDBCluster(
            input: RDSModel.StartDBClusterMessage) -> EventLoopFuture<RDSModel.StartDBClusterResultForStartDBCluster>

    /**
     Invokes the StartDBInstance operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated StartDBInstanceMessage object being passed to this operation.
     - Returns: A future to the StartDBInstanceResultForStartDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, dBClusterNotFound, dBInstanceNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, insufficientDBInstanceCapacity, invalidDBClusterState, invalidDBInstanceState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible.
     */
    func startDBInstance(
            input: RDSModel.StartDBInstanceMessage) -> EventLoopFuture<RDSModel.StartDBInstanceResultForStartDBInstance>

    /**
     Invokes the StartDBInstanceAutomatedBackupsReplication operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated StartDBInstanceAutomatedBackupsReplicationMessage object being passed to this operation.
     - Returns: A future to the StartDBInstanceAutomatedBackupsReplicationResultForStartDBInstanceAutomatedBackupsReplication object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBInstanceAutomatedBackupQuotaExceeded, dBInstanceNotFound, invalidDBInstanceState, kMSKeyNotAccessible, storageTypeNotSupported.
     */
    func startDBInstanceAutomatedBackupsReplication(
            input: RDSModel.StartDBInstanceAutomatedBackupsReplicationMessage) -> EventLoopFuture<RDSModel.StartDBInstanceAutomatedBackupsReplicationResultForStartDBInstanceAutomatedBackupsReplication>

    /**
     Invokes the StartExportTask operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated StartExportTaskMessage object being passed to this operation.
     - Returns: A future to the ExportTaskForStartExportTask object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterSnapshotNotFound, dBSnapshotNotFound, exportTaskAlreadyExists, iamRoleMissingPermissions, iamRoleNotFound, invalidExportOnly, invalidExportSourceState, invalidS3Bucket, kMSKeyNotAccessible.
     */
    func startExportTask(
            input: RDSModel.StartExportTaskMessage) -> EventLoopFuture<RDSModel.ExportTaskForStartExportTask>

    /**
     Invokes the StopActivityStream operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated StopActivityStreamRequest object being passed to this operation.
     - Returns: A future to the StopActivityStreamResponseForStopActivityStream object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, dBInstanceNotFound, invalidDBClusterState, invalidDBInstanceState, resourceNotFound.
     */
    func stopActivityStream(
            input: RDSModel.StopActivityStreamRequest) -> EventLoopFuture<RDSModel.StopActivityStreamResponseForStopActivityStream>

    /**
     Invokes the StopDBCluster operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated StopDBClusterMessage object being passed to this operation.
     - Returns: A future to the StopDBClusterResultForStopDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    func stopDBCluster(
            input: RDSModel.StopDBClusterMessage) -> EventLoopFuture<RDSModel.StopDBClusterResultForStopDBCluster>

    /**
     Invokes the StopDBInstance operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated StopDBInstanceMessage object being passed to this operation.
     - Returns: A future to the StopDBInstanceResultForStopDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound, dBSnapshotAlreadyExists, invalidDBClusterState, invalidDBInstanceState, snapshotQuotaExceeded.
     */
    func stopDBInstance(
            input: RDSModel.StopDBInstanceMessage) -> EventLoopFuture<RDSModel.StopDBInstanceResultForStopDBInstance>

    /**
     Invokes the StopDBInstanceAutomatedBackupsReplication operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated StopDBInstanceAutomatedBackupsReplicationMessage object being passed to this operation.
     - Returns: A future to the StopDBInstanceAutomatedBackupsReplicationResultForStopDBInstanceAutomatedBackupsReplication object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound, invalidDBInstanceState.
     */
    func stopDBInstanceAutomatedBackupsReplication(
            input: RDSModel.StopDBInstanceAutomatedBackupsReplicationMessage) -> EventLoopFuture<RDSModel.StopDBInstanceAutomatedBackupsReplicationResultForStopDBInstanceAutomatedBackupsReplication>
}
