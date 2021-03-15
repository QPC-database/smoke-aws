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
// MockRDSClient.swift
// RDSClient
//

import Foundation
import RDSModel
import SmokeAWSCore
import SmokeHTTPClient
import NIO

/**
 Mock Client for the RDS service by default returns the `__default` property of its return type.
 */
public struct MockRDSClient: RDSClientProtocol {
    let eventLoop: EventLoop
    let typedErrorProvider: (Swift.Error) -> RDSError = { $0.asTypedError() }
    let addRoleToDBClusterEventLoopFutureAsyncOverride: AddRoleToDBClusterEventLoopFutureAsyncType?
    let addRoleToDBInstanceEventLoopFutureAsyncOverride: AddRoleToDBInstanceEventLoopFutureAsyncType?
    let addSourceIdentifierToSubscriptionEventLoopFutureAsyncOverride: AddSourceIdentifierToSubscriptionEventLoopFutureAsyncType?
    let addTagsToResourceEventLoopFutureAsyncOverride: AddTagsToResourceEventLoopFutureAsyncType?
    let applyPendingMaintenanceActionEventLoopFutureAsyncOverride: ApplyPendingMaintenanceActionEventLoopFutureAsyncType?
    let authorizeDBSecurityGroupIngressEventLoopFutureAsyncOverride: AuthorizeDBSecurityGroupIngressEventLoopFutureAsyncType?
    let backtrackDBClusterEventLoopFutureAsyncOverride: BacktrackDBClusterEventLoopFutureAsyncType?
    let cancelExportTaskEventLoopFutureAsyncOverride: CancelExportTaskEventLoopFutureAsyncType?
    let copyDBClusterParameterGroupEventLoopFutureAsyncOverride: CopyDBClusterParameterGroupEventLoopFutureAsyncType?
    let copyDBClusterSnapshotEventLoopFutureAsyncOverride: CopyDBClusterSnapshotEventLoopFutureAsyncType?
    let copyDBParameterGroupEventLoopFutureAsyncOverride: CopyDBParameterGroupEventLoopFutureAsyncType?
    let copyDBSnapshotEventLoopFutureAsyncOverride: CopyDBSnapshotEventLoopFutureAsyncType?
    let copyOptionGroupEventLoopFutureAsyncOverride: CopyOptionGroupEventLoopFutureAsyncType?
    let createCustomAvailabilityZoneEventLoopFutureAsyncOverride: CreateCustomAvailabilityZoneEventLoopFutureAsyncType?
    let createDBClusterEventLoopFutureAsyncOverride: CreateDBClusterEventLoopFutureAsyncType?
    let createDBClusterEndpointEventLoopFutureAsyncOverride: CreateDBClusterEndpointEventLoopFutureAsyncType?
    let createDBClusterParameterGroupEventLoopFutureAsyncOverride: CreateDBClusterParameterGroupEventLoopFutureAsyncType?
    let createDBClusterSnapshotEventLoopFutureAsyncOverride: CreateDBClusterSnapshotEventLoopFutureAsyncType?
    let createDBInstanceEventLoopFutureAsyncOverride: CreateDBInstanceEventLoopFutureAsyncType?
    let createDBInstanceReadReplicaEventLoopFutureAsyncOverride: CreateDBInstanceReadReplicaEventLoopFutureAsyncType?
    let createDBParameterGroupEventLoopFutureAsyncOverride: CreateDBParameterGroupEventLoopFutureAsyncType?
    let createDBProxyEventLoopFutureAsyncOverride: CreateDBProxyEventLoopFutureAsyncType?
    let createDBProxyEndpointEventLoopFutureAsyncOverride: CreateDBProxyEndpointEventLoopFutureAsyncType?
    let createDBSecurityGroupEventLoopFutureAsyncOverride: CreateDBSecurityGroupEventLoopFutureAsyncType?
    let createDBSnapshotEventLoopFutureAsyncOverride: CreateDBSnapshotEventLoopFutureAsyncType?
    let createDBSubnetGroupEventLoopFutureAsyncOverride: CreateDBSubnetGroupEventLoopFutureAsyncType?
    let createEventSubscriptionEventLoopFutureAsyncOverride: CreateEventSubscriptionEventLoopFutureAsyncType?
    let createGlobalClusterEventLoopFutureAsyncOverride: CreateGlobalClusterEventLoopFutureAsyncType?
    let createOptionGroupEventLoopFutureAsyncOverride: CreateOptionGroupEventLoopFutureAsyncType?
    let deleteCustomAvailabilityZoneEventLoopFutureAsyncOverride: DeleteCustomAvailabilityZoneEventLoopFutureAsyncType?
    let deleteDBClusterEventLoopFutureAsyncOverride: DeleteDBClusterEventLoopFutureAsyncType?
    let deleteDBClusterEndpointEventLoopFutureAsyncOverride: DeleteDBClusterEndpointEventLoopFutureAsyncType?
    let deleteDBClusterParameterGroupEventLoopFutureAsyncOverride: DeleteDBClusterParameterGroupEventLoopFutureAsyncType?
    let deleteDBClusterSnapshotEventLoopFutureAsyncOverride: DeleteDBClusterSnapshotEventLoopFutureAsyncType?
    let deleteDBInstanceEventLoopFutureAsyncOverride: DeleteDBInstanceEventLoopFutureAsyncType?
    let deleteDBInstanceAutomatedBackupEventLoopFutureAsyncOverride: DeleteDBInstanceAutomatedBackupEventLoopFutureAsyncType?
    let deleteDBParameterGroupEventLoopFutureAsyncOverride: DeleteDBParameterGroupEventLoopFutureAsyncType?
    let deleteDBProxyEventLoopFutureAsyncOverride: DeleteDBProxyEventLoopFutureAsyncType?
    let deleteDBProxyEndpointEventLoopFutureAsyncOverride: DeleteDBProxyEndpointEventLoopFutureAsyncType?
    let deleteDBSecurityGroupEventLoopFutureAsyncOverride: DeleteDBSecurityGroupEventLoopFutureAsyncType?
    let deleteDBSnapshotEventLoopFutureAsyncOverride: DeleteDBSnapshotEventLoopFutureAsyncType?
    let deleteDBSubnetGroupEventLoopFutureAsyncOverride: DeleteDBSubnetGroupEventLoopFutureAsyncType?
    let deleteEventSubscriptionEventLoopFutureAsyncOverride: DeleteEventSubscriptionEventLoopFutureAsyncType?
    let deleteGlobalClusterEventLoopFutureAsyncOverride: DeleteGlobalClusterEventLoopFutureAsyncType?
    let deleteInstallationMediaEventLoopFutureAsyncOverride: DeleteInstallationMediaEventLoopFutureAsyncType?
    let deleteOptionGroupEventLoopFutureAsyncOverride: DeleteOptionGroupEventLoopFutureAsyncType?
    let deregisterDBProxyTargetsEventLoopFutureAsyncOverride: DeregisterDBProxyTargetsEventLoopFutureAsyncType?
    let describeAccountAttributesEventLoopFutureAsyncOverride: DescribeAccountAttributesEventLoopFutureAsyncType?
    let describeCertificatesEventLoopFutureAsyncOverride: DescribeCertificatesEventLoopFutureAsyncType?
    let describeCustomAvailabilityZonesEventLoopFutureAsyncOverride: DescribeCustomAvailabilityZonesEventLoopFutureAsyncType?
    let describeDBClusterBacktracksEventLoopFutureAsyncOverride: DescribeDBClusterBacktracksEventLoopFutureAsyncType?
    let describeDBClusterEndpointsEventLoopFutureAsyncOverride: DescribeDBClusterEndpointsEventLoopFutureAsyncType?
    let describeDBClusterParameterGroupsEventLoopFutureAsyncOverride: DescribeDBClusterParameterGroupsEventLoopFutureAsyncType?
    let describeDBClusterParametersEventLoopFutureAsyncOverride: DescribeDBClusterParametersEventLoopFutureAsyncType?
    let describeDBClusterSnapshotAttributesEventLoopFutureAsyncOverride: DescribeDBClusterSnapshotAttributesEventLoopFutureAsyncType?
    let describeDBClusterSnapshotsEventLoopFutureAsyncOverride: DescribeDBClusterSnapshotsEventLoopFutureAsyncType?
    let describeDBClustersEventLoopFutureAsyncOverride: DescribeDBClustersEventLoopFutureAsyncType?
    let describeDBEngineVersionsEventLoopFutureAsyncOverride: DescribeDBEngineVersionsEventLoopFutureAsyncType?
    let describeDBInstanceAutomatedBackupsEventLoopFutureAsyncOverride: DescribeDBInstanceAutomatedBackupsEventLoopFutureAsyncType?
    let describeDBInstancesEventLoopFutureAsyncOverride: DescribeDBInstancesEventLoopFutureAsyncType?
    let describeDBLogFilesEventLoopFutureAsyncOverride: DescribeDBLogFilesEventLoopFutureAsyncType?
    let describeDBParameterGroupsEventLoopFutureAsyncOverride: DescribeDBParameterGroupsEventLoopFutureAsyncType?
    let describeDBParametersEventLoopFutureAsyncOverride: DescribeDBParametersEventLoopFutureAsyncType?
    let describeDBProxiesEventLoopFutureAsyncOverride: DescribeDBProxiesEventLoopFutureAsyncType?
    let describeDBProxyEndpointsEventLoopFutureAsyncOverride: DescribeDBProxyEndpointsEventLoopFutureAsyncType?
    let describeDBProxyTargetGroupsEventLoopFutureAsyncOverride: DescribeDBProxyTargetGroupsEventLoopFutureAsyncType?
    let describeDBProxyTargetsEventLoopFutureAsyncOverride: DescribeDBProxyTargetsEventLoopFutureAsyncType?
    let describeDBSecurityGroupsEventLoopFutureAsyncOverride: DescribeDBSecurityGroupsEventLoopFutureAsyncType?
    let describeDBSnapshotAttributesEventLoopFutureAsyncOverride: DescribeDBSnapshotAttributesEventLoopFutureAsyncType?
    let describeDBSnapshotsEventLoopFutureAsyncOverride: DescribeDBSnapshotsEventLoopFutureAsyncType?
    let describeDBSubnetGroupsEventLoopFutureAsyncOverride: DescribeDBSubnetGroupsEventLoopFutureAsyncType?
    let describeEngineDefaultClusterParametersEventLoopFutureAsyncOverride: DescribeEngineDefaultClusterParametersEventLoopFutureAsyncType?
    let describeEngineDefaultParametersEventLoopFutureAsyncOverride: DescribeEngineDefaultParametersEventLoopFutureAsyncType?
    let describeEventCategoriesEventLoopFutureAsyncOverride: DescribeEventCategoriesEventLoopFutureAsyncType?
    let describeEventSubscriptionsEventLoopFutureAsyncOverride: DescribeEventSubscriptionsEventLoopFutureAsyncType?
    let describeEventsEventLoopFutureAsyncOverride: DescribeEventsEventLoopFutureAsyncType?
    let describeExportTasksEventLoopFutureAsyncOverride: DescribeExportTasksEventLoopFutureAsyncType?
    let describeGlobalClustersEventLoopFutureAsyncOverride: DescribeGlobalClustersEventLoopFutureAsyncType?
    let describeInstallationMediaEventLoopFutureAsyncOverride: DescribeInstallationMediaEventLoopFutureAsyncType?
    let describeOptionGroupOptionsEventLoopFutureAsyncOverride: DescribeOptionGroupOptionsEventLoopFutureAsyncType?
    let describeOptionGroupsEventLoopFutureAsyncOverride: DescribeOptionGroupsEventLoopFutureAsyncType?
    let describeOrderableDBInstanceOptionsEventLoopFutureAsyncOverride: DescribeOrderableDBInstanceOptionsEventLoopFutureAsyncType?
    let describePendingMaintenanceActionsEventLoopFutureAsyncOverride: DescribePendingMaintenanceActionsEventLoopFutureAsyncType?
    let describeReservedDBInstancesEventLoopFutureAsyncOverride: DescribeReservedDBInstancesEventLoopFutureAsyncType?
    let describeReservedDBInstancesOfferingsEventLoopFutureAsyncOverride: DescribeReservedDBInstancesOfferingsEventLoopFutureAsyncType?
    let describeSourceRegionsEventLoopFutureAsyncOverride: DescribeSourceRegionsEventLoopFutureAsyncType?
    let describeValidDBInstanceModificationsEventLoopFutureAsyncOverride: DescribeValidDBInstanceModificationsEventLoopFutureAsyncType?
    let downloadDBLogFilePortionEventLoopFutureAsyncOverride: DownloadDBLogFilePortionEventLoopFutureAsyncType?
    let failoverDBClusterEventLoopFutureAsyncOverride: FailoverDBClusterEventLoopFutureAsyncType?
    let failoverGlobalClusterEventLoopFutureAsyncOverride: FailoverGlobalClusterEventLoopFutureAsyncType?
    let importInstallationMediaEventLoopFutureAsyncOverride: ImportInstallationMediaEventLoopFutureAsyncType?
    let listTagsForResourceEventLoopFutureAsyncOverride: ListTagsForResourceEventLoopFutureAsyncType?
    let modifyCertificatesEventLoopFutureAsyncOverride: ModifyCertificatesEventLoopFutureAsyncType?
    let modifyCurrentDBClusterCapacityEventLoopFutureAsyncOverride: ModifyCurrentDBClusterCapacityEventLoopFutureAsyncType?
    let modifyDBClusterEventLoopFutureAsyncOverride: ModifyDBClusterEventLoopFutureAsyncType?
    let modifyDBClusterEndpointEventLoopFutureAsyncOverride: ModifyDBClusterEndpointEventLoopFutureAsyncType?
    let modifyDBClusterParameterGroupEventLoopFutureAsyncOverride: ModifyDBClusterParameterGroupEventLoopFutureAsyncType?
    let modifyDBClusterSnapshotAttributeEventLoopFutureAsyncOverride: ModifyDBClusterSnapshotAttributeEventLoopFutureAsyncType?
    let modifyDBInstanceEventLoopFutureAsyncOverride: ModifyDBInstanceEventLoopFutureAsyncType?
    let modifyDBParameterGroupEventLoopFutureAsyncOverride: ModifyDBParameterGroupEventLoopFutureAsyncType?
    let modifyDBProxyEventLoopFutureAsyncOverride: ModifyDBProxyEventLoopFutureAsyncType?
    let modifyDBProxyEndpointEventLoopFutureAsyncOverride: ModifyDBProxyEndpointEventLoopFutureAsyncType?
    let modifyDBProxyTargetGroupEventLoopFutureAsyncOverride: ModifyDBProxyTargetGroupEventLoopFutureAsyncType?
    let modifyDBSnapshotEventLoopFutureAsyncOverride: ModifyDBSnapshotEventLoopFutureAsyncType?
    let modifyDBSnapshotAttributeEventLoopFutureAsyncOverride: ModifyDBSnapshotAttributeEventLoopFutureAsyncType?
    let modifyDBSubnetGroupEventLoopFutureAsyncOverride: ModifyDBSubnetGroupEventLoopFutureAsyncType?
    let modifyEventSubscriptionEventLoopFutureAsyncOverride: ModifyEventSubscriptionEventLoopFutureAsyncType?
    let modifyGlobalClusterEventLoopFutureAsyncOverride: ModifyGlobalClusterEventLoopFutureAsyncType?
    let modifyOptionGroupEventLoopFutureAsyncOverride: ModifyOptionGroupEventLoopFutureAsyncType?
    let promoteReadReplicaEventLoopFutureAsyncOverride: PromoteReadReplicaEventLoopFutureAsyncType?
    let promoteReadReplicaDBClusterEventLoopFutureAsyncOverride: PromoteReadReplicaDBClusterEventLoopFutureAsyncType?
    let purchaseReservedDBInstancesOfferingEventLoopFutureAsyncOverride: PurchaseReservedDBInstancesOfferingEventLoopFutureAsyncType?
    let rebootDBInstanceEventLoopFutureAsyncOverride: RebootDBInstanceEventLoopFutureAsyncType?
    let registerDBProxyTargetsEventLoopFutureAsyncOverride: RegisterDBProxyTargetsEventLoopFutureAsyncType?
    let removeFromGlobalClusterEventLoopFutureAsyncOverride: RemoveFromGlobalClusterEventLoopFutureAsyncType?
    let removeRoleFromDBClusterEventLoopFutureAsyncOverride: RemoveRoleFromDBClusterEventLoopFutureAsyncType?
    let removeRoleFromDBInstanceEventLoopFutureAsyncOverride: RemoveRoleFromDBInstanceEventLoopFutureAsyncType?
    let removeSourceIdentifierFromSubscriptionEventLoopFutureAsyncOverride: RemoveSourceIdentifierFromSubscriptionEventLoopFutureAsyncType?
    let removeTagsFromResourceEventLoopFutureAsyncOverride: RemoveTagsFromResourceEventLoopFutureAsyncType?
    let resetDBClusterParameterGroupEventLoopFutureAsyncOverride: ResetDBClusterParameterGroupEventLoopFutureAsyncType?
    let resetDBParameterGroupEventLoopFutureAsyncOverride: ResetDBParameterGroupEventLoopFutureAsyncType?
    let restoreDBClusterFromS3EventLoopFutureAsyncOverride: RestoreDBClusterFromS3EventLoopFutureAsyncType?
    let restoreDBClusterFromSnapshotEventLoopFutureAsyncOverride: RestoreDBClusterFromSnapshotEventLoopFutureAsyncType?
    let restoreDBClusterToPointInTimeEventLoopFutureAsyncOverride: RestoreDBClusterToPointInTimeEventLoopFutureAsyncType?
    let restoreDBInstanceFromDBSnapshotEventLoopFutureAsyncOverride: RestoreDBInstanceFromDBSnapshotEventLoopFutureAsyncType?
    let restoreDBInstanceFromS3EventLoopFutureAsyncOverride: RestoreDBInstanceFromS3EventLoopFutureAsyncType?
    let restoreDBInstanceToPointInTimeEventLoopFutureAsyncOverride: RestoreDBInstanceToPointInTimeEventLoopFutureAsyncType?
    let revokeDBSecurityGroupIngressEventLoopFutureAsyncOverride: RevokeDBSecurityGroupIngressEventLoopFutureAsyncType?
    let startActivityStreamEventLoopFutureAsyncOverride: StartActivityStreamEventLoopFutureAsyncType?
    let startDBClusterEventLoopFutureAsyncOverride: StartDBClusterEventLoopFutureAsyncType?
    let startDBInstanceEventLoopFutureAsyncOverride: StartDBInstanceEventLoopFutureAsyncType?
    let startDBInstanceAutomatedBackupsReplicationEventLoopFutureAsyncOverride: StartDBInstanceAutomatedBackupsReplicationEventLoopFutureAsyncType?
    let startExportTaskEventLoopFutureAsyncOverride: StartExportTaskEventLoopFutureAsyncType?
    let stopActivityStreamEventLoopFutureAsyncOverride: StopActivityStreamEventLoopFutureAsyncType?
    let stopDBClusterEventLoopFutureAsyncOverride: StopDBClusterEventLoopFutureAsyncType?
    let stopDBInstanceEventLoopFutureAsyncOverride: StopDBInstanceEventLoopFutureAsyncType?
    let stopDBInstanceAutomatedBackupsReplicationEventLoopFutureAsyncOverride: StopDBInstanceAutomatedBackupsReplicationEventLoopFutureAsyncType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(
            eventLoop: EventLoop,
            addRoleToDBClusterEventLoopFutureAsync: AddRoleToDBClusterEventLoopFutureAsyncType? = nil,
            addRoleToDBInstanceEventLoopFutureAsync: AddRoleToDBInstanceEventLoopFutureAsyncType? = nil,
            addSourceIdentifierToSubscriptionEventLoopFutureAsync: AddSourceIdentifierToSubscriptionEventLoopFutureAsyncType? = nil,
            addTagsToResourceEventLoopFutureAsync: AddTagsToResourceEventLoopFutureAsyncType? = nil,
            applyPendingMaintenanceActionEventLoopFutureAsync: ApplyPendingMaintenanceActionEventLoopFutureAsyncType? = nil,
            authorizeDBSecurityGroupIngressEventLoopFutureAsync: AuthorizeDBSecurityGroupIngressEventLoopFutureAsyncType? = nil,
            backtrackDBClusterEventLoopFutureAsync: BacktrackDBClusterEventLoopFutureAsyncType? = nil,
            cancelExportTaskEventLoopFutureAsync: CancelExportTaskEventLoopFutureAsyncType? = nil,
            copyDBClusterParameterGroupEventLoopFutureAsync: CopyDBClusterParameterGroupEventLoopFutureAsyncType? = nil,
            copyDBClusterSnapshotEventLoopFutureAsync: CopyDBClusterSnapshotEventLoopFutureAsyncType? = nil,
            copyDBParameterGroupEventLoopFutureAsync: CopyDBParameterGroupEventLoopFutureAsyncType? = nil,
            copyDBSnapshotEventLoopFutureAsync: CopyDBSnapshotEventLoopFutureAsyncType? = nil,
            copyOptionGroupEventLoopFutureAsync: CopyOptionGroupEventLoopFutureAsyncType? = nil,
            createCustomAvailabilityZoneEventLoopFutureAsync: CreateCustomAvailabilityZoneEventLoopFutureAsyncType? = nil,
            createDBClusterEventLoopFutureAsync: CreateDBClusterEventLoopFutureAsyncType? = nil,
            createDBClusterEndpointEventLoopFutureAsync: CreateDBClusterEndpointEventLoopFutureAsyncType? = nil,
            createDBClusterParameterGroupEventLoopFutureAsync: CreateDBClusterParameterGroupEventLoopFutureAsyncType? = nil,
            createDBClusterSnapshotEventLoopFutureAsync: CreateDBClusterSnapshotEventLoopFutureAsyncType? = nil,
            createDBInstanceEventLoopFutureAsync: CreateDBInstanceEventLoopFutureAsyncType? = nil,
            createDBInstanceReadReplicaEventLoopFutureAsync: CreateDBInstanceReadReplicaEventLoopFutureAsyncType? = nil,
            createDBParameterGroupEventLoopFutureAsync: CreateDBParameterGroupEventLoopFutureAsyncType? = nil,
            createDBProxyEventLoopFutureAsync: CreateDBProxyEventLoopFutureAsyncType? = nil,
            createDBProxyEndpointEventLoopFutureAsync: CreateDBProxyEndpointEventLoopFutureAsyncType? = nil,
            createDBSecurityGroupEventLoopFutureAsync: CreateDBSecurityGroupEventLoopFutureAsyncType? = nil,
            createDBSnapshotEventLoopFutureAsync: CreateDBSnapshotEventLoopFutureAsyncType? = nil,
            createDBSubnetGroupEventLoopFutureAsync: CreateDBSubnetGroupEventLoopFutureAsyncType? = nil,
            createEventSubscriptionEventLoopFutureAsync: CreateEventSubscriptionEventLoopFutureAsyncType? = nil,
            createGlobalClusterEventLoopFutureAsync: CreateGlobalClusterEventLoopFutureAsyncType? = nil,
            createOptionGroupEventLoopFutureAsync: CreateOptionGroupEventLoopFutureAsyncType? = nil,
            deleteCustomAvailabilityZoneEventLoopFutureAsync: DeleteCustomAvailabilityZoneEventLoopFutureAsyncType? = nil,
            deleteDBClusterEventLoopFutureAsync: DeleteDBClusterEventLoopFutureAsyncType? = nil,
            deleteDBClusterEndpointEventLoopFutureAsync: DeleteDBClusterEndpointEventLoopFutureAsyncType? = nil,
            deleteDBClusterParameterGroupEventLoopFutureAsync: DeleteDBClusterParameterGroupEventLoopFutureAsyncType? = nil,
            deleteDBClusterSnapshotEventLoopFutureAsync: DeleteDBClusterSnapshotEventLoopFutureAsyncType? = nil,
            deleteDBInstanceEventLoopFutureAsync: DeleteDBInstanceEventLoopFutureAsyncType? = nil,
            deleteDBInstanceAutomatedBackupEventLoopFutureAsync: DeleteDBInstanceAutomatedBackupEventLoopFutureAsyncType? = nil,
            deleteDBParameterGroupEventLoopFutureAsync: DeleteDBParameterGroupEventLoopFutureAsyncType? = nil,
            deleteDBProxyEventLoopFutureAsync: DeleteDBProxyEventLoopFutureAsyncType? = nil,
            deleteDBProxyEndpointEventLoopFutureAsync: DeleteDBProxyEndpointEventLoopFutureAsyncType? = nil,
            deleteDBSecurityGroupEventLoopFutureAsync: DeleteDBSecurityGroupEventLoopFutureAsyncType? = nil,
            deleteDBSnapshotEventLoopFutureAsync: DeleteDBSnapshotEventLoopFutureAsyncType? = nil,
            deleteDBSubnetGroupEventLoopFutureAsync: DeleteDBSubnetGroupEventLoopFutureAsyncType? = nil,
            deleteEventSubscriptionEventLoopFutureAsync: DeleteEventSubscriptionEventLoopFutureAsyncType? = nil,
            deleteGlobalClusterEventLoopFutureAsync: DeleteGlobalClusterEventLoopFutureAsyncType? = nil,
            deleteInstallationMediaEventLoopFutureAsync: DeleteInstallationMediaEventLoopFutureAsyncType? = nil,
            deleteOptionGroupEventLoopFutureAsync: DeleteOptionGroupEventLoopFutureAsyncType? = nil,
            deregisterDBProxyTargetsEventLoopFutureAsync: DeregisterDBProxyTargetsEventLoopFutureAsyncType? = nil,
            describeAccountAttributesEventLoopFutureAsync: DescribeAccountAttributesEventLoopFutureAsyncType? = nil,
            describeCertificatesEventLoopFutureAsync: DescribeCertificatesEventLoopFutureAsyncType? = nil,
            describeCustomAvailabilityZonesEventLoopFutureAsync: DescribeCustomAvailabilityZonesEventLoopFutureAsyncType? = nil,
            describeDBClusterBacktracksEventLoopFutureAsync: DescribeDBClusterBacktracksEventLoopFutureAsyncType? = nil,
            describeDBClusterEndpointsEventLoopFutureAsync: DescribeDBClusterEndpointsEventLoopFutureAsyncType? = nil,
            describeDBClusterParameterGroupsEventLoopFutureAsync: DescribeDBClusterParameterGroupsEventLoopFutureAsyncType? = nil,
            describeDBClusterParametersEventLoopFutureAsync: DescribeDBClusterParametersEventLoopFutureAsyncType? = nil,
            describeDBClusterSnapshotAttributesEventLoopFutureAsync: DescribeDBClusterSnapshotAttributesEventLoopFutureAsyncType? = nil,
            describeDBClusterSnapshotsEventLoopFutureAsync: DescribeDBClusterSnapshotsEventLoopFutureAsyncType? = nil,
            describeDBClustersEventLoopFutureAsync: DescribeDBClustersEventLoopFutureAsyncType? = nil,
            describeDBEngineVersionsEventLoopFutureAsync: DescribeDBEngineVersionsEventLoopFutureAsyncType? = nil,
            describeDBInstanceAutomatedBackupsEventLoopFutureAsync: DescribeDBInstanceAutomatedBackupsEventLoopFutureAsyncType? = nil,
            describeDBInstancesEventLoopFutureAsync: DescribeDBInstancesEventLoopFutureAsyncType? = nil,
            describeDBLogFilesEventLoopFutureAsync: DescribeDBLogFilesEventLoopFutureAsyncType? = nil,
            describeDBParameterGroupsEventLoopFutureAsync: DescribeDBParameterGroupsEventLoopFutureAsyncType? = nil,
            describeDBParametersEventLoopFutureAsync: DescribeDBParametersEventLoopFutureAsyncType? = nil,
            describeDBProxiesEventLoopFutureAsync: DescribeDBProxiesEventLoopFutureAsyncType? = nil,
            describeDBProxyEndpointsEventLoopFutureAsync: DescribeDBProxyEndpointsEventLoopFutureAsyncType? = nil,
            describeDBProxyTargetGroupsEventLoopFutureAsync: DescribeDBProxyTargetGroupsEventLoopFutureAsyncType? = nil,
            describeDBProxyTargetsEventLoopFutureAsync: DescribeDBProxyTargetsEventLoopFutureAsyncType? = nil,
            describeDBSecurityGroupsEventLoopFutureAsync: DescribeDBSecurityGroupsEventLoopFutureAsyncType? = nil,
            describeDBSnapshotAttributesEventLoopFutureAsync: DescribeDBSnapshotAttributesEventLoopFutureAsyncType? = nil,
            describeDBSnapshotsEventLoopFutureAsync: DescribeDBSnapshotsEventLoopFutureAsyncType? = nil,
            describeDBSubnetGroupsEventLoopFutureAsync: DescribeDBSubnetGroupsEventLoopFutureAsyncType? = nil,
            describeEngineDefaultClusterParametersEventLoopFutureAsync: DescribeEngineDefaultClusterParametersEventLoopFutureAsyncType? = nil,
            describeEngineDefaultParametersEventLoopFutureAsync: DescribeEngineDefaultParametersEventLoopFutureAsyncType? = nil,
            describeEventCategoriesEventLoopFutureAsync: DescribeEventCategoriesEventLoopFutureAsyncType? = nil,
            describeEventSubscriptionsEventLoopFutureAsync: DescribeEventSubscriptionsEventLoopFutureAsyncType? = nil,
            describeEventsEventLoopFutureAsync: DescribeEventsEventLoopFutureAsyncType? = nil,
            describeExportTasksEventLoopFutureAsync: DescribeExportTasksEventLoopFutureAsyncType? = nil,
            describeGlobalClustersEventLoopFutureAsync: DescribeGlobalClustersEventLoopFutureAsyncType? = nil,
            describeInstallationMediaEventLoopFutureAsync: DescribeInstallationMediaEventLoopFutureAsyncType? = nil,
            describeOptionGroupOptionsEventLoopFutureAsync: DescribeOptionGroupOptionsEventLoopFutureAsyncType? = nil,
            describeOptionGroupsEventLoopFutureAsync: DescribeOptionGroupsEventLoopFutureAsyncType? = nil,
            describeOrderableDBInstanceOptionsEventLoopFutureAsync: DescribeOrderableDBInstanceOptionsEventLoopFutureAsyncType? = nil,
            describePendingMaintenanceActionsEventLoopFutureAsync: DescribePendingMaintenanceActionsEventLoopFutureAsyncType? = nil,
            describeReservedDBInstancesEventLoopFutureAsync: DescribeReservedDBInstancesEventLoopFutureAsyncType? = nil,
            describeReservedDBInstancesOfferingsEventLoopFutureAsync: DescribeReservedDBInstancesOfferingsEventLoopFutureAsyncType? = nil,
            describeSourceRegionsEventLoopFutureAsync: DescribeSourceRegionsEventLoopFutureAsyncType? = nil,
            describeValidDBInstanceModificationsEventLoopFutureAsync: DescribeValidDBInstanceModificationsEventLoopFutureAsyncType? = nil,
            downloadDBLogFilePortionEventLoopFutureAsync: DownloadDBLogFilePortionEventLoopFutureAsyncType? = nil,
            failoverDBClusterEventLoopFutureAsync: FailoverDBClusterEventLoopFutureAsyncType? = nil,
            failoverGlobalClusterEventLoopFutureAsync: FailoverGlobalClusterEventLoopFutureAsyncType? = nil,
            importInstallationMediaEventLoopFutureAsync: ImportInstallationMediaEventLoopFutureAsyncType? = nil,
            listTagsForResourceEventLoopFutureAsync: ListTagsForResourceEventLoopFutureAsyncType? = nil,
            modifyCertificatesEventLoopFutureAsync: ModifyCertificatesEventLoopFutureAsyncType? = nil,
            modifyCurrentDBClusterCapacityEventLoopFutureAsync: ModifyCurrentDBClusterCapacityEventLoopFutureAsyncType? = nil,
            modifyDBClusterEventLoopFutureAsync: ModifyDBClusterEventLoopFutureAsyncType? = nil,
            modifyDBClusterEndpointEventLoopFutureAsync: ModifyDBClusterEndpointEventLoopFutureAsyncType? = nil,
            modifyDBClusterParameterGroupEventLoopFutureAsync: ModifyDBClusterParameterGroupEventLoopFutureAsyncType? = nil,
            modifyDBClusterSnapshotAttributeEventLoopFutureAsync: ModifyDBClusterSnapshotAttributeEventLoopFutureAsyncType? = nil,
            modifyDBInstanceEventLoopFutureAsync: ModifyDBInstanceEventLoopFutureAsyncType? = nil,
            modifyDBParameterGroupEventLoopFutureAsync: ModifyDBParameterGroupEventLoopFutureAsyncType? = nil,
            modifyDBProxyEventLoopFutureAsync: ModifyDBProxyEventLoopFutureAsyncType? = nil,
            modifyDBProxyEndpointEventLoopFutureAsync: ModifyDBProxyEndpointEventLoopFutureAsyncType? = nil,
            modifyDBProxyTargetGroupEventLoopFutureAsync: ModifyDBProxyTargetGroupEventLoopFutureAsyncType? = nil,
            modifyDBSnapshotEventLoopFutureAsync: ModifyDBSnapshotEventLoopFutureAsyncType? = nil,
            modifyDBSnapshotAttributeEventLoopFutureAsync: ModifyDBSnapshotAttributeEventLoopFutureAsyncType? = nil,
            modifyDBSubnetGroupEventLoopFutureAsync: ModifyDBSubnetGroupEventLoopFutureAsyncType? = nil,
            modifyEventSubscriptionEventLoopFutureAsync: ModifyEventSubscriptionEventLoopFutureAsyncType? = nil,
            modifyGlobalClusterEventLoopFutureAsync: ModifyGlobalClusterEventLoopFutureAsyncType? = nil,
            modifyOptionGroupEventLoopFutureAsync: ModifyOptionGroupEventLoopFutureAsyncType? = nil,
            promoteReadReplicaEventLoopFutureAsync: PromoteReadReplicaEventLoopFutureAsyncType? = nil,
            promoteReadReplicaDBClusterEventLoopFutureAsync: PromoteReadReplicaDBClusterEventLoopFutureAsyncType? = nil,
            purchaseReservedDBInstancesOfferingEventLoopFutureAsync: PurchaseReservedDBInstancesOfferingEventLoopFutureAsyncType? = nil,
            rebootDBInstanceEventLoopFutureAsync: RebootDBInstanceEventLoopFutureAsyncType? = nil,
            registerDBProxyTargetsEventLoopFutureAsync: RegisterDBProxyTargetsEventLoopFutureAsyncType? = nil,
            removeFromGlobalClusterEventLoopFutureAsync: RemoveFromGlobalClusterEventLoopFutureAsyncType? = nil,
            removeRoleFromDBClusterEventLoopFutureAsync: RemoveRoleFromDBClusterEventLoopFutureAsyncType? = nil,
            removeRoleFromDBInstanceEventLoopFutureAsync: RemoveRoleFromDBInstanceEventLoopFutureAsyncType? = nil,
            removeSourceIdentifierFromSubscriptionEventLoopFutureAsync: RemoveSourceIdentifierFromSubscriptionEventLoopFutureAsyncType? = nil,
            removeTagsFromResourceEventLoopFutureAsync: RemoveTagsFromResourceEventLoopFutureAsyncType? = nil,
            resetDBClusterParameterGroupEventLoopFutureAsync: ResetDBClusterParameterGroupEventLoopFutureAsyncType? = nil,
            resetDBParameterGroupEventLoopFutureAsync: ResetDBParameterGroupEventLoopFutureAsyncType? = nil,
            restoreDBClusterFromS3EventLoopFutureAsync: RestoreDBClusterFromS3EventLoopFutureAsyncType? = nil,
            restoreDBClusterFromSnapshotEventLoopFutureAsync: RestoreDBClusterFromSnapshotEventLoopFutureAsyncType? = nil,
            restoreDBClusterToPointInTimeEventLoopFutureAsync: RestoreDBClusterToPointInTimeEventLoopFutureAsyncType? = nil,
            restoreDBInstanceFromDBSnapshotEventLoopFutureAsync: RestoreDBInstanceFromDBSnapshotEventLoopFutureAsyncType? = nil,
            restoreDBInstanceFromS3EventLoopFutureAsync: RestoreDBInstanceFromS3EventLoopFutureAsyncType? = nil,
            restoreDBInstanceToPointInTimeEventLoopFutureAsync: RestoreDBInstanceToPointInTimeEventLoopFutureAsyncType? = nil,
            revokeDBSecurityGroupIngressEventLoopFutureAsync: RevokeDBSecurityGroupIngressEventLoopFutureAsyncType? = nil,
            startActivityStreamEventLoopFutureAsync: StartActivityStreamEventLoopFutureAsyncType? = nil,
            startDBClusterEventLoopFutureAsync: StartDBClusterEventLoopFutureAsyncType? = nil,
            startDBInstanceEventLoopFutureAsync: StartDBInstanceEventLoopFutureAsyncType? = nil,
            startDBInstanceAutomatedBackupsReplicationEventLoopFutureAsync: StartDBInstanceAutomatedBackupsReplicationEventLoopFutureAsyncType? = nil,
            startExportTaskEventLoopFutureAsync: StartExportTaskEventLoopFutureAsyncType? = nil,
            stopActivityStreamEventLoopFutureAsync: StopActivityStreamEventLoopFutureAsyncType? = nil,
            stopDBClusterEventLoopFutureAsync: StopDBClusterEventLoopFutureAsyncType? = nil,
            stopDBInstanceEventLoopFutureAsync: StopDBInstanceEventLoopFutureAsyncType? = nil,
            stopDBInstanceAutomatedBackupsReplicationEventLoopFutureAsync: StopDBInstanceAutomatedBackupsReplicationEventLoopFutureAsyncType? = nil) {
        self.eventLoop = eventLoop
        
        self.addRoleToDBClusterEventLoopFutureAsyncOverride = addRoleToDBClusterEventLoopFutureAsync
        self.addRoleToDBInstanceEventLoopFutureAsyncOverride = addRoleToDBInstanceEventLoopFutureAsync
        self.addSourceIdentifierToSubscriptionEventLoopFutureAsyncOverride = addSourceIdentifierToSubscriptionEventLoopFutureAsync
        self.addTagsToResourceEventLoopFutureAsyncOverride = addTagsToResourceEventLoopFutureAsync
        self.applyPendingMaintenanceActionEventLoopFutureAsyncOverride = applyPendingMaintenanceActionEventLoopFutureAsync
        self.authorizeDBSecurityGroupIngressEventLoopFutureAsyncOverride = authorizeDBSecurityGroupIngressEventLoopFutureAsync
        self.backtrackDBClusterEventLoopFutureAsyncOverride = backtrackDBClusterEventLoopFutureAsync
        self.cancelExportTaskEventLoopFutureAsyncOverride = cancelExportTaskEventLoopFutureAsync
        self.copyDBClusterParameterGroupEventLoopFutureAsyncOverride = copyDBClusterParameterGroupEventLoopFutureAsync
        self.copyDBClusterSnapshotEventLoopFutureAsyncOverride = copyDBClusterSnapshotEventLoopFutureAsync
        self.copyDBParameterGroupEventLoopFutureAsyncOverride = copyDBParameterGroupEventLoopFutureAsync
        self.copyDBSnapshotEventLoopFutureAsyncOverride = copyDBSnapshotEventLoopFutureAsync
        self.copyOptionGroupEventLoopFutureAsyncOverride = copyOptionGroupEventLoopFutureAsync
        self.createCustomAvailabilityZoneEventLoopFutureAsyncOverride = createCustomAvailabilityZoneEventLoopFutureAsync
        self.createDBClusterEventLoopFutureAsyncOverride = createDBClusterEventLoopFutureAsync
        self.createDBClusterEndpointEventLoopFutureAsyncOverride = createDBClusterEndpointEventLoopFutureAsync
        self.createDBClusterParameterGroupEventLoopFutureAsyncOverride = createDBClusterParameterGroupEventLoopFutureAsync
        self.createDBClusterSnapshotEventLoopFutureAsyncOverride = createDBClusterSnapshotEventLoopFutureAsync
        self.createDBInstanceEventLoopFutureAsyncOverride = createDBInstanceEventLoopFutureAsync
        self.createDBInstanceReadReplicaEventLoopFutureAsyncOverride = createDBInstanceReadReplicaEventLoopFutureAsync
        self.createDBParameterGroupEventLoopFutureAsyncOverride = createDBParameterGroupEventLoopFutureAsync
        self.createDBProxyEventLoopFutureAsyncOverride = createDBProxyEventLoopFutureAsync
        self.createDBProxyEndpointEventLoopFutureAsyncOverride = createDBProxyEndpointEventLoopFutureAsync
        self.createDBSecurityGroupEventLoopFutureAsyncOverride = createDBSecurityGroupEventLoopFutureAsync
        self.createDBSnapshotEventLoopFutureAsyncOverride = createDBSnapshotEventLoopFutureAsync
        self.createDBSubnetGroupEventLoopFutureAsyncOverride = createDBSubnetGroupEventLoopFutureAsync
        self.createEventSubscriptionEventLoopFutureAsyncOverride = createEventSubscriptionEventLoopFutureAsync
        self.createGlobalClusterEventLoopFutureAsyncOverride = createGlobalClusterEventLoopFutureAsync
        self.createOptionGroupEventLoopFutureAsyncOverride = createOptionGroupEventLoopFutureAsync
        self.deleteCustomAvailabilityZoneEventLoopFutureAsyncOverride = deleteCustomAvailabilityZoneEventLoopFutureAsync
        self.deleteDBClusterEventLoopFutureAsyncOverride = deleteDBClusterEventLoopFutureAsync
        self.deleteDBClusterEndpointEventLoopFutureAsyncOverride = deleteDBClusterEndpointEventLoopFutureAsync
        self.deleteDBClusterParameterGroupEventLoopFutureAsyncOverride = deleteDBClusterParameterGroupEventLoopFutureAsync
        self.deleteDBClusterSnapshotEventLoopFutureAsyncOverride = deleteDBClusterSnapshotEventLoopFutureAsync
        self.deleteDBInstanceEventLoopFutureAsyncOverride = deleteDBInstanceEventLoopFutureAsync
        self.deleteDBInstanceAutomatedBackupEventLoopFutureAsyncOverride = deleteDBInstanceAutomatedBackupEventLoopFutureAsync
        self.deleteDBParameterGroupEventLoopFutureAsyncOverride = deleteDBParameterGroupEventLoopFutureAsync
        self.deleteDBProxyEventLoopFutureAsyncOverride = deleteDBProxyEventLoopFutureAsync
        self.deleteDBProxyEndpointEventLoopFutureAsyncOverride = deleteDBProxyEndpointEventLoopFutureAsync
        self.deleteDBSecurityGroupEventLoopFutureAsyncOverride = deleteDBSecurityGroupEventLoopFutureAsync
        self.deleteDBSnapshotEventLoopFutureAsyncOverride = deleteDBSnapshotEventLoopFutureAsync
        self.deleteDBSubnetGroupEventLoopFutureAsyncOverride = deleteDBSubnetGroupEventLoopFutureAsync
        self.deleteEventSubscriptionEventLoopFutureAsyncOverride = deleteEventSubscriptionEventLoopFutureAsync
        self.deleteGlobalClusterEventLoopFutureAsyncOverride = deleteGlobalClusterEventLoopFutureAsync
        self.deleteInstallationMediaEventLoopFutureAsyncOverride = deleteInstallationMediaEventLoopFutureAsync
        self.deleteOptionGroupEventLoopFutureAsyncOverride = deleteOptionGroupEventLoopFutureAsync
        self.deregisterDBProxyTargetsEventLoopFutureAsyncOverride = deregisterDBProxyTargetsEventLoopFutureAsync
        self.describeAccountAttributesEventLoopFutureAsyncOverride = describeAccountAttributesEventLoopFutureAsync
        self.describeCertificatesEventLoopFutureAsyncOverride = describeCertificatesEventLoopFutureAsync
        self.describeCustomAvailabilityZonesEventLoopFutureAsyncOverride = describeCustomAvailabilityZonesEventLoopFutureAsync
        self.describeDBClusterBacktracksEventLoopFutureAsyncOverride = describeDBClusterBacktracksEventLoopFutureAsync
        self.describeDBClusterEndpointsEventLoopFutureAsyncOverride = describeDBClusterEndpointsEventLoopFutureAsync
        self.describeDBClusterParameterGroupsEventLoopFutureAsyncOverride = describeDBClusterParameterGroupsEventLoopFutureAsync
        self.describeDBClusterParametersEventLoopFutureAsyncOverride = describeDBClusterParametersEventLoopFutureAsync
        self.describeDBClusterSnapshotAttributesEventLoopFutureAsyncOverride = describeDBClusterSnapshotAttributesEventLoopFutureAsync
        self.describeDBClusterSnapshotsEventLoopFutureAsyncOverride = describeDBClusterSnapshotsEventLoopFutureAsync
        self.describeDBClustersEventLoopFutureAsyncOverride = describeDBClustersEventLoopFutureAsync
        self.describeDBEngineVersionsEventLoopFutureAsyncOverride = describeDBEngineVersionsEventLoopFutureAsync
        self.describeDBInstanceAutomatedBackupsEventLoopFutureAsyncOverride = describeDBInstanceAutomatedBackupsEventLoopFutureAsync
        self.describeDBInstancesEventLoopFutureAsyncOverride = describeDBInstancesEventLoopFutureAsync
        self.describeDBLogFilesEventLoopFutureAsyncOverride = describeDBLogFilesEventLoopFutureAsync
        self.describeDBParameterGroupsEventLoopFutureAsyncOverride = describeDBParameterGroupsEventLoopFutureAsync
        self.describeDBParametersEventLoopFutureAsyncOverride = describeDBParametersEventLoopFutureAsync
        self.describeDBProxiesEventLoopFutureAsyncOverride = describeDBProxiesEventLoopFutureAsync
        self.describeDBProxyEndpointsEventLoopFutureAsyncOverride = describeDBProxyEndpointsEventLoopFutureAsync
        self.describeDBProxyTargetGroupsEventLoopFutureAsyncOverride = describeDBProxyTargetGroupsEventLoopFutureAsync
        self.describeDBProxyTargetsEventLoopFutureAsyncOverride = describeDBProxyTargetsEventLoopFutureAsync
        self.describeDBSecurityGroupsEventLoopFutureAsyncOverride = describeDBSecurityGroupsEventLoopFutureAsync
        self.describeDBSnapshotAttributesEventLoopFutureAsyncOverride = describeDBSnapshotAttributesEventLoopFutureAsync
        self.describeDBSnapshotsEventLoopFutureAsyncOverride = describeDBSnapshotsEventLoopFutureAsync
        self.describeDBSubnetGroupsEventLoopFutureAsyncOverride = describeDBSubnetGroupsEventLoopFutureAsync
        self.describeEngineDefaultClusterParametersEventLoopFutureAsyncOverride = describeEngineDefaultClusterParametersEventLoopFutureAsync
        self.describeEngineDefaultParametersEventLoopFutureAsyncOverride = describeEngineDefaultParametersEventLoopFutureAsync
        self.describeEventCategoriesEventLoopFutureAsyncOverride = describeEventCategoriesEventLoopFutureAsync
        self.describeEventSubscriptionsEventLoopFutureAsyncOverride = describeEventSubscriptionsEventLoopFutureAsync
        self.describeEventsEventLoopFutureAsyncOverride = describeEventsEventLoopFutureAsync
        self.describeExportTasksEventLoopFutureAsyncOverride = describeExportTasksEventLoopFutureAsync
        self.describeGlobalClustersEventLoopFutureAsyncOverride = describeGlobalClustersEventLoopFutureAsync
        self.describeInstallationMediaEventLoopFutureAsyncOverride = describeInstallationMediaEventLoopFutureAsync
        self.describeOptionGroupOptionsEventLoopFutureAsyncOverride = describeOptionGroupOptionsEventLoopFutureAsync
        self.describeOptionGroupsEventLoopFutureAsyncOverride = describeOptionGroupsEventLoopFutureAsync
        self.describeOrderableDBInstanceOptionsEventLoopFutureAsyncOverride = describeOrderableDBInstanceOptionsEventLoopFutureAsync
        self.describePendingMaintenanceActionsEventLoopFutureAsyncOverride = describePendingMaintenanceActionsEventLoopFutureAsync
        self.describeReservedDBInstancesEventLoopFutureAsyncOverride = describeReservedDBInstancesEventLoopFutureAsync
        self.describeReservedDBInstancesOfferingsEventLoopFutureAsyncOverride = describeReservedDBInstancesOfferingsEventLoopFutureAsync
        self.describeSourceRegionsEventLoopFutureAsyncOverride = describeSourceRegionsEventLoopFutureAsync
        self.describeValidDBInstanceModificationsEventLoopFutureAsyncOverride = describeValidDBInstanceModificationsEventLoopFutureAsync
        self.downloadDBLogFilePortionEventLoopFutureAsyncOverride = downloadDBLogFilePortionEventLoopFutureAsync
        self.failoverDBClusterEventLoopFutureAsyncOverride = failoverDBClusterEventLoopFutureAsync
        self.failoverGlobalClusterEventLoopFutureAsyncOverride = failoverGlobalClusterEventLoopFutureAsync
        self.importInstallationMediaEventLoopFutureAsyncOverride = importInstallationMediaEventLoopFutureAsync
        self.listTagsForResourceEventLoopFutureAsyncOverride = listTagsForResourceEventLoopFutureAsync
        self.modifyCertificatesEventLoopFutureAsyncOverride = modifyCertificatesEventLoopFutureAsync
        self.modifyCurrentDBClusterCapacityEventLoopFutureAsyncOverride = modifyCurrentDBClusterCapacityEventLoopFutureAsync
        self.modifyDBClusterEventLoopFutureAsyncOverride = modifyDBClusterEventLoopFutureAsync
        self.modifyDBClusterEndpointEventLoopFutureAsyncOverride = modifyDBClusterEndpointEventLoopFutureAsync
        self.modifyDBClusterParameterGroupEventLoopFutureAsyncOverride = modifyDBClusterParameterGroupEventLoopFutureAsync
        self.modifyDBClusterSnapshotAttributeEventLoopFutureAsyncOverride = modifyDBClusterSnapshotAttributeEventLoopFutureAsync
        self.modifyDBInstanceEventLoopFutureAsyncOverride = modifyDBInstanceEventLoopFutureAsync
        self.modifyDBParameterGroupEventLoopFutureAsyncOverride = modifyDBParameterGroupEventLoopFutureAsync
        self.modifyDBProxyEventLoopFutureAsyncOverride = modifyDBProxyEventLoopFutureAsync
        self.modifyDBProxyEndpointEventLoopFutureAsyncOverride = modifyDBProxyEndpointEventLoopFutureAsync
        self.modifyDBProxyTargetGroupEventLoopFutureAsyncOverride = modifyDBProxyTargetGroupEventLoopFutureAsync
        self.modifyDBSnapshotEventLoopFutureAsyncOverride = modifyDBSnapshotEventLoopFutureAsync
        self.modifyDBSnapshotAttributeEventLoopFutureAsyncOverride = modifyDBSnapshotAttributeEventLoopFutureAsync
        self.modifyDBSubnetGroupEventLoopFutureAsyncOverride = modifyDBSubnetGroupEventLoopFutureAsync
        self.modifyEventSubscriptionEventLoopFutureAsyncOverride = modifyEventSubscriptionEventLoopFutureAsync
        self.modifyGlobalClusterEventLoopFutureAsyncOverride = modifyGlobalClusterEventLoopFutureAsync
        self.modifyOptionGroupEventLoopFutureAsyncOverride = modifyOptionGroupEventLoopFutureAsync
        self.promoteReadReplicaEventLoopFutureAsyncOverride = promoteReadReplicaEventLoopFutureAsync
        self.promoteReadReplicaDBClusterEventLoopFutureAsyncOverride = promoteReadReplicaDBClusterEventLoopFutureAsync
        self.purchaseReservedDBInstancesOfferingEventLoopFutureAsyncOverride = purchaseReservedDBInstancesOfferingEventLoopFutureAsync
        self.rebootDBInstanceEventLoopFutureAsyncOverride = rebootDBInstanceEventLoopFutureAsync
        self.registerDBProxyTargetsEventLoopFutureAsyncOverride = registerDBProxyTargetsEventLoopFutureAsync
        self.removeFromGlobalClusterEventLoopFutureAsyncOverride = removeFromGlobalClusterEventLoopFutureAsync
        self.removeRoleFromDBClusterEventLoopFutureAsyncOverride = removeRoleFromDBClusterEventLoopFutureAsync
        self.removeRoleFromDBInstanceEventLoopFutureAsyncOverride = removeRoleFromDBInstanceEventLoopFutureAsync
        self.removeSourceIdentifierFromSubscriptionEventLoopFutureAsyncOverride = removeSourceIdentifierFromSubscriptionEventLoopFutureAsync
        self.removeTagsFromResourceEventLoopFutureAsyncOverride = removeTagsFromResourceEventLoopFutureAsync
        self.resetDBClusterParameterGroupEventLoopFutureAsyncOverride = resetDBClusterParameterGroupEventLoopFutureAsync
        self.resetDBParameterGroupEventLoopFutureAsyncOverride = resetDBParameterGroupEventLoopFutureAsync
        self.restoreDBClusterFromS3EventLoopFutureAsyncOverride = restoreDBClusterFromS3EventLoopFutureAsync
        self.restoreDBClusterFromSnapshotEventLoopFutureAsyncOverride = restoreDBClusterFromSnapshotEventLoopFutureAsync
        self.restoreDBClusterToPointInTimeEventLoopFutureAsyncOverride = restoreDBClusterToPointInTimeEventLoopFutureAsync
        self.restoreDBInstanceFromDBSnapshotEventLoopFutureAsyncOverride = restoreDBInstanceFromDBSnapshotEventLoopFutureAsync
        self.restoreDBInstanceFromS3EventLoopFutureAsyncOverride = restoreDBInstanceFromS3EventLoopFutureAsync
        self.restoreDBInstanceToPointInTimeEventLoopFutureAsyncOverride = restoreDBInstanceToPointInTimeEventLoopFutureAsync
        self.revokeDBSecurityGroupIngressEventLoopFutureAsyncOverride = revokeDBSecurityGroupIngressEventLoopFutureAsync
        self.startActivityStreamEventLoopFutureAsyncOverride = startActivityStreamEventLoopFutureAsync
        self.startDBClusterEventLoopFutureAsyncOverride = startDBClusterEventLoopFutureAsync
        self.startDBInstanceEventLoopFutureAsyncOverride = startDBInstanceEventLoopFutureAsync
        self.startDBInstanceAutomatedBackupsReplicationEventLoopFutureAsyncOverride = startDBInstanceAutomatedBackupsReplicationEventLoopFutureAsync
        self.startExportTaskEventLoopFutureAsyncOverride = startExportTaskEventLoopFutureAsync
        self.stopActivityStreamEventLoopFutureAsyncOverride = stopActivityStreamEventLoopFutureAsync
        self.stopDBClusterEventLoopFutureAsyncOverride = stopDBClusterEventLoopFutureAsync
        self.stopDBInstanceEventLoopFutureAsyncOverride = stopDBInstanceEventLoopFutureAsync
        self.stopDBInstanceAutomatedBackupsReplicationEventLoopFutureAsyncOverride = stopDBInstanceAutomatedBackupsReplicationEventLoopFutureAsync
    }

    /**
     Invokes the AddRoleToDBCluster operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AddRoleToDBClusterMessage object being passed to this operation.
           The possible errors are: dBClusterNotFound, dBClusterRoleAlreadyExists, dBClusterRoleQuotaExceeded, invalidDBClusterState.
     */
    public func addRoleToDBCluster(
            input: RDSModel.AddRoleToDBClusterMessage) -> EventLoopFuture<Void> {
        if let addRoleToDBClusterEventLoopFutureAsyncOverride = addRoleToDBClusterEventLoopFutureAsyncOverride {
            return addRoleToDBClusterEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the AddRoleToDBInstance operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AddRoleToDBInstanceMessage object being passed to this operation.
           The possible errors are: dBInstanceNotFound, dBInstanceRoleAlreadyExists, dBInstanceRoleQuotaExceeded, invalidDBInstanceState.
     */
    public func addRoleToDBInstance(
            input: RDSModel.AddRoleToDBInstanceMessage) -> EventLoopFuture<Void> {
        if let addRoleToDBInstanceEventLoopFutureAsyncOverride = addRoleToDBInstanceEventLoopFutureAsyncOverride {
            return addRoleToDBInstanceEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the AddSourceIdentifierToSubscription operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AddSourceIdentifierToSubscriptionMessage object being passed to this operation.
     - Returns: A future to the AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: sourceNotFound, subscriptionNotFound.
     */
    public func addSourceIdentifierToSubscription(
            input: RDSModel.AddSourceIdentifierToSubscriptionMessage) -> EventLoopFuture<RDSModel.AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription> {
        if let addSourceIdentifierToSubscriptionEventLoopFutureAsyncOverride = addSourceIdentifierToSubscriptionEventLoopFutureAsyncOverride {
            return addSourceIdentifierToSubscriptionEventLoopFutureAsyncOverride(input)
        }

        let result = AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription.__default
        
        let promise = self.eventLoop.makePromise(of: AddSourceIdentifierToSubscriptionResultForAddSourceIdentifierToSubscription.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the AddTagsToResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AddTagsToResourceMessage object being passed to this operation.
           The possible errors are: dBClusterNotFound, dBInstanceNotFound, dBProxyNotFound, dBProxyTargetGroupNotFound, dBSnapshotNotFound.
     */
    public func addTagsToResource(
            input: RDSModel.AddTagsToResourceMessage) -> EventLoopFuture<Void> {
        if let addTagsToResourceEventLoopFutureAsyncOverride = addTagsToResourceEventLoopFutureAsyncOverride {
            return addTagsToResourceEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the ApplyPendingMaintenanceAction operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ApplyPendingMaintenanceActionMessage object being passed to this operation.
     - Returns: A future to the ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidDBClusterState, invalidDBInstanceState, resourceNotFound.
     */
    public func applyPendingMaintenanceAction(
            input: RDSModel.ApplyPendingMaintenanceActionMessage) -> EventLoopFuture<RDSModel.ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction> {
        if let applyPendingMaintenanceActionEventLoopFutureAsyncOverride = applyPendingMaintenanceActionEventLoopFutureAsyncOverride {
            return applyPendingMaintenanceActionEventLoopFutureAsyncOverride(input)
        }

        let result = ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction.__default
        
        let promise = self.eventLoop.makePromise(of: ApplyPendingMaintenanceActionResultForApplyPendingMaintenanceAction.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the AuthorizeDBSecurityGroupIngress operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AuthorizeDBSecurityGroupIngressMessage object being passed to this operation.
     - Returns: A future to the AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationAlreadyExists, authorizationQuotaExceeded, dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    public func authorizeDBSecurityGroupIngress(
            input: RDSModel.AuthorizeDBSecurityGroupIngressMessage) -> EventLoopFuture<RDSModel.AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress> {
        if let authorizeDBSecurityGroupIngressEventLoopFutureAsyncOverride = authorizeDBSecurityGroupIngressEventLoopFutureAsyncOverride {
            return authorizeDBSecurityGroupIngressEventLoopFutureAsyncOverride(input)
        }

        let result = AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress.__default
        
        let promise = self.eventLoop.makePromise(of: AuthorizeDBSecurityGroupIngressResultForAuthorizeDBSecurityGroupIngress.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the BacktrackDBCluster operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated BacktrackDBClusterMessage object being passed to this operation.
     - Returns: A future to the DBClusterBacktrackForBacktrackDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, invalidDBClusterState.
     */
    public func backtrackDBCluster(
            input: RDSModel.BacktrackDBClusterMessage) -> EventLoopFuture<RDSModel.DBClusterBacktrackForBacktrackDBCluster> {
        if let backtrackDBClusterEventLoopFutureAsyncOverride = backtrackDBClusterEventLoopFutureAsyncOverride {
            return backtrackDBClusterEventLoopFutureAsyncOverride(input)
        }

        let result = DBClusterBacktrackForBacktrackDBCluster.__default
        
        let promise = self.eventLoop.makePromise(of: DBClusterBacktrackForBacktrackDBCluster.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the CancelExportTask operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CancelExportTaskMessage object being passed to this operation.
     - Returns: A future to the ExportTaskForCancelExportTask object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: exportTaskNotFound, invalidExportTaskState.
     */
    public func cancelExportTask(
            input: RDSModel.CancelExportTaskMessage) -> EventLoopFuture<RDSModel.ExportTaskForCancelExportTask> {
        if let cancelExportTaskEventLoopFutureAsyncOverride = cancelExportTaskEventLoopFutureAsyncOverride {
            return cancelExportTaskEventLoopFutureAsyncOverride(input)
        }

        let result = ExportTaskForCancelExportTask.__default
        
        let promise = self.eventLoop.makePromise(of: ExportTaskForCancelExportTask.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the CopyDBClusterParameterGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CopyDBClusterParameterGroupMessage object being passed to this operation.
     - Returns: A future to the CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBParameterGroupAlreadyExists, dBParameterGroupNotFound, dBParameterGroupQuotaExceeded.
     */
    public func copyDBClusterParameterGroup(
            input: RDSModel.CopyDBClusterParameterGroupMessage) -> EventLoopFuture<RDSModel.CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup> {
        if let copyDBClusterParameterGroupEventLoopFutureAsyncOverride = copyDBClusterParameterGroupEventLoopFutureAsyncOverride {
            return copyDBClusterParameterGroupEventLoopFutureAsyncOverride(input)
        }

        let result = CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup.__default
        
        let promise = self.eventLoop.makePromise(of: CopyDBClusterParameterGroupResultForCopyDBClusterParameterGroup.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the CopyDBClusterSnapshot operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CopyDBClusterSnapshotMessage object being passed to this operation.
     - Returns: A future to the CopyDBClusterSnapshotResultForCopyDBClusterSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterSnapshotAlreadyExists, dBClusterSnapshotNotFound, invalidDBClusterSnapshotState, invalidDBClusterState, kMSKeyNotAccessible, snapshotQuotaExceeded.
     */
    public func copyDBClusterSnapshot(
            input: RDSModel.CopyDBClusterSnapshotMessage) -> EventLoopFuture<RDSModel.CopyDBClusterSnapshotResultForCopyDBClusterSnapshot> {
        if let copyDBClusterSnapshotEventLoopFutureAsyncOverride = copyDBClusterSnapshotEventLoopFutureAsyncOverride {
            return copyDBClusterSnapshotEventLoopFutureAsyncOverride(input)
        }

        let result = CopyDBClusterSnapshotResultForCopyDBClusterSnapshot.__default
        
        let promise = self.eventLoop.makePromise(of: CopyDBClusterSnapshotResultForCopyDBClusterSnapshot.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the CopyDBParameterGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CopyDBParameterGroupMessage object being passed to this operation.
     - Returns: A future to the CopyDBParameterGroupResultForCopyDBParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBParameterGroupAlreadyExists, dBParameterGroupNotFound, dBParameterGroupQuotaExceeded.
     */
    public func copyDBParameterGroup(
            input: RDSModel.CopyDBParameterGroupMessage) -> EventLoopFuture<RDSModel.CopyDBParameterGroupResultForCopyDBParameterGroup> {
        if let copyDBParameterGroupEventLoopFutureAsyncOverride = copyDBParameterGroupEventLoopFutureAsyncOverride {
            return copyDBParameterGroupEventLoopFutureAsyncOverride(input)
        }

        let result = CopyDBParameterGroupResultForCopyDBParameterGroup.__default
        
        let promise = self.eventLoop.makePromise(of: CopyDBParameterGroupResultForCopyDBParameterGroup.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the CopyDBSnapshot operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CopyDBSnapshotMessage object being passed to this operation.
     - Returns: A future to the CopyDBSnapshotResultForCopyDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: customAvailabilityZoneNotFound, dBSnapshotAlreadyExists, dBSnapshotNotFound, invalidDBSnapshotState, kMSKeyNotAccessible, snapshotQuotaExceeded.
     */
    public func copyDBSnapshot(
            input: RDSModel.CopyDBSnapshotMessage) -> EventLoopFuture<RDSModel.CopyDBSnapshotResultForCopyDBSnapshot> {
        if let copyDBSnapshotEventLoopFutureAsyncOverride = copyDBSnapshotEventLoopFutureAsyncOverride {
            return copyDBSnapshotEventLoopFutureAsyncOverride(input)
        }

        let result = CopyDBSnapshotResultForCopyDBSnapshot.__default
        
        let promise = self.eventLoop.makePromise(of: CopyDBSnapshotResultForCopyDBSnapshot.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the CopyOptionGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CopyOptionGroupMessage object being passed to this operation.
     - Returns: A future to the CopyOptionGroupResultForCopyOptionGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: optionGroupAlreadyExists, optionGroupNotFound, optionGroupQuotaExceeded.
     */
    public func copyOptionGroup(
            input: RDSModel.CopyOptionGroupMessage) -> EventLoopFuture<RDSModel.CopyOptionGroupResultForCopyOptionGroup> {
        if let copyOptionGroupEventLoopFutureAsyncOverride = copyOptionGroupEventLoopFutureAsyncOverride {
            return copyOptionGroupEventLoopFutureAsyncOverride(input)
        }

        let result = CopyOptionGroupResultForCopyOptionGroup.__default
        
        let promise = self.eventLoop.makePromise(of: CopyOptionGroupResultForCopyOptionGroup.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the CreateCustomAvailabilityZone operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateCustomAvailabilityZoneMessage object being passed to this operation.
     - Returns: A future to the CreateCustomAvailabilityZoneResultForCreateCustomAvailabilityZone object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: customAvailabilityZoneAlreadyExists, customAvailabilityZoneQuotaExceeded, kMSKeyNotAccessible.
     */
    public func createCustomAvailabilityZone(
            input: RDSModel.CreateCustomAvailabilityZoneMessage) -> EventLoopFuture<RDSModel.CreateCustomAvailabilityZoneResultForCreateCustomAvailabilityZone> {
        if let createCustomAvailabilityZoneEventLoopFutureAsyncOverride = createCustomAvailabilityZoneEventLoopFutureAsyncOverride {
            return createCustomAvailabilityZoneEventLoopFutureAsyncOverride(input)
        }

        let result = CreateCustomAvailabilityZoneResultForCreateCustomAvailabilityZone.__default
        
        let promise = self.eventLoop.makePromise(of: CreateCustomAvailabilityZoneResultForCreateCustomAvailabilityZone.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the CreateDBCluster operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateDBClusterMessage object being passed to this operation.
     - Returns: A future to the CreateDBClusterResultForCreateDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBInstanceNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, globalClusterNotFound, insufficientStorageClusterCapacity, invalidDBClusterState, invalidDBInstanceState, invalidDBSubnetGroupState, invalidGlobalClusterState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, storageQuotaExceeded.
     */
    public func createDBCluster(
            input: RDSModel.CreateDBClusterMessage) -> EventLoopFuture<RDSModel.CreateDBClusterResultForCreateDBCluster> {
        if let createDBClusterEventLoopFutureAsyncOverride = createDBClusterEventLoopFutureAsyncOverride {
            return createDBClusterEventLoopFutureAsyncOverride(input)
        }

        let result = CreateDBClusterResultForCreateDBCluster.__default
        
        let promise = self.eventLoop.makePromise(of: CreateDBClusterResultForCreateDBCluster.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the CreateDBClusterEndpoint operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateDBClusterEndpointMessage object being passed to this operation.
     - Returns: A future to the DBClusterEndpointForCreateDBClusterEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterEndpointAlreadyExists, dBClusterEndpointQuotaExceeded, dBClusterNotFound, dBInstanceNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    public func createDBClusterEndpoint(
            input: RDSModel.CreateDBClusterEndpointMessage) -> EventLoopFuture<RDSModel.DBClusterEndpointForCreateDBClusterEndpoint> {
        if let createDBClusterEndpointEventLoopFutureAsyncOverride = createDBClusterEndpointEventLoopFutureAsyncOverride {
            return createDBClusterEndpointEventLoopFutureAsyncOverride(input)
        }

        let result = DBClusterEndpointForCreateDBClusterEndpoint.__default
        
        let promise = self.eventLoop.makePromise(of: DBClusterEndpointForCreateDBClusterEndpoint.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the CreateDBClusterParameterGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateDBClusterParameterGroupMessage object being passed to this operation.
     - Returns: A future to the CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBParameterGroupAlreadyExists, dBParameterGroupQuotaExceeded.
     */
    public func createDBClusterParameterGroup(
            input: RDSModel.CreateDBClusterParameterGroupMessage) -> EventLoopFuture<RDSModel.CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup> {
        if let createDBClusterParameterGroupEventLoopFutureAsyncOverride = createDBClusterParameterGroupEventLoopFutureAsyncOverride {
            return createDBClusterParameterGroupEventLoopFutureAsyncOverride(input)
        }

        let result = CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup.__default
        
        let promise = self.eventLoop.makePromise(of: CreateDBClusterParameterGroupResultForCreateDBClusterParameterGroup.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the CreateDBClusterSnapshot operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateDBClusterSnapshotMessage object being passed to this operation.
     - Returns: A future to the CreateDBClusterSnapshotResultForCreateDBClusterSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, dBClusterSnapshotAlreadyExists, invalidDBClusterSnapshotState, invalidDBClusterState, snapshotQuotaExceeded.
     */
    public func createDBClusterSnapshot(
            input: RDSModel.CreateDBClusterSnapshotMessage) -> EventLoopFuture<RDSModel.CreateDBClusterSnapshotResultForCreateDBClusterSnapshot> {
        if let createDBClusterSnapshotEventLoopFutureAsyncOverride = createDBClusterSnapshotEventLoopFutureAsyncOverride {
            return createDBClusterSnapshotEventLoopFutureAsyncOverride(input)
        }

        let result = CreateDBClusterSnapshotResultForCreateDBClusterSnapshot.__default
        
        let promise = self.eventLoop.makePromise(of: CreateDBClusterSnapshotResultForCreateDBClusterSnapshot.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the CreateDBInstance operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateDBInstanceMessage object being passed to this operation.
     - Returns: A future to the CreateDBInstanceResultForCreateDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, backupPolicyNotFound, dBClusterNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBClusterState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func createDBInstance(
            input: RDSModel.CreateDBInstanceMessage) -> EventLoopFuture<RDSModel.CreateDBInstanceResultForCreateDBInstance> {
        if let createDBInstanceEventLoopFutureAsyncOverride = createDBInstanceEventLoopFutureAsyncOverride {
            return createDBInstanceEventLoopFutureAsyncOverride(input)
        }

        let result = CreateDBInstanceResultForCreateDBInstance.__default
        
        let promise = self.eventLoop.makePromise(of: CreateDBInstanceResultForCreateDBInstance.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the CreateDBInstanceReadReplica operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateDBInstanceReadReplicaMessage object being passed to this operation.
     - Returns: A future to the CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBInstanceAlreadyExists, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotAllowed, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidDBSubnetGroup, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func createDBInstanceReadReplica(
            input: RDSModel.CreateDBInstanceReadReplicaMessage) -> EventLoopFuture<RDSModel.CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica> {
        if let createDBInstanceReadReplicaEventLoopFutureAsyncOverride = createDBInstanceReadReplicaEventLoopFutureAsyncOverride {
            return createDBInstanceReadReplicaEventLoopFutureAsyncOverride(input)
        }

        let result = CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica.__default
        
        let promise = self.eventLoop.makePromise(of: CreateDBInstanceReadReplicaResultForCreateDBInstanceReadReplica.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the CreateDBParameterGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateDBParameterGroupMessage object being passed to this operation.
     - Returns: A future to the CreateDBParameterGroupResultForCreateDBParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBParameterGroupAlreadyExists, dBParameterGroupQuotaExceeded.
     */
    public func createDBParameterGroup(
            input: RDSModel.CreateDBParameterGroupMessage) -> EventLoopFuture<RDSModel.CreateDBParameterGroupResultForCreateDBParameterGroup> {
        if let createDBParameterGroupEventLoopFutureAsyncOverride = createDBParameterGroupEventLoopFutureAsyncOverride {
            return createDBParameterGroupEventLoopFutureAsyncOverride(input)
        }

        let result = CreateDBParameterGroupResultForCreateDBParameterGroup.__default
        
        let promise = self.eventLoop.makePromise(of: CreateDBParameterGroupResultForCreateDBParameterGroup.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the CreateDBProxy operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateDBProxyRequest object being passed to this operation.
     - Returns: A future to the CreateDBProxyResponseForCreateDBProxy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBProxyAlreadyExists, dBProxyQuotaExceeded, invalidSubnet.
     */
    public func createDBProxy(
            input: RDSModel.CreateDBProxyRequest) -> EventLoopFuture<RDSModel.CreateDBProxyResponseForCreateDBProxy> {
        if let createDBProxyEventLoopFutureAsyncOverride = createDBProxyEventLoopFutureAsyncOverride {
            return createDBProxyEventLoopFutureAsyncOverride(input)
        }

        let result = CreateDBProxyResponseForCreateDBProxy.__default
        
        let promise = self.eventLoop.makePromise(of: CreateDBProxyResponseForCreateDBProxy.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the CreateDBProxyEndpoint operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateDBProxyEndpointRequest object being passed to this operation.
     - Returns: A future to the CreateDBProxyEndpointResponseForCreateDBProxyEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBProxyEndpointAlreadyExists, dBProxyEndpointQuotaExceeded, dBProxyNotFound, invalidDBProxyState, invalidSubnet.
     */
    public func createDBProxyEndpoint(
            input: RDSModel.CreateDBProxyEndpointRequest) -> EventLoopFuture<RDSModel.CreateDBProxyEndpointResponseForCreateDBProxyEndpoint> {
        if let createDBProxyEndpointEventLoopFutureAsyncOverride = createDBProxyEndpointEventLoopFutureAsyncOverride {
            return createDBProxyEndpointEventLoopFutureAsyncOverride(input)
        }

        let result = CreateDBProxyEndpointResponseForCreateDBProxyEndpoint.__default
        
        let promise = self.eventLoop.makePromise(of: CreateDBProxyEndpointResponseForCreateDBProxyEndpoint.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the CreateDBSecurityGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateDBSecurityGroupMessage object being passed to this operation.
     - Returns: A future to the CreateDBSecurityGroupResultForCreateDBSecurityGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBSecurityGroupAlreadyExists, dBSecurityGroupNotSupported, dBSecurityGroupQuotaExceeded.
     */
    public func createDBSecurityGroup(
            input: RDSModel.CreateDBSecurityGroupMessage) -> EventLoopFuture<RDSModel.CreateDBSecurityGroupResultForCreateDBSecurityGroup> {
        if let createDBSecurityGroupEventLoopFutureAsyncOverride = createDBSecurityGroupEventLoopFutureAsyncOverride {
            return createDBSecurityGroupEventLoopFutureAsyncOverride(input)
        }

        let result = CreateDBSecurityGroupResultForCreateDBSecurityGroup.__default
        
        let promise = self.eventLoop.makePromise(of: CreateDBSecurityGroupResultForCreateDBSecurityGroup.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the CreateDBSnapshot operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateDBSnapshotMessage object being passed to this operation.
     - Returns: A future to the CreateDBSnapshotResultForCreateDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound, dBSnapshotAlreadyExists, invalidDBInstanceState, snapshotQuotaExceeded.
     */
    public func createDBSnapshot(
            input: RDSModel.CreateDBSnapshotMessage) -> EventLoopFuture<RDSModel.CreateDBSnapshotResultForCreateDBSnapshot> {
        if let createDBSnapshotEventLoopFutureAsyncOverride = createDBSnapshotEventLoopFutureAsyncOverride {
            return createDBSnapshotEventLoopFutureAsyncOverride(input)
        }

        let result = CreateDBSnapshotResultForCreateDBSnapshot.__default
        
        let promise = self.eventLoop.makePromise(of: CreateDBSnapshotResultForCreateDBSnapshot.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the CreateDBSubnetGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateDBSubnetGroupMessage object being passed to this operation.
     - Returns: A future to the CreateDBSubnetGroupResultForCreateDBSubnetGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBSubnetGroupAlreadyExists, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupQuotaExceeded, dBSubnetQuotaExceeded, invalidSubnet.
     */
    public func createDBSubnetGroup(
            input: RDSModel.CreateDBSubnetGroupMessage) -> EventLoopFuture<RDSModel.CreateDBSubnetGroupResultForCreateDBSubnetGroup> {
        if let createDBSubnetGroupEventLoopFutureAsyncOverride = createDBSubnetGroupEventLoopFutureAsyncOverride {
            return createDBSubnetGroupEventLoopFutureAsyncOverride(input)
        }

        let result = CreateDBSubnetGroupResultForCreateDBSubnetGroup.__default
        
        let promise = self.eventLoop.makePromise(of: CreateDBSubnetGroupResultForCreateDBSubnetGroup.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the CreateEventSubscription operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateEventSubscriptionMessage object being passed to this operation.
     - Returns: A future to the CreateEventSubscriptionResultForCreateEventSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: eventSubscriptionQuotaExceeded, sNSInvalidTopic, sNSNoAuthorization, sNSTopicArnNotFound, sourceNotFound, subscriptionAlreadyExist, subscriptionCategoryNotFound.
     */
    public func createEventSubscription(
            input: RDSModel.CreateEventSubscriptionMessage) -> EventLoopFuture<RDSModel.CreateEventSubscriptionResultForCreateEventSubscription> {
        if let createEventSubscriptionEventLoopFutureAsyncOverride = createEventSubscriptionEventLoopFutureAsyncOverride {
            return createEventSubscriptionEventLoopFutureAsyncOverride(input)
        }

        let result = CreateEventSubscriptionResultForCreateEventSubscription.__default
        
        let promise = self.eventLoop.makePromise(of: CreateEventSubscriptionResultForCreateEventSubscription.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the CreateGlobalCluster operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateGlobalClusterMessage object being passed to this operation.
     - Returns: A future to the CreateGlobalClusterResultForCreateGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, globalClusterAlreadyExists, globalClusterQuotaExceeded, invalidDBClusterState.
     */
    public func createGlobalCluster(
            input: RDSModel.CreateGlobalClusterMessage) -> EventLoopFuture<RDSModel.CreateGlobalClusterResultForCreateGlobalCluster> {
        if let createGlobalClusterEventLoopFutureAsyncOverride = createGlobalClusterEventLoopFutureAsyncOverride {
            return createGlobalClusterEventLoopFutureAsyncOverride(input)
        }

        let result = CreateGlobalClusterResultForCreateGlobalCluster.__default
        
        let promise = self.eventLoop.makePromise(of: CreateGlobalClusterResultForCreateGlobalCluster.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the CreateOptionGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateOptionGroupMessage object being passed to this operation.
     - Returns: A future to the CreateOptionGroupResultForCreateOptionGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: optionGroupAlreadyExists, optionGroupQuotaExceeded.
     */
    public func createOptionGroup(
            input: RDSModel.CreateOptionGroupMessage) -> EventLoopFuture<RDSModel.CreateOptionGroupResultForCreateOptionGroup> {
        if let createOptionGroupEventLoopFutureAsyncOverride = createOptionGroupEventLoopFutureAsyncOverride {
            return createOptionGroupEventLoopFutureAsyncOverride(input)
        }

        let result = CreateOptionGroupResultForCreateOptionGroup.__default
        
        let promise = self.eventLoop.makePromise(of: CreateOptionGroupResultForCreateOptionGroup.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DeleteCustomAvailabilityZone operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteCustomAvailabilityZoneMessage object being passed to this operation.
     - Returns: A future to the DeleteCustomAvailabilityZoneResultForDeleteCustomAvailabilityZone object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: customAvailabilityZoneNotFound, kMSKeyNotAccessible.
     */
    public func deleteCustomAvailabilityZone(
            input: RDSModel.DeleteCustomAvailabilityZoneMessage) -> EventLoopFuture<RDSModel.DeleteCustomAvailabilityZoneResultForDeleteCustomAvailabilityZone> {
        if let deleteCustomAvailabilityZoneEventLoopFutureAsyncOverride = deleteCustomAvailabilityZoneEventLoopFutureAsyncOverride {
            return deleteCustomAvailabilityZoneEventLoopFutureAsyncOverride(input)
        }

        let result = DeleteCustomAvailabilityZoneResultForDeleteCustomAvailabilityZone.__default
        
        let promise = self.eventLoop.makePromise(of: DeleteCustomAvailabilityZoneResultForDeleteCustomAvailabilityZone.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DeleteDBCluster operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteDBClusterMessage object being passed to this operation.
     - Returns: A future to the DeleteDBClusterResultForDeleteDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, dBClusterSnapshotAlreadyExists, invalidDBClusterSnapshotState, invalidDBClusterState, snapshotQuotaExceeded.
     */
    public func deleteDBCluster(
            input: RDSModel.DeleteDBClusterMessage) -> EventLoopFuture<RDSModel.DeleteDBClusterResultForDeleteDBCluster> {
        if let deleteDBClusterEventLoopFutureAsyncOverride = deleteDBClusterEventLoopFutureAsyncOverride {
            return deleteDBClusterEventLoopFutureAsyncOverride(input)
        }

        let result = DeleteDBClusterResultForDeleteDBCluster.__default
        
        let promise = self.eventLoop.makePromise(of: DeleteDBClusterResultForDeleteDBCluster.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DeleteDBClusterEndpoint operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteDBClusterEndpointMessage object being passed to this operation.
     - Returns: A future to the DBClusterEndpointForDeleteDBClusterEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterEndpointNotFound, invalidDBClusterEndpointState, invalidDBClusterState.
     */
    public func deleteDBClusterEndpoint(
            input: RDSModel.DeleteDBClusterEndpointMessage) -> EventLoopFuture<RDSModel.DBClusterEndpointForDeleteDBClusterEndpoint> {
        if let deleteDBClusterEndpointEventLoopFutureAsyncOverride = deleteDBClusterEndpointEventLoopFutureAsyncOverride {
            return deleteDBClusterEndpointEventLoopFutureAsyncOverride(input)
        }

        let result = DBClusterEndpointForDeleteDBClusterEndpoint.__default
        
        let promise = self.eventLoop.makePromise(of: DBClusterEndpointForDeleteDBClusterEndpoint.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DeleteDBClusterParameterGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteDBClusterParameterGroupMessage object being passed to this operation.
           The possible errors are: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    public func deleteDBClusterParameterGroup(
            input: RDSModel.DeleteDBClusterParameterGroupMessage) -> EventLoopFuture<Void> {
        if let deleteDBClusterParameterGroupEventLoopFutureAsyncOverride = deleteDBClusterParameterGroupEventLoopFutureAsyncOverride {
            return deleteDBClusterParameterGroupEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the DeleteDBClusterSnapshot operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteDBClusterSnapshotMessage object being passed to this operation.
     - Returns: A future to the DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterSnapshotNotFound, invalidDBClusterSnapshotState.
     */
    public func deleteDBClusterSnapshot(
            input: RDSModel.DeleteDBClusterSnapshotMessage) -> EventLoopFuture<RDSModel.DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot> {
        if let deleteDBClusterSnapshotEventLoopFutureAsyncOverride = deleteDBClusterSnapshotEventLoopFutureAsyncOverride {
            return deleteDBClusterSnapshotEventLoopFutureAsyncOverride(input)
        }

        let result = DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot.__default
        
        let promise = self.eventLoop.makePromise(of: DeleteDBClusterSnapshotResultForDeleteDBClusterSnapshot.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DeleteDBInstance operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteDBInstanceMessage object being passed to this operation.
     - Returns: A future to the DeleteDBInstanceResultForDeleteDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBInstanceAutomatedBackupQuotaExceeded, dBInstanceNotFound, dBSnapshotAlreadyExists, invalidDBClusterState, invalidDBInstanceState, snapshotQuotaExceeded.
     */
    public func deleteDBInstance(
            input: RDSModel.DeleteDBInstanceMessage) -> EventLoopFuture<RDSModel.DeleteDBInstanceResultForDeleteDBInstance> {
        if let deleteDBInstanceEventLoopFutureAsyncOverride = deleteDBInstanceEventLoopFutureAsyncOverride {
            return deleteDBInstanceEventLoopFutureAsyncOverride(input)
        }

        let result = DeleteDBInstanceResultForDeleteDBInstance.__default
        
        let promise = self.eventLoop.makePromise(of: DeleteDBInstanceResultForDeleteDBInstance.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DeleteDBInstanceAutomatedBackup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteDBInstanceAutomatedBackupMessage object being passed to this operation.
     - Returns: A future to the DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBInstanceAutomatedBackupNotFound, invalidDBInstanceAutomatedBackupState.
     */
    public func deleteDBInstanceAutomatedBackup(
            input: RDSModel.DeleteDBInstanceAutomatedBackupMessage) -> EventLoopFuture<RDSModel.DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup> {
        if let deleteDBInstanceAutomatedBackupEventLoopFutureAsyncOverride = deleteDBInstanceAutomatedBackupEventLoopFutureAsyncOverride {
            return deleteDBInstanceAutomatedBackupEventLoopFutureAsyncOverride(input)
        }

        let result = DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup.__default
        
        let promise = self.eventLoop.makePromise(of: DeleteDBInstanceAutomatedBackupResultForDeleteDBInstanceAutomatedBackup.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DeleteDBParameterGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteDBParameterGroupMessage object being passed to this operation.
           The possible errors are: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    public func deleteDBParameterGroup(
            input: RDSModel.DeleteDBParameterGroupMessage) -> EventLoopFuture<Void> {
        if let deleteDBParameterGroupEventLoopFutureAsyncOverride = deleteDBParameterGroupEventLoopFutureAsyncOverride {
            return deleteDBParameterGroupEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the DeleteDBProxy operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteDBProxyRequest object being passed to this operation.
     - Returns: A future to the DeleteDBProxyResponseForDeleteDBProxy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBProxyNotFound, invalidDBProxyState.
     */
    public func deleteDBProxy(
            input: RDSModel.DeleteDBProxyRequest) -> EventLoopFuture<RDSModel.DeleteDBProxyResponseForDeleteDBProxy> {
        if let deleteDBProxyEventLoopFutureAsyncOverride = deleteDBProxyEventLoopFutureAsyncOverride {
            return deleteDBProxyEventLoopFutureAsyncOverride(input)
        }

        let result = DeleteDBProxyResponseForDeleteDBProxy.__default
        
        let promise = self.eventLoop.makePromise(of: DeleteDBProxyResponseForDeleteDBProxy.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DeleteDBProxyEndpoint operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteDBProxyEndpointRequest object being passed to this operation.
     - Returns: A future to the DeleteDBProxyEndpointResponseForDeleteDBProxyEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBProxyEndpointNotFound, invalidDBProxyEndpointState.
     */
    public func deleteDBProxyEndpoint(
            input: RDSModel.DeleteDBProxyEndpointRequest) -> EventLoopFuture<RDSModel.DeleteDBProxyEndpointResponseForDeleteDBProxyEndpoint> {
        if let deleteDBProxyEndpointEventLoopFutureAsyncOverride = deleteDBProxyEndpointEventLoopFutureAsyncOverride {
            return deleteDBProxyEndpointEventLoopFutureAsyncOverride(input)
        }

        let result = DeleteDBProxyEndpointResponseForDeleteDBProxyEndpoint.__default
        
        let promise = self.eventLoop.makePromise(of: DeleteDBProxyEndpointResponseForDeleteDBProxyEndpoint.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DeleteDBSecurityGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteDBSecurityGroupMessage object being passed to this operation.
           The possible errors are: dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    public func deleteDBSecurityGroup(
            input: RDSModel.DeleteDBSecurityGroupMessage) -> EventLoopFuture<Void> {
        if let deleteDBSecurityGroupEventLoopFutureAsyncOverride = deleteDBSecurityGroupEventLoopFutureAsyncOverride {
            return deleteDBSecurityGroupEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the DeleteDBSnapshot operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteDBSnapshotMessage object being passed to this operation.
     - Returns: A future to the DeleteDBSnapshotResultForDeleteDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBSnapshotNotFound, invalidDBSnapshotState.
     */
    public func deleteDBSnapshot(
            input: RDSModel.DeleteDBSnapshotMessage) -> EventLoopFuture<RDSModel.DeleteDBSnapshotResultForDeleteDBSnapshot> {
        if let deleteDBSnapshotEventLoopFutureAsyncOverride = deleteDBSnapshotEventLoopFutureAsyncOverride {
            return deleteDBSnapshotEventLoopFutureAsyncOverride(input)
        }

        let result = DeleteDBSnapshotResultForDeleteDBSnapshot.__default
        
        let promise = self.eventLoop.makePromise(of: DeleteDBSnapshotResultForDeleteDBSnapshot.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DeleteDBSubnetGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteDBSubnetGroupMessage object being passed to this operation.
           The possible errors are: dBSubnetGroupNotFound, invalidDBSubnetGroupState, invalidDBSubnetState.
     */
    public func deleteDBSubnetGroup(
            input: RDSModel.DeleteDBSubnetGroupMessage) -> EventLoopFuture<Void> {
        if let deleteDBSubnetGroupEventLoopFutureAsyncOverride = deleteDBSubnetGroupEventLoopFutureAsyncOverride {
            return deleteDBSubnetGroupEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the DeleteEventSubscription operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteEventSubscriptionMessage object being passed to this operation.
     - Returns: A future to the DeleteEventSubscriptionResultForDeleteEventSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidEventSubscriptionState, subscriptionNotFound.
     */
    public func deleteEventSubscription(
            input: RDSModel.DeleteEventSubscriptionMessage) -> EventLoopFuture<RDSModel.DeleteEventSubscriptionResultForDeleteEventSubscription> {
        if let deleteEventSubscriptionEventLoopFutureAsyncOverride = deleteEventSubscriptionEventLoopFutureAsyncOverride {
            return deleteEventSubscriptionEventLoopFutureAsyncOverride(input)
        }

        let result = DeleteEventSubscriptionResultForDeleteEventSubscription.__default
        
        let promise = self.eventLoop.makePromise(of: DeleteEventSubscriptionResultForDeleteEventSubscription.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DeleteGlobalCluster operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteGlobalClusterMessage object being passed to this operation.
     - Returns: A future to the DeleteGlobalClusterResultForDeleteGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: globalClusterNotFound, invalidGlobalClusterState.
     */
    public func deleteGlobalCluster(
            input: RDSModel.DeleteGlobalClusterMessage) -> EventLoopFuture<RDSModel.DeleteGlobalClusterResultForDeleteGlobalCluster> {
        if let deleteGlobalClusterEventLoopFutureAsyncOverride = deleteGlobalClusterEventLoopFutureAsyncOverride {
            return deleteGlobalClusterEventLoopFutureAsyncOverride(input)
        }

        let result = DeleteGlobalClusterResultForDeleteGlobalCluster.__default
        
        let promise = self.eventLoop.makePromise(of: DeleteGlobalClusterResultForDeleteGlobalCluster.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DeleteInstallationMedia operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteInstallationMediaMessage object being passed to this operation.
     - Returns: A future to the InstallationMediaForDeleteInstallationMedia object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: installationMediaNotFound.
     */
    public func deleteInstallationMedia(
            input: RDSModel.DeleteInstallationMediaMessage) -> EventLoopFuture<RDSModel.InstallationMediaForDeleteInstallationMedia> {
        if let deleteInstallationMediaEventLoopFutureAsyncOverride = deleteInstallationMediaEventLoopFutureAsyncOverride {
            return deleteInstallationMediaEventLoopFutureAsyncOverride(input)
        }

        let result = InstallationMediaForDeleteInstallationMedia.__default
        
        let promise = self.eventLoop.makePromise(of: InstallationMediaForDeleteInstallationMedia.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DeleteOptionGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteOptionGroupMessage object being passed to this operation.
           The possible errors are: invalidOptionGroupState, optionGroupNotFound.
     */
    public func deleteOptionGroup(
            input: RDSModel.DeleteOptionGroupMessage) -> EventLoopFuture<Void> {
        if let deleteOptionGroupEventLoopFutureAsyncOverride = deleteOptionGroupEventLoopFutureAsyncOverride {
            return deleteOptionGroupEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the DeregisterDBProxyTargets operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeregisterDBProxyTargetsRequest object being passed to this operation.
     - Returns: A future to the DeregisterDBProxyTargetsResponseForDeregisterDBProxyTargets object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBProxyNotFound, dBProxyTargetGroupNotFound, dBProxyTargetNotFound, invalidDBProxyState.
     */
    public func deregisterDBProxyTargets(
            input: RDSModel.DeregisterDBProxyTargetsRequest) -> EventLoopFuture<RDSModel.DeregisterDBProxyTargetsResponseForDeregisterDBProxyTargets> {
        if let deregisterDBProxyTargetsEventLoopFutureAsyncOverride = deregisterDBProxyTargetsEventLoopFutureAsyncOverride {
            return deregisterDBProxyTargetsEventLoopFutureAsyncOverride(input)
        }

        let result = DeregisterDBProxyTargetsResponseForDeregisterDBProxyTargets.__default
        
        let promise = self.eventLoop.makePromise(of: DeregisterDBProxyTargetsResponseForDeregisterDBProxyTargets.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeAccountAttributes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeAccountAttributesMessage object being passed to this operation.
     - Returns: A future to the AccountAttributesMessageForDescribeAccountAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeAccountAttributes(
            input: RDSModel.DescribeAccountAttributesMessage) -> EventLoopFuture<RDSModel.AccountAttributesMessageForDescribeAccountAttributes> {
        if let describeAccountAttributesEventLoopFutureAsyncOverride = describeAccountAttributesEventLoopFutureAsyncOverride {
            return describeAccountAttributesEventLoopFutureAsyncOverride(input)
        }

        let result = AccountAttributesMessageForDescribeAccountAttributes.__default
        
        let promise = self.eventLoop.makePromise(of: AccountAttributesMessageForDescribeAccountAttributes.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeCertificates operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeCertificatesMessage object being passed to this operation.
     - Returns: A future to the CertificateMessageForDescribeCertificates object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: certificateNotFound.
     */
    public func describeCertificates(
            input: RDSModel.DescribeCertificatesMessage) -> EventLoopFuture<RDSModel.CertificateMessageForDescribeCertificates> {
        if let describeCertificatesEventLoopFutureAsyncOverride = describeCertificatesEventLoopFutureAsyncOverride {
            return describeCertificatesEventLoopFutureAsyncOverride(input)
        }

        let result = CertificateMessageForDescribeCertificates.__default
        
        let promise = self.eventLoop.makePromise(of: CertificateMessageForDescribeCertificates.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeCustomAvailabilityZones operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeCustomAvailabilityZonesMessage object being passed to this operation.
     - Returns: A future to the CustomAvailabilityZoneMessageForDescribeCustomAvailabilityZones object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: customAvailabilityZoneNotFound.
     */
    public func describeCustomAvailabilityZones(
            input: RDSModel.DescribeCustomAvailabilityZonesMessage) -> EventLoopFuture<RDSModel.CustomAvailabilityZoneMessageForDescribeCustomAvailabilityZones> {
        if let describeCustomAvailabilityZonesEventLoopFutureAsyncOverride = describeCustomAvailabilityZonesEventLoopFutureAsyncOverride {
            return describeCustomAvailabilityZonesEventLoopFutureAsyncOverride(input)
        }

        let result = CustomAvailabilityZoneMessageForDescribeCustomAvailabilityZones.__default
        
        let promise = self.eventLoop.makePromise(of: CustomAvailabilityZoneMessageForDescribeCustomAvailabilityZones.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeDBClusterBacktracks operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeDBClusterBacktracksMessage object being passed to this operation.
     - Returns: A future to the DBClusterBacktrackMessageForDescribeDBClusterBacktracks object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterBacktrackNotFound, dBClusterNotFound.
     */
    public func describeDBClusterBacktracks(
            input: RDSModel.DescribeDBClusterBacktracksMessage) -> EventLoopFuture<RDSModel.DBClusterBacktrackMessageForDescribeDBClusterBacktracks> {
        if let describeDBClusterBacktracksEventLoopFutureAsyncOverride = describeDBClusterBacktracksEventLoopFutureAsyncOverride {
            return describeDBClusterBacktracksEventLoopFutureAsyncOverride(input)
        }

        let result = DBClusterBacktrackMessageForDescribeDBClusterBacktracks.__default
        
        let promise = self.eventLoop.makePromise(of: DBClusterBacktrackMessageForDescribeDBClusterBacktracks.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeDBClusterEndpoints operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeDBClusterEndpointsMessage object being passed to this operation.
     - Returns: A future to the DBClusterEndpointMessageForDescribeDBClusterEndpoints object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound.
     */
    public func describeDBClusterEndpoints(
            input: RDSModel.DescribeDBClusterEndpointsMessage) -> EventLoopFuture<RDSModel.DBClusterEndpointMessageForDescribeDBClusterEndpoints> {
        if let describeDBClusterEndpointsEventLoopFutureAsyncOverride = describeDBClusterEndpointsEventLoopFutureAsyncOverride {
            return describeDBClusterEndpointsEventLoopFutureAsyncOverride(input)
        }

        let result = DBClusterEndpointMessageForDescribeDBClusterEndpoints.__default
        
        let promise = self.eventLoop.makePromise(of: DBClusterEndpointMessageForDescribeDBClusterEndpoints.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeDBClusterParameterGroups operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeDBClusterParameterGroupsMessage object being passed to this operation.
     - Returns: A future to the DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound.
     */
    public func describeDBClusterParameterGroups(
            input: RDSModel.DescribeDBClusterParameterGroupsMessage) -> EventLoopFuture<RDSModel.DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups> {
        if let describeDBClusterParameterGroupsEventLoopFutureAsyncOverride = describeDBClusterParameterGroupsEventLoopFutureAsyncOverride {
            return describeDBClusterParameterGroupsEventLoopFutureAsyncOverride(input)
        }

        let result = DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups.__default
        
        let promise = self.eventLoop.makePromise(of: DBClusterParameterGroupsMessageForDescribeDBClusterParameterGroups.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeDBClusterParameters operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeDBClusterParametersMessage object being passed to this operation.
     - Returns: A future to the DBClusterParameterGroupDetailsForDescribeDBClusterParameters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound.
     */
    public func describeDBClusterParameters(
            input: RDSModel.DescribeDBClusterParametersMessage) -> EventLoopFuture<RDSModel.DBClusterParameterGroupDetailsForDescribeDBClusterParameters> {
        if let describeDBClusterParametersEventLoopFutureAsyncOverride = describeDBClusterParametersEventLoopFutureAsyncOverride {
            return describeDBClusterParametersEventLoopFutureAsyncOverride(input)
        }

        let result = DBClusterParameterGroupDetailsForDescribeDBClusterParameters.__default
        
        let promise = self.eventLoop.makePromise(of: DBClusterParameterGroupDetailsForDescribeDBClusterParameters.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeDBClusterSnapshotAttributes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeDBClusterSnapshotAttributesMessage object being passed to this operation.
     - Returns: A future to the DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterSnapshotNotFound.
     */
    public func describeDBClusterSnapshotAttributes(
            input: RDSModel.DescribeDBClusterSnapshotAttributesMessage) -> EventLoopFuture<RDSModel.DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes> {
        if let describeDBClusterSnapshotAttributesEventLoopFutureAsyncOverride = describeDBClusterSnapshotAttributesEventLoopFutureAsyncOverride {
            return describeDBClusterSnapshotAttributesEventLoopFutureAsyncOverride(input)
        }

        let result = DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes.__default
        
        let promise = self.eventLoop.makePromise(of: DescribeDBClusterSnapshotAttributesResultForDescribeDBClusterSnapshotAttributes.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeDBClusterSnapshots operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeDBClusterSnapshotsMessage object being passed to this operation.
     - Returns: A future to the DBClusterSnapshotMessageForDescribeDBClusterSnapshots object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterSnapshotNotFound.
     */
    public func describeDBClusterSnapshots(
            input: RDSModel.DescribeDBClusterSnapshotsMessage) -> EventLoopFuture<RDSModel.DBClusterSnapshotMessageForDescribeDBClusterSnapshots> {
        if let describeDBClusterSnapshotsEventLoopFutureAsyncOverride = describeDBClusterSnapshotsEventLoopFutureAsyncOverride {
            return describeDBClusterSnapshotsEventLoopFutureAsyncOverride(input)
        }

        let result = DBClusterSnapshotMessageForDescribeDBClusterSnapshots.__default
        
        let promise = self.eventLoop.makePromise(of: DBClusterSnapshotMessageForDescribeDBClusterSnapshots.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeDBClusters operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeDBClustersMessage object being passed to this operation.
     - Returns: A future to the DBClusterMessageForDescribeDBClusters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound.
     */
    public func describeDBClusters(
            input: RDSModel.DescribeDBClustersMessage) -> EventLoopFuture<RDSModel.DBClusterMessageForDescribeDBClusters> {
        if let describeDBClustersEventLoopFutureAsyncOverride = describeDBClustersEventLoopFutureAsyncOverride {
            return describeDBClustersEventLoopFutureAsyncOverride(input)
        }

        let result = DBClusterMessageForDescribeDBClusters.__default
        
        let promise = self.eventLoop.makePromise(of: DBClusterMessageForDescribeDBClusters.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeDBEngineVersions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeDBEngineVersionsMessage object being passed to this operation.
     - Returns: A future to the DBEngineVersionMessageForDescribeDBEngineVersions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeDBEngineVersions(
            input: RDSModel.DescribeDBEngineVersionsMessage) -> EventLoopFuture<RDSModel.DBEngineVersionMessageForDescribeDBEngineVersions> {
        if let describeDBEngineVersionsEventLoopFutureAsyncOverride = describeDBEngineVersionsEventLoopFutureAsyncOverride {
            return describeDBEngineVersionsEventLoopFutureAsyncOverride(input)
        }

        let result = DBEngineVersionMessageForDescribeDBEngineVersions.__default
        
        let promise = self.eventLoop.makePromise(of: DBEngineVersionMessageForDescribeDBEngineVersions.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeDBInstanceAutomatedBackups operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeDBInstanceAutomatedBackupsMessage object being passed to this operation.
     - Returns: A future to the DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBInstanceAutomatedBackupNotFound.
     */
    public func describeDBInstanceAutomatedBackups(
            input: RDSModel.DescribeDBInstanceAutomatedBackupsMessage) -> EventLoopFuture<RDSModel.DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups> {
        if let describeDBInstanceAutomatedBackupsEventLoopFutureAsyncOverride = describeDBInstanceAutomatedBackupsEventLoopFutureAsyncOverride {
            return describeDBInstanceAutomatedBackupsEventLoopFutureAsyncOverride(input)
        }

        let result = DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups.__default
        
        let promise = self.eventLoop.makePromise(of: DBInstanceAutomatedBackupMessageForDescribeDBInstanceAutomatedBackups.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeDBInstances operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeDBInstancesMessage object being passed to this operation.
     - Returns: A future to the DBInstanceMessageForDescribeDBInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound.
     */
    public func describeDBInstances(
            input: RDSModel.DescribeDBInstancesMessage) -> EventLoopFuture<RDSModel.DBInstanceMessageForDescribeDBInstances> {
        if let describeDBInstancesEventLoopFutureAsyncOverride = describeDBInstancesEventLoopFutureAsyncOverride {
            return describeDBInstancesEventLoopFutureAsyncOverride(input)
        }

        let result = DBInstanceMessageForDescribeDBInstances.__default
        
        let promise = self.eventLoop.makePromise(of: DBInstanceMessageForDescribeDBInstances.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeDBLogFiles operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeDBLogFilesMessage object being passed to this operation.
     - Returns: A future to the DescribeDBLogFilesResponseForDescribeDBLogFiles object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound.
     */
    public func describeDBLogFiles(
            input: RDSModel.DescribeDBLogFilesMessage) -> EventLoopFuture<RDSModel.DescribeDBLogFilesResponseForDescribeDBLogFiles> {
        if let describeDBLogFilesEventLoopFutureAsyncOverride = describeDBLogFilesEventLoopFutureAsyncOverride {
            return describeDBLogFilesEventLoopFutureAsyncOverride(input)
        }

        let result = DescribeDBLogFilesResponseForDescribeDBLogFiles.__default
        
        let promise = self.eventLoop.makePromise(of: DescribeDBLogFilesResponseForDescribeDBLogFiles.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeDBParameterGroups operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeDBParameterGroupsMessage object being passed to this operation.
     - Returns: A future to the DBParameterGroupsMessageForDescribeDBParameterGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound.
     */
    public func describeDBParameterGroups(
            input: RDSModel.DescribeDBParameterGroupsMessage) -> EventLoopFuture<RDSModel.DBParameterGroupsMessageForDescribeDBParameterGroups> {
        if let describeDBParameterGroupsEventLoopFutureAsyncOverride = describeDBParameterGroupsEventLoopFutureAsyncOverride {
            return describeDBParameterGroupsEventLoopFutureAsyncOverride(input)
        }

        let result = DBParameterGroupsMessageForDescribeDBParameterGroups.__default
        
        let promise = self.eventLoop.makePromise(of: DBParameterGroupsMessageForDescribeDBParameterGroups.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeDBParameters operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeDBParametersMessage object being passed to this operation.
     - Returns: A future to the DBParameterGroupDetailsForDescribeDBParameters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound.
     */
    public func describeDBParameters(
            input: RDSModel.DescribeDBParametersMessage) -> EventLoopFuture<RDSModel.DBParameterGroupDetailsForDescribeDBParameters> {
        if let describeDBParametersEventLoopFutureAsyncOverride = describeDBParametersEventLoopFutureAsyncOverride {
            return describeDBParametersEventLoopFutureAsyncOverride(input)
        }

        let result = DBParameterGroupDetailsForDescribeDBParameters.__default
        
        let promise = self.eventLoop.makePromise(of: DBParameterGroupDetailsForDescribeDBParameters.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeDBProxies operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeDBProxiesRequest object being passed to this operation.
     - Returns: A future to the DescribeDBProxiesResponseForDescribeDBProxies object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBProxyNotFound.
     */
    public func describeDBProxies(
            input: RDSModel.DescribeDBProxiesRequest) -> EventLoopFuture<RDSModel.DescribeDBProxiesResponseForDescribeDBProxies> {
        if let describeDBProxiesEventLoopFutureAsyncOverride = describeDBProxiesEventLoopFutureAsyncOverride {
            return describeDBProxiesEventLoopFutureAsyncOverride(input)
        }

        let result = DescribeDBProxiesResponseForDescribeDBProxies.__default
        
        let promise = self.eventLoop.makePromise(of: DescribeDBProxiesResponseForDescribeDBProxies.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeDBProxyEndpoints operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeDBProxyEndpointsRequest object being passed to this operation.
     - Returns: A future to the DescribeDBProxyEndpointsResponseForDescribeDBProxyEndpoints object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBProxyEndpointNotFound, dBProxyNotFound.
     */
    public func describeDBProxyEndpoints(
            input: RDSModel.DescribeDBProxyEndpointsRequest) -> EventLoopFuture<RDSModel.DescribeDBProxyEndpointsResponseForDescribeDBProxyEndpoints> {
        if let describeDBProxyEndpointsEventLoopFutureAsyncOverride = describeDBProxyEndpointsEventLoopFutureAsyncOverride {
            return describeDBProxyEndpointsEventLoopFutureAsyncOverride(input)
        }

        let result = DescribeDBProxyEndpointsResponseForDescribeDBProxyEndpoints.__default
        
        let promise = self.eventLoop.makePromise(of: DescribeDBProxyEndpointsResponseForDescribeDBProxyEndpoints.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeDBProxyTargetGroups operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeDBProxyTargetGroupsRequest object being passed to this operation.
     - Returns: A future to the DescribeDBProxyTargetGroupsResponseForDescribeDBProxyTargetGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBProxyNotFound, dBProxyTargetGroupNotFound, invalidDBProxyState.
     */
    public func describeDBProxyTargetGroups(
            input: RDSModel.DescribeDBProxyTargetGroupsRequest) -> EventLoopFuture<RDSModel.DescribeDBProxyTargetGroupsResponseForDescribeDBProxyTargetGroups> {
        if let describeDBProxyTargetGroupsEventLoopFutureAsyncOverride = describeDBProxyTargetGroupsEventLoopFutureAsyncOverride {
            return describeDBProxyTargetGroupsEventLoopFutureAsyncOverride(input)
        }

        let result = DescribeDBProxyTargetGroupsResponseForDescribeDBProxyTargetGroups.__default
        
        let promise = self.eventLoop.makePromise(of: DescribeDBProxyTargetGroupsResponseForDescribeDBProxyTargetGroups.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeDBProxyTargets operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeDBProxyTargetsRequest object being passed to this operation.
     - Returns: A future to the DescribeDBProxyTargetsResponseForDescribeDBProxyTargets object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBProxyNotFound, dBProxyTargetGroupNotFound, dBProxyTargetNotFound, invalidDBProxyState.
     */
    public func describeDBProxyTargets(
            input: RDSModel.DescribeDBProxyTargetsRequest) -> EventLoopFuture<RDSModel.DescribeDBProxyTargetsResponseForDescribeDBProxyTargets> {
        if let describeDBProxyTargetsEventLoopFutureAsyncOverride = describeDBProxyTargetsEventLoopFutureAsyncOverride {
            return describeDBProxyTargetsEventLoopFutureAsyncOverride(input)
        }

        let result = DescribeDBProxyTargetsResponseForDescribeDBProxyTargets.__default
        
        let promise = self.eventLoop.makePromise(of: DescribeDBProxyTargetsResponseForDescribeDBProxyTargets.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeDBSecurityGroups operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeDBSecurityGroupsMessage object being passed to this operation.
     - Returns: A future to the DBSecurityGroupMessageForDescribeDBSecurityGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBSecurityGroupNotFound.
     */
    public func describeDBSecurityGroups(
            input: RDSModel.DescribeDBSecurityGroupsMessage) -> EventLoopFuture<RDSModel.DBSecurityGroupMessageForDescribeDBSecurityGroups> {
        if let describeDBSecurityGroupsEventLoopFutureAsyncOverride = describeDBSecurityGroupsEventLoopFutureAsyncOverride {
            return describeDBSecurityGroupsEventLoopFutureAsyncOverride(input)
        }

        let result = DBSecurityGroupMessageForDescribeDBSecurityGroups.__default
        
        let promise = self.eventLoop.makePromise(of: DBSecurityGroupMessageForDescribeDBSecurityGroups.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeDBSnapshotAttributes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeDBSnapshotAttributesMessage object being passed to this operation.
     - Returns: A future to the DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBSnapshotNotFound.
     */
    public func describeDBSnapshotAttributes(
            input: RDSModel.DescribeDBSnapshotAttributesMessage) -> EventLoopFuture<RDSModel.DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes> {
        if let describeDBSnapshotAttributesEventLoopFutureAsyncOverride = describeDBSnapshotAttributesEventLoopFutureAsyncOverride {
            return describeDBSnapshotAttributesEventLoopFutureAsyncOverride(input)
        }

        let result = DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes.__default
        
        let promise = self.eventLoop.makePromise(of: DescribeDBSnapshotAttributesResultForDescribeDBSnapshotAttributes.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeDBSnapshots operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeDBSnapshotsMessage object being passed to this operation.
     - Returns: A future to the DBSnapshotMessageForDescribeDBSnapshots object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBSnapshotNotFound.
     */
    public func describeDBSnapshots(
            input: RDSModel.DescribeDBSnapshotsMessage) -> EventLoopFuture<RDSModel.DBSnapshotMessageForDescribeDBSnapshots> {
        if let describeDBSnapshotsEventLoopFutureAsyncOverride = describeDBSnapshotsEventLoopFutureAsyncOverride {
            return describeDBSnapshotsEventLoopFutureAsyncOverride(input)
        }

        let result = DBSnapshotMessageForDescribeDBSnapshots.__default
        
        let promise = self.eventLoop.makePromise(of: DBSnapshotMessageForDescribeDBSnapshots.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeDBSubnetGroups operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeDBSubnetGroupsMessage object being passed to this operation.
     - Returns: A future to the DBSubnetGroupMessageForDescribeDBSubnetGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBSubnetGroupNotFound.
     */
    public func describeDBSubnetGroups(
            input: RDSModel.DescribeDBSubnetGroupsMessage) -> EventLoopFuture<RDSModel.DBSubnetGroupMessageForDescribeDBSubnetGroups> {
        if let describeDBSubnetGroupsEventLoopFutureAsyncOverride = describeDBSubnetGroupsEventLoopFutureAsyncOverride {
            return describeDBSubnetGroupsEventLoopFutureAsyncOverride(input)
        }

        let result = DBSubnetGroupMessageForDescribeDBSubnetGroups.__default
        
        let promise = self.eventLoop.makePromise(of: DBSubnetGroupMessageForDescribeDBSubnetGroups.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeEngineDefaultClusterParameters operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeEngineDefaultClusterParametersMessage object being passed to this operation.
     - Returns: A future to the DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeEngineDefaultClusterParameters(
            input: RDSModel.DescribeEngineDefaultClusterParametersMessage) -> EventLoopFuture<RDSModel.DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters> {
        if let describeEngineDefaultClusterParametersEventLoopFutureAsyncOverride = describeEngineDefaultClusterParametersEventLoopFutureAsyncOverride {
            return describeEngineDefaultClusterParametersEventLoopFutureAsyncOverride(input)
        }

        let result = DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters.__default
        
        let promise = self.eventLoop.makePromise(of: DescribeEngineDefaultClusterParametersResultForDescribeEngineDefaultClusterParameters.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeEngineDefaultParameters operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeEngineDefaultParametersMessage object being passed to this operation.
     - Returns: A future to the DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeEngineDefaultParameters(
            input: RDSModel.DescribeEngineDefaultParametersMessage) -> EventLoopFuture<RDSModel.DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters> {
        if let describeEngineDefaultParametersEventLoopFutureAsyncOverride = describeEngineDefaultParametersEventLoopFutureAsyncOverride {
            return describeEngineDefaultParametersEventLoopFutureAsyncOverride(input)
        }

        let result = DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters.__default
        
        let promise = self.eventLoop.makePromise(of: DescribeEngineDefaultParametersResultForDescribeEngineDefaultParameters.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeEventCategories operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeEventCategoriesMessage object being passed to this operation.
     - Returns: A future to the EventCategoriesMessageForDescribeEventCategories object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeEventCategories(
            input: RDSModel.DescribeEventCategoriesMessage) -> EventLoopFuture<RDSModel.EventCategoriesMessageForDescribeEventCategories> {
        if let describeEventCategoriesEventLoopFutureAsyncOverride = describeEventCategoriesEventLoopFutureAsyncOverride {
            return describeEventCategoriesEventLoopFutureAsyncOverride(input)
        }

        let result = EventCategoriesMessageForDescribeEventCategories.__default
        
        let promise = self.eventLoop.makePromise(of: EventCategoriesMessageForDescribeEventCategories.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeEventSubscriptions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeEventSubscriptionsMessage object being passed to this operation.
     - Returns: A future to the EventSubscriptionsMessageForDescribeEventSubscriptions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: subscriptionNotFound.
     */
    public func describeEventSubscriptions(
            input: RDSModel.DescribeEventSubscriptionsMessage) -> EventLoopFuture<RDSModel.EventSubscriptionsMessageForDescribeEventSubscriptions> {
        if let describeEventSubscriptionsEventLoopFutureAsyncOverride = describeEventSubscriptionsEventLoopFutureAsyncOverride {
            return describeEventSubscriptionsEventLoopFutureAsyncOverride(input)
        }

        let result = EventSubscriptionsMessageForDescribeEventSubscriptions.__default
        
        let promise = self.eventLoop.makePromise(of: EventSubscriptionsMessageForDescribeEventSubscriptions.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeEvents operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeEventsMessage object being passed to this operation.
     - Returns: A future to the EventsMessageForDescribeEvents object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeEvents(
            input: RDSModel.DescribeEventsMessage) -> EventLoopFuture<RDSModel.EventsMessageForDescribeEvents> {
        if let describeEventsEventLoopFutureAsyncOverride = describeEventsEventLoopFutureAsyncOverride {
            return describeEventsEventLoopFutureAsyncOverride(input)
        }

        let result = EventsMessageForDescribeEvents.__default
        
        let promise = self.eventLoop.makePromise(of: EventsMessageForDescribeEvents.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeExportTasks operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeExportTasksMessage object being passed to this operation.
     - Returns: A future to the ExportTasksMessageForDescribeExportTasks object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: exportTaskNotFound.
     */
    public func describeExportTasks(
            input: RDSModel.DescribeExportTasksMessage) -> EventLoopFuture<RDSModel.ExportTasksMessageForDescribeExportTasks> {
        if let describeExportTasksEventLoopFutureAsyncOverride = describeExportTasksEventLoopFutureAsyncOverride {
            return describeExportTasksEventLoopFutureAsyncOverride(input)
        }

        let result = ExportTasksMessageForDescribeExportTasks.__default
        
        let promise = self.eventLoop.makePromise(of: ExportTasksMessageForDescribeExportTasks.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeGlobalClusters operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeGlobalClustersMessage object being passed to this operation.
     - Returns: A future to the GlobalClustersMessageForDescribeGlobalClusters object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: globalClusterNotFound.
     */
    public func describeGlobalClusters(
            input: RDSModel.DescribeGlobalClustersMessage) -> EventLoopFuture<RDSModel.GlobalClustersMessageForDescribeGlobalClusters> {
        if let describeGlobalClustersEventLoopFutureAsyncOverride = describeGlobalClustersEventLoopFutureAsyncOverride {
            return describeGlobalClustersEventLoopFutureAsyncOverride(input)
        }

        let result = GlobalClustersMessageForDescribeGlobalClusters.__default
        
        let promise = self.eventLoop.makePromise(of: GlobalClustersMessageForDescribeGlobalClusters.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeInstallationMedia operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeInstallationMediaMessage object being passed to this operation.
     - Returns: A future to the InstallationMediaMessageForDescribeInstallationMedia object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: installationMediaNotFound.
     */
    public func describeInstallationMedia(
            input: RDSModel.DescribeInstallationMediaMessage) -> EventLoopFuture<RDSModel.InstallationMediaMessageForDescribeInstallationMedia> {
        if let describeInstallationMediaEventLoopFutureAsyncOverride = describeInstallationMediaEventLoopFutureAsyncOverride {
            return describeInstallationMediaEventLoopFutureAsyncOverride(input)
        }

        let result = InstallationMediaMessageForDescribeInstallationMedia.__default
        
        let promise = self.eventLoop.makePromise(of: InstallationMediaMessageForDescribeInstallationMedia.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeOptionGroupOptions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeOptionGroupOptionsMessage object being passed to this operation.
     - Returns: A future to the OptionGroupOptionsMessageForDescribeOptionGroupOptions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeOptionGroupOptions(
            input: RDSModel.DescribeOptionGroupOptionsMessage) -> EventLoopFuture<RDSModel.OptionGroupOptionsMessageForDescribeOptionGroupOptions> {
        if let describeOptionGroupOptionsEventLoopFutureAsyncOverride = describeOptionGroupOptionsEventLoopFutureAsyncOverride {
            return describeOptionGroupOptionsEventLoopFutureAsyncOverride(input)
        }

        let result = OptionGroupOptionsMessageForDescribeOptionGroupOptions.__default
        
        let promise = self.eventLoop.makePromise(of: OptionGroupOptionsMessageForDescribeOptionGroupOptions.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeOptionGroups operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeOptionGroupsMessage object being passed to this operation.
     - Returns: A future to the OptionGroupsForDescribeOptionGroups object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: optionGroupNotFound.
     */
    public func describeOptionGroups(
            input: RDSModel.DescribeOptionGroupsMessage) -> EventLoopFuture<RDSModel.OptionGroupsForDescribeOptionGroups> {
        if let describeOptionGroupsEventLoopFutureAsyncOverride = describeOptionGroupsEventLoopFutureAsyncOverride {
            return describeOptionGroupsEventLoopFutureAsyncOverride(input)
        }

        let result = OptionGroupsForDescribeOptionGroups.__default
        
        let promise = self.eventLoop.makePromise(of: OptionGroupsForDescribeOptionGroups.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeOrderableDBInstanceOptions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeOrderableDBInstanceOptionsMessage object being passed to this operation.
     - Returns: A future to the OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeOrderableDBInstanceOptions(
            input: RDSModel.DescribeOrderableDBInstanceOptionsMessage) -> EventLoopFuture<RDSModel.OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions> {
        if let describeOrderableDBInstanceOptionsEventLoopFutureAsyncOverride = describeOrderableDBInstanceOptionsEventLoopFutureAsyncOverride {
            return describeOrderableDBInstanceOptionsEventLoopFutureAsyncOverride(input)
        }

        let result = OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions.__default
        
        let promise = self.eventLoop.makePromise(of: OrderableDBInstanceOptionsMessageForDescribeOrderableDBInstanceOptions.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribePendingMaintenanceActions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribePendingMaintenanceActionsMessage object being passed to this operation.
     - Returns: A future to the PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: resourceNotFound.
     */
    public func describePendingMaintenanceActions(
            input: RDSModel.DescribePendingMaintenanceActionsMessage) -> EventLoopFuture<RDSModel.PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions> {
        if let describePendingMaintenanceActionsEventLoopFutureAsyncOverride = describePendingMaintenanceActionsEventLoopFutureAsyncOverride {
            return describePendingMaintenanceActionsEventLoopFutureAsyncOverride(input)
        }

        let result = PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions.__default
        
        let promise = self.eventLoop.makePromise(of: PendingMaintenanceActionsMessageForDescribePendingMaintenanceActions.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeReservedDBInstances operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeReservedDBInstancesMessage object being passed to this operation.
     - Returns: A future to the ReservedDBInstanceMessageForDescribeReservedDBInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: reservedDBInstanceNotFound.
     */
    public func describeReservedDBInstances(
            input: RDSModel.DescribeReservedDBInstancesMessage) -> EventLoopFuture<RDSModel.ReservedDBInstanceMessageForDescribeReservedDBInstances> {
        if let describeReservedDBInstancesEventLoopFutureAsyncOverride = describeReservedDBInstancesEventLoopFutureAsyncOverride {
            return describeReservedDBInstancesEventLoopFutureAsyncOverride(input)
        }

        let result = ReservedDBInstanceMessageForDescribeReservedDBInstances.__default
        
        let promise = self.eventLoop.makePromise(of: ReservedDBInstanceMessageForDescribeReservedDBInstances.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeReservedDBInstancesOfferings operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeReservedDBInstancesOfferingsMessage object being passed to this operation.
     - Returns: A future to the ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: reservedDBInstancesOfferingNotFound.
     */
    public func describeReservedDBInstancesOfferings(
            input: RDSModel.DescribeReservedDBInstancesOfferingsMessage) -> EventLoopFuture<RDSModel.ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings> {
        if let describeReservedDBInstancesOfferingsEventLoopFutureAsyncOverride = describeReservedDBInstancesOfferingsEventLoopFutureAsyncOverride {
            return describeReservedDBInstancesOfferingsEventLoopFutureAsyncOverride(input)
        }

        let result = ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings.__default
        
        let promise = self.eventLoop.makePromise(of: ReservedDBInstancesOfferingMessageForDescribeReservedDBInstancesOfferings.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeSourceRegions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeSourceRegionsMessage object being passed to this operation.
     - Returns: A future to the SourceRegionMessageForDescribeSourceRegions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeSourceRegions(
            input: RDSModel.DescribeSourceRegionsMessage) -> EventLoopFuture<RDSModel.SourceRegionMessageForDescribeSourceRegions> {
        if let describeSourceRegionsEventLoopFutureAsyncOverride = describeSourceRegionsEventLoopFutureAsyncOverride {
            return describeSourceRegionsEventLoopFutureAsyncOverride(input)
        }

        let result = SourceRegionMessageForDescribeSourceRegions.__default
        
        let promise = self.eventLoop.makePromise(of: SourceRegionMessageForDescribeSourceRegions.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeValidDBInstanceModifications operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeValidDBInstanceModificationsMessage object being passed to this operation.
     - Returns: A future to the DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound, invalidDBInstanceState.
     */
    public func describeValidDBInstanceModifications(
            input: RDSModel.DescribeValidDBInstanceModificationsMessage) -> EventLoopFuture<RDSModel.DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications> {
        if let describeValidDBInstanceModificationsEventLoopFutureAsyncOverride = describeValidDBInstanceModificationsEventLoopFutureAsyncOverride {
            return describeValidDBInstanceModificationsEventLoopFutureAsyncOverride(input)
        }

        let result = DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications.__default
        
        let promise = self.eventLoop.makePromise(of: DescribeValidDBInstanceModificationsResultForDescribeValidDBInstanceModifications.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the DownloadDBLogFilePortion operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DownloadDBLogFilePortionMessage object being passed to this operation.
     - Returns: A future to the DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound, dBLogFileNotFound.
     */
    public func downloadDBLogFilePortion(
            input: RDSModel.DownloadDBLogFilePortionMessage) -> EventLoopFuture<RDSModel.DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion> {
        if let downloadDBLogFilePortionEventLoopFutureAsyncOverride = downloadDBLogFilePortionEventLoopFutureAsyncOverride {
            return downloadDBLogFilePortionEventLoopFutureAsyncOverride(input)
        }

        let result = DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion.__default
        
        let promise = self.eventLoop.makePromise(of: DownloadDBLogFilePortionDetailsForDownloadDBLogFilePortion.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the FailoverDBCluster operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated FailoverDBClusterMessage object being passed to this operation.
     - Returns: A future to the FailoverDBClusterResultForFailoverDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    public func failoverDBCluster(
            input: RDSModel.FailoverDBClusterMessage) -> EventLoopFuture<RDSModel.FailoverDBClusterResultForFailoverDBCluster> {
        if let failoverDBClusterEventLoopFutureAsyncOverride = failoverDBClusterEventLoopFutureAsyncOverride {
            return failoverDBClusterEventLoopFutureAsyncOverride(input)
        }

        let result = FailoverDBClusterResultForFailoverDBCluster.__default
        
        let promise = self.eventLoop.makePromise(of: FailoverDBClusterResultForFailoverDBCluster.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the FailoverGlobalCluster operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated FailoverGlobalClusterMessage object being passed to this operation.
     - Returns: A future to the FailoverGlobalClusterResultForFailoverGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, globalClusterNotFound, invalidDBClusterState, invalidGlobalClusterState.
     */
    public func failoverGlobalCluster(
            input: RDSModel.FailoverGlobalClusterMessage) -> EventLoopFuture<RDSModel.FailoverGlobalClusterResultForFailoverGlobalCluster> {
        if let failoverGlobalClusterEventLoopFutureAsyncOverride = failoverGlobalClusterEventLoopFutureAsyncOverride {
            return failoverGlobalClusterEventLoopFutureAsyncOverride(input)
        }

        let result = FailoverGlobalClusterResultForFailoverGlobalCluster.__default
        
        let promise = self.eventLoop.makePromise(of: FailoverGlobalClusterResultForFailoverGlobalCluster.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the ImportInstallationMedia operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ImportInstallationMediaMessage object being passed to this operation.
     - Returns: A future to the InstallationMediaForImportInstallationMedia object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: customAvailabilityZoneNotFound, installationMediaAlreadyExists.
     */
    public func importInstallationMedia(
            input: RDSModel.ImportInstallationMediaMessage) -> EventLoopFuture<RDSModel.InstallationMediaForImportInstallationMedia> {
        if let importInstallationMediaEventLoopFutureAsyncOverride = importInstallationMediaEventLoopFutureAsyncOverride {
            return importInstallationMediaEventLoopFutureAsyncOverride(input)
        }

        let result = InstallationMediaForImportInstallationMedia.__default
        
        let promise = self.eventLoop.makePromise(of: InstallationMediaForImportInstallationMedia.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the ListTagsForResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListTagsForResourceMessage object being passed to this operation.
     - Returns: A future to the TagListMessageForListTagsForResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, dBInstanceNotFound, dBProxyNotFound, dBProxyTargetGroupNotFound, dBSnapshotNotFound.
     */
    public func listTagsForResource(
            input: RDSModel.ListTagsForResourceMessage) -> EventLoopFuture<RDSModel.TagListMessageForListTagsForResource> {
        if let listTagsForResourceEventLoopFutureAsyncOverride = listTagsForResourceEventLoopFutureAsyncOverride {
            return listTagsForResourceEventLoopFutureAsyncOverride(input)
        }

        let result = TagListMessageForListTagsForResource.__default
        
        let promise = self.eventLoop.makePromise(of: TagListMessageForListTagsForResource.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the ModifyCertificates operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyCertificatesMessage object being passed to this operation.
     - Returns: A future to the ModifyCertificatesResultForModifyCertificates object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: certificateNotFound.
     */
    public func modifyCertificates(
            input: RDSModel.ModifyCertificatesMessage) -> EventLoopFuture<RDSModel.ModifyCertificatesResultForModifyCertificates> {
        if let modifyCertificatesEventLoopFutureAsyncOverride = modifyCertificatesEventLoopFutureAsyncOverride {
            return modifyCertificatesEventLoopFutureAsyncOverride(input)
        }

        let result = ModifyCertificatesResultForModifyCertificates.__default
        
        let promise = self.eventLoop.makePromise(of: ModifyCertificatesResultForModifyCertificates.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the ModifyCurrentDBClusterCapacity operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyCurrentDBClusterCapacityMessage object being passed to this operation.
     - Returns: A future to the DBClusterCapacityInfoForModifyCurrentDBClusterCapacity object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, invalidDBClusterCapacity, invalidDBClusterState.
     */
    public func modifyCurrentDBClusterCapacity(
            input: RDSModel.ModifyCurrentDBClusterCapacityMessage) -> EventLoopFuture<RDSModel.DBClusterCapacityInfoForModifyCurrentDBClusterCapacity> {
        if let modifyCurrentDBClusterCapacityEventLoopFutureAsyncOverride = modifyCurrentDBClusterCapacityEventLoopFutureAsyncOverride {
            return modifyCurrentDBClusterCapacityEventLoopFutureAsyncOverride(input)
        }

        let result = DBClusterCapacityInfoForModifyCurrentDBClusterCapacity.__default
        
        let promise = self.eventLoop.makePromise(of: DBClusterCapacityInfoForModifyCurrentDBClusterCapacity.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the ModifyDBCluster operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyDBClusterMessage object being passed to this operation.
     - Returns: A future to the ModifyDBClusterResultForModifyDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBSubnetGroupNotFound, domainNotFound, invalidDBClusterState, invalidDBInstanceState, invalidDBSecurityGroupState, invalidDBSubnetGroupState, invalidSubnet, invalidVPCNetworkState, storageQuotaExceeded.
     */
    public func modifyDBCluster(
            input: RDSModel.ModifyDBClusterMessage) -> EventLoopFuture<RDSModel.ModifyDBClusterResultForModifyDBCluster> {
        if let modifyDBClusterEventLoopFutureAsyncOverride = modifyDBClusterEventLoopFutureAsyncOverride {
            return modifyDBClusterEventLoopFutureAsyncOverride(input)
        }

        let result = ModifyDBClusterResultForModifyDBCluster.__default
        
        let promise = self.eventLoop.makePromise(of: ModifyDBClusterResultForModifyDBCluster.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the ModifyDBClusterEndpoint operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyDBClusterEndpointMessage object being passed to this operation.
     - Returns: A future to the DBClusterEndpointForModifyDBClusterEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterEndpointNotFound, dBInstanceNotFound, invalidDBClusterEndpointState, invalidDBClusterState, invalidDBInstanceState.
     */
    public func modifyDBClusterEndpoint(
            input: RDSModel.ModifyDBClusterEndpointMessage) -> EventLoopFuture<RDSModel.DBClusterEndpointForModifyDBClusterEndpoint> {
        if let modifyDBClusterEndpointEventLoopFutureAsyncOverride = modifyDBClusterEndpointEventLoopFutureAsyncOverride {
            return modifyDBClusterEndpointEventLoopFutureAsyncOverride(input)
        }

        let result = DBClusterEndpointForModifyDBClusterEndpoint.__default
        
        let promise = self.eventLoop.makePromise(of: DBClusterEndpointForModifyDBClusterEndpoint.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the ModifyDBClusterParameterGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyDBClusterParameterGroupMessage object being passed to this operation.
     - Returns: A future to the DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    public func modifyDBClusterParameterGroup(
            input: RDSModel.ModifyDBClusterParameterGroupMessage) -> EventLoopFuture<RDSModel.DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup> {
        if let modifyDBClusterParameterGroupEventLoopFutureAsyncOverride = modifyDBClusterParameterGroupEventLoopFutureAsyncOverride {
            return modifyDBClusterParameterGroupEventLoopFutureAsyncOverride(input)
        }

        let result = DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup.__default
        
        let promise = self.eventLoop.makePromise(of: DBClusterParameterGroupNameMessageForModifyDBClusterParameterGroup.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the ModifyDBClusterSnapshotAttribute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyDBClusterSnapshotAttributeMessage object being passed to this operation.
     - Returns: A future to the ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterSnapshotNotFound, invalidDBClusterSnapshotState, sharedSnapshotQuotaExceeded.
     */
    public func modifyDBClusterSnapshotAttribute(
            input: RDSModel.ModifyDBClusterSnapshotAttributeMessage) -> EventLoopFuture<RDSModel.ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute> {
        if let modifyDBClusterSnapshotAttributeEventLoopFutureAsyncOverride = modifyDBClusterSnapshotAttributeEventLoopFutureAsyncOverride {
            return modifyDBClusterSnapshotAttributeEventLoopFutureAsyncOverride(input)
        }

        let result = ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute.__default
        
        let promise = self.eventLoop.makePromise(of: ModifyDBClusterSnapshotAttributeResultForModifyDBClusterSnapshotAttribute.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the ModifyDBInstance operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyDBInstanceMessage object being passed to this operation.
     - Returns: A future to the ModifyDBInstanceResultForModifyDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, backupPolicyNotFound, certificateNotFound, dBInstanceAlreadyExists, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBUpgradeDependencyFailure, domainNotFound, insufficientDBInstanceCapacity, invalidDBClusterState, invalidDBInstanceState, invalidDBSecurityGroupState, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func modifyDBInstance(
            input: RDSModel.ModifyDBInstanceMessage) -> EventLoopFuture<RDSModel.ModifyDBInstanceResultForModifyDBInstance> {
        if let modifyDBInstanceEventLoopFutureAsyncOverride = modifyDBInstanceEventLoopFutureAsyncOverride {
            return modifyDBInstanceEventLoopFutureAsyncOverride(input)
        }

        let result = ModifyDBInstanceResultForModifyDBInstance.__default
        
        let promise = self.eventLoop.makePromise(of: ModifyDBInstanceResultForModifyDBInstance.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the ModifyDBParameterGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyDBParameterGroupMessage object being passed to this operation.
     - Returns: A future to the DBParameterGroupNameMessageForModifyDBParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    public func modifyDBParameterGroup(
            input: RDSModel.ModifyDBParameterGroupMessage) -> EventLoopFuture<RDSModel.DBParameterGroupNameMessageForModifyDBParameterGroup> {
        if let modifyDBParameterGroupEventLoopFutureAsyncOverride = modifyDBParameterGroupEventLoopFutureAsyncOverride {
            return modifyDBParameterGroupEventLoopFutureAsyncOverride(input)
        }

        let result = DBParameterGroupNameMessageForModifyDBParameterGroup.__default
        
        let promise = self.eventLoop.makePromise(of: DBParameterGroupNameMessageForModifyDBParameterGroup.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the ModifyDBProxy operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyDBProxyRequest object being passed to this operation.
     - Returns: A future to the ModifyDBProxyResponseForModifyDBProxy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBProxyAlreadyExists, dBProxyNotFound, invalidDBProxyState.
     */
    public func modifyDBProxy(
            input: RDSModel.ModifyDBProxyRequest) -> EventLoopFuture<RDSModel.ModifyDBProxyResponseForModifyDBProxy> {
        if let modifyDBProxyEventLoopFutureAsyncOverride = modifyDBProxyEventLoopFutureAsyncOverride {
            return modifyDBProxyEventLoopFutureAsyncOverride(input)
        }

        let result = ModifyDBProxyResponseForModifyDBProxy.__default
        
        let promise = self.eventLoop.makePromise(of: ModifyDBProxyResponseForModifyDBProxy.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the ModifyDBProxyEndpoint operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyDBProxyEndpointRequest object being passed to this operation.
     - Returns: A future to the ModifyDBProxyEndpointResponseForModifyDBProxyEndpoint object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBProxyEndpointAlreadyExists, dBProxyEndpointNotFound, invalidDBProxyEndpointState, invalidDBProxyState.
     */
    public func modifyDBProxyEndpoint(
            input: RDSModel.ModifyDBProxyEndpointRequest) -> EventLoopFuture<RDSModel.ModifyDBProxyEndpointResponseForModifyDBProxyEndpoint> {
        if let modifyDBProxyEndpointEventLoopFutureAsyncOverride = modifyDBProxyEndpointEventLoopFutureAsyncOverride {
            return modifyDBProxyEndpointEventLoopFutureAsyncOverride(input)
        }

        let result = ModifyDBProxyEndpointResponseForModifyDBProxyEndpoint.__default
        
        let promise = self.eventLoop.makePromise(of: ModifyDBProxyEndpointResponseForModifyDBProxyEndpoint.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the ModifyDBProxyTargetGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyDBProxyTargetGroupRequest object being passed to this operation.
     - Returns: A future to the ModifyDBProxyTargetGroupResponseForModifyDBProxyTargetGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBProxyNotFound, dBProxyTargetGroupNotFound, invalidDBProxyState.
     */
    public func modifyDBProxyTargetGroup(
            input: RDSModel.ModifyDBProxyTargetGroupRequest) -> EventLoopFuture<RDSModel.ModifyDBProxyTargetGroupResponseForModifyDBProxyTargetGroup> {
        if let modifyDBProxyTargetGroupEventLoopFutureAsyncOverride = modifyDBProxyTargetGroupEventLoopFutureAsyncOverride {
            return modifyDBProxyTargetGroupEventLoopFutureAsyncOverride(input)
        }

        let result = ModifyDBProxyTargetGroupResponseForModifyDBProxyTargetGroup.__default
        
        let promise = self.eventLoop.makePromise(of: ModifyDBProxyTargetGroupResponseForModifyDBProxyTargetGroup.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the ModifyDBSnapshot operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyDBSnapshotMessage object being passed to this operation.
     - Returns: A future to the ModifyDBSnapshotResultForModifyDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBSnapshotNotFound.
     */
    public func modifyDBSnapshot(
            input: RDSModel.ModifyDBSnapshotMessage) -> EventLoopFuture<RDSModel.ModifyDBSnapshotResultForModifyDBSnapshot> {
        if let modifyDBSnapshotEventLoopFutureAsyncOverride = modifyDBSnapshotEventLoopFutureAsyncOverride {
            return modifyDBSnapshotEventLoopFutureAsyncOverride(input)
        }

        let result = ModifyDBSnapshotResultForModifyDBSnapshot.__default
        
        let promise = self.eventLoop.makePromise(of: ModifyDBSnapshotResultForModifyDBSnapshot.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the ModifyDBSnapshotAttribute operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyDBSnapshotAttributeMessage object being passed to this operation.
     - Returns: A future to the ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBSnapshotNotFound, invalidDBSnapshotState, sharedSnapshotQuotaExceeded.
     */
    public func modifyDBSnapshotAttribute(
            input: RDSModel.ModifyDBSnapshotAttributeMessage) -> EventLoopFuture<RDSModel.ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute> {
        if let modifyDBSnapshotAttributeEventLoopFutureAsyncOverride = modifyDBSnapshotAttributeEventLoopFutureAsyncOverride {
            return modifyDBSnapshotAttributeEventLoopFutureAsyncOverride(input)
        }

        let result = ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute.__default
        
        let promise = self.eventLoop.makePromise(of: ModifyDBSnapshotAttributeResultForModifyDBSnapshotAttribute.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the ModifyDBSubnetGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyDBSubnetGroupMessage object being passed to this operation.
     - Returns: A future to the ModifyDBSubnetGroupResultForModifyDBSubnetGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, dBSubnetQuotaExceeded, invalidSubnet, subnetAlreadyInUse.
     */
    public func modifyDBSubnetGroup(
            input: RDSModel.ModifyDBSubnetGroupMessage) -> EventLoopFuture<RDSModel.ModifyDBSubnetGroupResultForModifyDBSubnetGroup> {
        if let modifyDBSubnetGroupEventLoopFutureAsyncOverride = modifyDBSubnetGroupEventLoopFutureAsyncOverride {
            return modifyDBSubnetGroupEventLoopFutureAsyncOverride(input)
        }

        let result = ModifyDBSubnetGroupResultForModifyDBSubnetGroup.__default
        
        let promise = self.eventLoop.makePromise(of: ModifyDBSubnetGroupResultForModifyDBSubnetGroup.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the ModifyEventSubscription operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyEventSubscriptionMessage object being passed to this operation.
     - Returns: A future to the ModifyEventSubscriptionResultForModifyEventSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: eventSubscriptionQuotaExceeded, sNSInvalidTopic, sNSNoAuthorization, sNSTopicArnNotFound, subscriptionCategoryNotFound, subscriptionNotFound.
     */
    public func modifyEventSubscription(
            input: RDSModel.ModifyEventSubscriptionMessage) -> EventLoopFuture<RDSModel.ModifyEventSubscriptionResultForModifyEventSubscription> {
        if let modifyEventSubscriptionEventLoopFutureAsyncOverride = modifyEventSubscriptionEventLoopFutureAsyncOverride {
            return modifyEventSubscriptionEventLoopFutureAsyncOverride(input)
        }

        let result = ModifyEventSubscriptionResultForModifyEventSubscription.__default
        
        let promise = self.eventLoop.makePromise(of: ModifyEventSubscriptionResultForModifyEventSubscription.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the ModifyGlobalCluster operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyGlobalClusterMessage object being passed to this operation.
     - Returns: A future to the ModifyGlobalClusterResultForModifyGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: globalClusterNotFound, invalidDBClusterState, invalidDBInstanceState, invalidGlobalClusterState.
     */
    public func modifyGlobalCluster(
            input: RDSModel.ModifyGlobalClusterMessage) -> EventLoopFuture<RDSModel.ModifyGlobalClusterResultForModifyGlobalCluster> {
        if let modifyGlobalClusterEventLoopFutureAsyncOverride = modifyGlobalClusterEventLoopFutureAsyncOverride {
            return modifyGlobalClusterEventLoopFutureAsyncOverride(input)
        }

        let result = ModifyGlobalClusterResultForModifyGlobalCluster.__default
        
        let promise = self.eventLoop.makePromise(of: ModifyGlobalClusterResultForModifyGlobalCluster.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the ModifyOptionGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ModifyOptionGroupMessage object being passed to this operation.
     - Returns: A future to the ModifyOptionGroupResultForModifyOptionGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidOptionGroupState, optionGroupNotFound.
     */
    public func modifyOptionGroup(
            input: RDSModel.ModifyOptionGroupMessage) -> EventLoopFuture<RDSModel.ModifyOptionGroupResultForModifyOptionGroup> {
        if let modifyOptionGroupEventLoopFutureAsyncOverride = modifyOptionGroupEventLoopFutureAsyncOverride {
            return modifyOptionGroupEventLoopFutureAsyncOverride(input)
        }

        let result = ModifyOptionGroupResultForModifyOptionGroup.__default
        
        let promise = self.eventLoop.makePromise(of: ModifyOptionGroupResultForModifyOptionGroup.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the PromoteReadReplica operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PromoteReadReplicaMessage object being passed to this operation.
     - Returns: A future to the PromoteReadReplicaResultForPromoteReadReplica object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound, invalidDBInstanceState.
     */
    public func promoteReadReplica(
            input: RDSModel.PromoteReadReplicaMessage) -> EventLoopFuture<RDSModel.PromoteReadReplicaResultForPromoteReadReplica> {
        if let promoteReadReplicaEventLoopFutureAsyncOverride = promoteReadReplicaEventLoopFutureAsyncOverride {
            return promoteReadReplicaEventLoopFutureAsyncOverride(input)
        }

        let result = PromoteReadReplicaResultForPromoteReadReplica.__default
        
        let promise = self.eventLoop.makePromise(of: PromoteReadReplicaResultForPromoteReadReplica.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the PromoteReadReplicaDBCluster operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PromoteReadReplicaDBClusterMessage object being passed to this operation.
     - Returns: A future to the PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, invalidDBClusterState.
     */
    public func promoteReadReplicaDBCluster(
            input: RDSModel.PromoteReadReplicaDBClusterMessage) -> EventLoopFuture<RDSModel.PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster> {
        if let promoteReadReplicaDBClusterEventLoopFutureAsyncOverride = promoteReadReplicaDBClusterEventLoopFutureAsyncOverride {
            return promoteReadReplicaDBClusterEventLoopFutureAsyncOverride(input)
        }

        let result = PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster.__default
        
        let promise = self.eventLoop.makePromise(of: PromoteReadReplicaDBClusterResultForPromoteReadReplicaDBCluster.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the PurchaseReservedDBInstancesOffering operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PurchaseReservedDBInstancesOfferingMessage object being passed to this operation.
     - Returns: A future to the PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: reservedDBInstanceAlreadyExists, reservedDBInstanceQuotaExceeded, reservedDBInstancesOfferingNotFound.
     */
    public func purchaseReservedDBInstancesOffering(
            input: RDSModel.PurchaseReservedDBInstancesOfferingMessage) -> EventLoopFuture<RDSModel.PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering> {
        if let purchaseReservedDBInstancesOfferingEventLoopFutureAsyncOverride = purchaseReservedDBInstancesOfferingEventLoopFutureAsyncOverride {
            return purchaseReservedDBInstancesOfferingEventLoopFutureAsyncOverride(input)
        }

        let result = PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering.__default
        
        let promise = self.eventLoop.makePromise(of: PurchaseReservedDBInstancesOfferingResultForPurchaseReservedDBInstancesOffering.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the RebootDBInstance operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RebootDBInstanceMessage object being passed to this operation.
     - Returns: A future to the RebootDBInstanceResultForRebootDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound, invalidDBInstanceState.
     */
    public func rebootDBInstance(
            input: RDSModel.RebootDBInstanceMessage) -> EventLoopFuture<RDSModel.RebootDBInstanceResultForRebootDBInstance> {
        if let rebootDBInstanceEventLoopFutureAsyncOverride = rebootDBInstanceEventLoopFutureAsyncOverride {
            return rebootDBInstanceEventLoopFutureAsyncOverride(input)
        }

        let result = RebootDBInstanceResultForRebootDBInstance.__default
        
        let promise = self.eventLoop.makePromise(of: RebootDBInstanceResultForRebootDBInstance.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the RegisterDBProxyTargets operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RegisterDBProxyTargetsRequest object being passed to this operation.
     - Returns: A future to the RegisterDBProxyTargetsResponseForRegisterDBProxyTargets object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, dBInstanceNotFound, dBProxyNotFound, dBProxyTargetAlreadyRegistered, dBProxyTargetGroupNotFound, insufficientAvailableIPsInSubnet, invalidDBClusterState, invalidDBInstanceState, invalidDBProxyState.
     */
    public func registerDBProxyTargets(
            input: RDSModel.RegisterDBProxyTargetsRequest) -> EventLoopFuture<RDSModel.RegisterDBProxyTargetsResponseForRegisterDBProxyTargets> {
        if let registerDBProxyTargetsEventLoopFutureAsyncOverride = registerDBProxyTargetsEventLoopFutureAsyncOverride {
            return registerDBProxyTargetsEventLoopFutureAsyncOverride(input)
        }

        let result = RegisterDBProxyTargetsResponseForRegisterDBProxyTargets.__default
        
        let promise = self.eventLoop.makePromise(of: RegisterDBProxyTargetsResponseForRegisterDBProxyTargets.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the RemoveFromGlobalCluster operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RemoveFromGlobalClusterMessage object being passed to this operation.
     - Returns: A future to the RemoveFromGlobalClusterResultForRemoveFromGlobalCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, globalClusterNotFound, invalidGlobalClusterState.
     */
    public func removeFromGlobalCluster(
            input: RDSModel.RemoveFromGlobalClusterMessage) -> EventLoopFuture<RDSModel.RemoveFromGlobalClusterResultForRemoveFromGlobalCluster> {
        if let removeFromGlobalClusterEventLoopFutureAsyncOverride = removeFromGlobalClusterEventLoopFutureAsyncOverride {
            return removeFromGlobalClusterEventLoopFutureAsyncOverride(input)
        }

        let result = RemoveFromGlobalClusterResultForRemoveFromGlobalCluster.__default
        
        let promise = self.eventLoop.makePromise(of: RemoveFromGlobalClusterResultForRemoveFromGlobalCluster.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the RemoveRoleFromDBCluster operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RemoveRoleFromDBClusterMessage object being passed to this operation.
           The possible errors are: dBClusterNotFound, dBClusterRoleNotFound, invalidDBClusterState.
     */
    public func removeRoleFromDBCluster(
            input: RDSModel.RemoveRoleFromDBClusterMessage) -> EventLoopFuture<Void> {
        if let removeRoleFromDBClusterEventLoopFutureAsyncOverride = removeRoleFromDBClusterEventLoopFutureAsyncOverride {
            return removeRoleFromDBClusterEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the RemoveRoleFromDBInstance operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RemoveRoleFromDBInstanceMessage object being passed to this operation.
           The possible errors are: dBInstanceNotFound, dBInstanceRoleNotFound, invalidDBInstanceState.
     */
    public func removeRoleFromDBInstance(
            input: RDSModel.RemoveRoleFromDBInstanceMessage) -> EventLoopFuture<Void> {
        if let removeRoleFromDBInstanceEventLoopFutureAsyncOverride = removeRoleFromDBInstanceEventLoopFutureAsyncOverride {
            return removeRoleFromDBInstanceEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the RemoveSourceIdentifierFromSubscription operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RemoveSourceIdentifierFromSubscriptionMessage object being passed to this operation.
     - Returns: A future to the RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: sourceNotFound, subscriptionNotFound.
     */
    public func removeSourceIdentifierFromSubscription(
            input: RDSModel.RemoveSourceIdentifierFromSubscriptionMessage) -> EventLoopFuture<RDSModel.RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription> {
        if let removeSourceIdentifierFromSubscriptionEventLoopFutureAsyncOverride = removeSourceIdentifierFromSubscriptionEventLoopFutureAsyncOverride {
            return removeSourceIdentifierFromSubscriptionEventLoopFutureAsyncOverride(input)
        }

        let result = RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription.__default
        
        let promise = self.eventLoop.makePromise(of: RemoveSourceIdentifierFromSubscriptionResultForRemoveSourceIdentifierFromSubscription.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the RemoveTagsFromResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RemoveTagsFromResourceMessage object being passed to this operation.
           The possible errors are: dBClusterNotFound, dBInstanceNotFound, dBProxyNotFound, dBProxyTargetGroupNotFound, dBSnapshotNotFound.
     */
    public func removeTagsFromResource(
            input: RDSModel.RemoveTagsFromResourceMessage) -> EventLoopFuture<Void> {
        if let removeTagsFromResourceEventLoopFutureAsyncOverride = removeTagsFromResourceEventLoopFutureAsyncOverride {
            return removeTagsFromResourceEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.succeed(())
        
        return promise.futureResult
    }

    /**
     Invokes the ResetDBClusterParameterGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ResetDBClusterParameterGroupMessage object being passed to this operation.
     - Returns: A future to the DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    public func resetDBClusterParameterGroup(
            input: RDSModel.ResetDBClusterParameterGroupMessage) -> EventLoopFuture<RDSModel.DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup> {
        if let resetDBClusterParameterGroupEventLoopFutureAsyncOverride = resetDBClusterParameterGroupEventLoopFutureAsyncOverride {
            return resetDBClusterParameterGroupEventLoopFutureAsyncOverride(input)
        }

        let result = DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup.__default
        
        let promise = self.eventLoop.makePromise(of: DBClusterParameterGroupNameMessageForResetDBClusterParameterGroup.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the ResetDBParameterGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ResetDBParameterGroupMessage object being passed to this operation.
     - Returns: A future to the DBParameterGroupNameMessageForResetDBParameterGroup object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    public func resetDBParameterGroup(
            input: RDSModel.ResetDBParameterGroupMessage) -> EventLoopFuture<RDSModel.DBParameterGroupNameMessageForResetDBParameterGroup> {
        if let resetDBParameterGroupEventLoopFutureAsyncOverride = resetDBParameterGroupEventLoopFutureAsyncOverride {
            return resetDBParameterGroupEventLoopFutureAsyncOverride(input)
        }

        let result = DBParameterGroupNameMessageForResetDBParameterGroup.__default
        
        let promise = self.eventLoop.makePromise(of: DBParameterGroupNameMessageForResetDBParameterGroup.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the RestoreDBClusterFromS3 operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RestoreDBClusterFromS3Message object being passed to this operation.
     - Returns: A future to the RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3 object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBSubnetGroupNotFound, domainNotFound, insufficientStorageClusterCapacity, invalidDBClusterState, invalidDBSubnetGroupState, invalidS3Bucket, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, storageQuotaExceeded.
     */
    public func restoreDBClusterFromS3(
            input: RDSModel.RestoreDBClusterFromS3Message) -> EventLoopFuture<RDSModel.RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3> {
        if let restoreDBClusterFromS3EventLoopFutureAsyncOverride = restoreDBClusterFromS3EventLoopFutureAsyncOverride {
            return restoreDBClusterFromS3EventLoopFutureAsyncOverride(input)
        }

        let result = RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3.__default
        
        let promise = self.eventLoop.makePromise(of: RestoreDBClusterFromS3ResultForRestoreDBClusterFromS3.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the RestoreDBClusterFromSnapshot operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RestoreDBClusterFromSnapshotMessage object being passed to this operation.
     - Returns: A future to the RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterAlreadyExists, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBClusterSnapshotNotFound, dBSnapshotNotFound, dBSubnetGroupNotFound, dBSubnetGroupNotFound, domainNotFound, insufficientDBClusterCapacity, insufficientStorageClusterCapacity, invalidDBClusterSnapshotState, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, storageQuotaExceeded, storageQuotaExceeded.
     */
    public func restoreDBClusterFromSnapshot(
            input: RDSModel.RestoreDBClusterFromSnapshotMessage) -> EventLoopFuture<RDSModel.RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot> {
        if let restoreDBClusterFromSnapshotEventLoopFutureAsyncOverride = restoreDBClusterFromSnapshotEventLoopFutureAsyncOverride {
            return restoreDBClusterFromSnapshotEventLoopFutureAsyncOverride(input)
        }

        let result = RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot.__default
        
        let promise = self.eventLoop.makePromise(of: RestoreDBClusterFromSnapshotResultForRestoreDBClusterFromSnapshot.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the RestoreDBClusterToPointInTime operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RestoreDBClusterToPointInTimeMessage object being passed to this operation.
     - Returns: A future to the RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterAlreadyExists, dBClusterNotFound, dBClusterParameterGroupNotFound, dBClusterQuotaExceeded, dBClusterSnapshotNotFound, dBSubnetGroupNotFound, domainNotFound, insufficientDBClusterCapacity, insufficientStorageClusterCapacity, invalidDBClusterSnapshotState, invalidDBClusterState, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, storageQuotaExceeded.
     */
    public func restoreDBClusterToPointInTime(
            input: RDSModel.RestoreDBClusterToPointInTimeMessage) -> EventLoopFuture<RDSModel.RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime> {
        if let restoreDBClusterToPointInTimeEventLoopFutureAsyncOverride = restoreDBClusterToPointInTimeEventLoopFutureAsyncOverride {
            return restoreDBClusterToPointInTimeEventLoopFutureAsyncOverride(input)
        }

        let result = RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime.__default
        
        let promise = self.eventLoop.makePromise(of: RestoreDBClusterToPointInTimeResultForRestoreDBClusterToPointInTime.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the RestoreDBInstanceFromDBSnapshot operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RestoreDBInstanceFromDBSnapshotMessage object being passed to this operation.
     - Returns: A future to the RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSnapshotNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBSnapshotState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func restoreDBInstanceFromDBSnapshot(
            input: RDSModel.RestoreDBInstanceFromDBSnapshotMessage) -> EventLoopFuture<RDSModel.RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot> {
        if let restoreDBInstanceFromDBSnapshotEventLoopFutureAsyncOverride = restoreDBInstanceFromDBSnapshotEventLoopFutureAsyncOverride {
            return restoreDBInstanceFromDBSnapshotEventLoopFutureAsyncOverride(input)
        }

        let result = RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot.__default
        
        let promise = self.eventLoop.makePromise(of: RestoreDBInstanceFromDBSnapshotResultForRestoreDBInstanceFromDBSnapshot.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the RestoreDBInstanceFromS3 operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RestoreDBInstanceFromS3Message object being passed to this operation.
     - Returns: A future to the RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3 object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidS3Bucket, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func restoreDBInstanceFromS3(
            input: RDSModel.RestoreDBInstanceFromS3Message) -> EventLoopFuture<RDSModel.RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3> {
        if let restoreDBInstanceFromS3EventLoopFutureAsyncOverride = restoreDBInstanceFromS3EventLoopFutureAsyncOverride {
            return restoreDBInstanceFromS3EventLoopFutureAsyncOverride(input)
        }

        let result = RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3.__default
        
        let promise = self.eventLoop.makePromise(of: RestoreDBInstanceFromS3ResultForRestoreDBInstanceFromS3.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the RestoreDBInstanceToPointInTime operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RestoreDBInstanceToPointInTimeMessage object being passed to this operation.
     - Returns: A future to the RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, backupPolicyNotFound, dBInstanceAlreadyExists, dBInstanceAutomatedBackupNotFound, dBInstanceNotFound, dBParameterGroupNotFound, dBSecurityGroupNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, domainNotFound, instanceQuotaExceeded, insufficientDBInstanceCapacity, invalidDBInstanceState, invalidRestore, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible, optionGroupNotFound, pointInTimeRestoreNotEnabled, provisionedIopsNotAvailableInAZ, storageQuotaExceeded, storageTypeNotSupported.
     */
    public func restoreDBInstanceToPointInTime(
            input: RDSModel.RestoreDBInstanceToPointInTimeMessage) -> EventLoopFuture<RDSModel.RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime> {
        if let restoreDBInstanceToPointInTimeEventLoopFutureAsyncOverride = restoreDBInstanceToPointInTimeEventLoopFutureAsyncOverride {
            return restoreDBInstanceToPointInTimeEventLoopFutureAsyncOverride(input)
        }

        let result = RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime.__default
        
        let promise = self.eventLoop.makePromise(of: RestoreDBInstanceToPointInTimeResultForRestoreDBInstanceToPointInTime.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the RevokeDBSecurityGroupIngress operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RevokeDBSecurityGroupIngressMessage object being passed to this operation.
     - Returns: A future to the RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    public func revokeDBSecurityGroupIngress(
            input: RDSModel.RevokeDBSecurityGroupIngressMessage) -> EventLoopFuture<RDSModel.RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress> {
        if let revokeDBSecurityGroupIngressEventLoopFutureAsyncOverride = revokeDBSecurityGroupIngressEventLoopFutureAsyncOverride {
            return revokeDBSecurityGroupIngressEventLoopFutureAsyncOverride(input)
        }

        let result = RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress.__default
        
        let promise = self.eventLoop.makePromise(of: RevokeDBSecurityGroupIngressResultForRevokeDBSecurityGroupIngress.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the StartActivityStream operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated StartActivityStreamRequest object being passed to this operation.
     - Returns: A future to the StartActivityStreamResponseForStartActivityStream object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, dBInstanceNotFound, invalidDBClusterState, invalidDBInstanceState, kMSKeyNotAccessible, resourceNotFound.
     */
    public func startActivityStream(
            input: RDSModel.StartActivityStreamRequest) -> EventLoopFuture<RDSModel.StartActivityStreamResponseForStartActivityStream> {
        if let startActivityStreamEventLoopFutureAsyncOverride = startActivityStreamEventLoopFutureAsyncOverride {
            return startActivityStreamEventLoopFutureAsyncOverride(input)
        }

        let result = StartActivityStreamResponseForStartActivityStream.__default
        
        let promise = self.eventLoop.makePromise(of: StartActivityStreamResponseForStartActivityStream.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the StartDBCluster operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated StartDBClusterMessage object being passed to this operation.
     - Returns: A future to the StartDBClusterResultForStartDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    public func startDBCluster(
            input: RDSModel.StartDBClusterMessage) -> EventLoopFuture<RDSModel.StartDBClusterResultForStartDBCluster> {
        if let startDBClusterEventLoopFutureAsyncOverride = startDBClusterEventLoopFutureAsyncOverride {
            return startDBClusterEventLoopFutureAsyncOverride(input)
        }

        let result = StartDBClusterResultForStartDBCluster.__default
        
        let promise = self.eventLoop.makePromise(of: StartDBClusterResultForStartDBCluster.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the StartDBInstance operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated StartDBInstanceMessage object being passed to this operation.
     - Returns: A future to the StartDBInstanceResultForStartDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: authorizationNotFound, dBClusterNotFound, dBInstanceNotFound, dBSubnetGroupDoesNotCoverEnoughAZs, dBSubnetGroupNotFound, insufficientDBInstanceCapacity, invalidDBClusterState, invalidDBInstanceState, invalidSubnet, invalidVPCNetworkState, kMSKeyNotAccessible.
     */
    public func startDBInstance(
            input: RDSModel.StartDBInstanceMessage) -> EventLoopFuture<RDSModel.StartDBInstanceResultForStartDBInstance> {
        if let startDBInstanceEventLoopFutureAsyncOverride = startDBInstanceEventLoopFutureAsyncOverride {
            return startDBInstanceEventLoopFutureAsyncOverride(input)
        }

        let result = StartDBInstanceResultForStartDBInstance.__default
        
        let promise = self.eventLoop.makePromise(of: StartDBInstanceResultForStartDBInstance.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the StartDBInstanceAutomatedBackupsReplication operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated StartDBInstanceAutomatedBackupsReplicationMessage object being passed to this operation.
     - Returns: A future to the StartDBInstanceAutomatedBackupsReplicationResultForStartDBInstanceAutomatedBackupsReplication object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBInstanceAutomatedBackupQuotaExceeded, dBInstanceNotFound, invalidDBInstanceState, kMSKeyNotAccessible, storageTypeNotSupported.
     */
    public func startDBInstanceAutomatedBackupsReplication(
            input: RDSModel.StartDBInstanceAutomatedBackupsReplicationMessage) -> EventLoopFuture<RDSModel.StartDBInstanceAutomatedBackupsReplicationResultForStartDBInstanceAutomatedBackupsReplication> {
        if let startDBInstanceAutomatedBackupsReplicationEventLoopFutureAsyncOverride = startDBInstanceAutomatedBackupsReplicationEventLoopFutureAsyncOverride {
            return startDBInstanceAutomatedBackupsReplicationEventLoopFutureAsyncOverride(input)
        }

        let result = StartDBInstanceAutomatedBackupsReplicationResultForStartDBInstanceAutomatedBackupsReplication.__default
        
        let promise = self.eventLoop.makePromise(of: StartDBInstanceAutomatedBackupsReplicationResultForStartDBInstanceAutomatedBackupsReplication.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the StartExportTask operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated StartExportTaskMessage object being passed to this operation.
     - Returns: A future to the ExportTaskForStartExportTask object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterSnapshotNotFound, dBSnapshotNotFound, exportTaskAlreadyExists, iamRoleMissingPermissions, iamRoleNotFound, invalidExportOnly, invalidExportSourceState, invalidS3Bucket, kMSKeyNotAccessible.
     */
    public func startExportTask(
            input: RDSModel.StartExportTaskMessage) -> EventLoopFuture<RDSModel.ExportTaskForStartExportTask> {
        if let startExportTaskEventLoopFutureAsyncOverride = startExportTaskEventLoopFutureAsyncOverride {
            return startExportTaskEventLoopFutureAsyncOverride(input)
        }

        let result = ExportTaskForStartExportTask.__default
        
        let promise = self.eventLoop.makePromise(of: ExportTaskForStartExportTask.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the StopActivityStream operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated StopActivityStreamRequest object being passed to this operation.
     - Returns: A future to the StopActivityStreamResponseForStopActivityStream object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, dBInstanceNotFound, invalidDBClusterState, invalidDBInstanceState, resourceNotFound.
     */
    public func stopActivityStream(
            input: RDSModel.StopActivityStreamRequest) -> EventLoopFuture<RDSModel.StopActivityStreamResponseForStopActivityStream> {
        if let stopActivityStreamEventLoopFutureAsyncOverride = stopActivityStreamEventLoopFutureAsyncOverride {
            return stopActivityStreamEventLoopFutureAsyncOverride(input)
        }

        let result = StopActivityStreamResponseForStopActivityStream.__default
        
        let promise = self.eventLoop.makePromise(of: StopActivityStreamResponseForStopActivityStream.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the StopDBCluster operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated StopDBClusterMessage object being passed to this operation.
     - Returns: A future to the StopDBClusterResultForStopDBCluster object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBClusterNotFound, invalidDBClusterState, invalidDBInstanceState.
     */
    public func stopDBCluster(
            input: RDSModel.StopDBClusterMessage) -> EventLoopFuture<RDSModel.StopDBClusterResultForStopDBCluster> {
        if let stopDBClusterEventLoopFutureAsyncOverride = stopDBClusterEventLoopFutureAsyncOverride {
            return stopDBClusterEventLoopFutureAsyncOverride(input)
        }

        let result = StopDBClusterResultForStopDBCluster.__default
        
        let promise = self.eventLoop.makePromise(of: StopDBClusterResultForStopDBCluster.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the StopDBInstance operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated StopDBInstanceMessage object being passed to this operation.
     - Returns: A future to the StopDBInstanceResultForStopDBInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound, dBSnapshotAlreadyExists, invalidDBClusterState, invalidDBInstanceState, snapshotQuotaExceeded.
     */
    public func stopDBInstance(
            input: RDSModel.StopDBInstanceMessage) -> EventLoopFuture<RDSModel.StopDBInstanceResultForStopDBInstance> {
        if let stopDBInstanceEventLoopFutureAsyncOverride = stopDBInstanceEventLoopFutureAsyncOverride {
            return stopDBInstanceEventLoopFutureAsyncOverride(input)
        }

        let result = StopDBInstanceResultForStopDBInstance.__default
        
        let promise = self.eventLoop.makePromise(of: StopDBInstanceResultForStopDBInstance.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    /**
     Invokes the StopDBInstanceAutomatedBackupsReplication operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated StopDBInstanceAutomatedBackupsReplicationMessage object being passed to this operation.
     - Returns: A future to the StopDBInstanceAutomatedBackupsReplicationResultForStopDBInstanceAutomatedBackupsReplication object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dBInstanceNotFound, invalidDBInstanceState.
     */
    public func stopDBInstanceAutomatedBackupsReplication(
            input: RDSModel.StopDBInstanceAutomatedBackupsReplicationMessage) -> EventLoopFuture<RDSModel.StopDBInstanceAutomatedBackupsReplicationResultForStopDBInstanceAutomatedBackupsReplication> {
        if let stopDBInstanceAutomatedBackupsReplicationEventLoopFutureAsyncOverride = stopDBInstanceAutomatedBackupsReplicationEventLoopFutureAsyncOverride {
            return stopDBInstanceAutomatedBackupsReplicationEventLoopFutureAsyncOverride(input)
        }

        let result = StopDBInstanceAutomatedBackupsReplicationResultForStopDBInstanceAutomatedBackupsReplication.__default
        
        let promise = self.eventLoop.makePromise(of: StopDBInstanceAutomatedBackupsReplicationResultForStopDBInstanceAutomatedBackupsReplication.self)
        promise.succeed(result)
        
        return promise.futureResult
    }
}
