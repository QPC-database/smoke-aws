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
// AWSRDSClient.swift
// RDSClient
//

import Foundation
import RDSModel
import SmokeAWSCore
import SmokeHTTPClient
import NIO
import SmokeAWSHttp
import NIO
import NIOHTTP1
import AsyncHTTPClient
import Logging

public enum RDSClientError: Swift.Error {
    case invalidEndpoint(String)
    case unsupportedPayload
    case unknownError(String?)
}

 extension RDSError: ConvertableError {
    public static func asUnrecognizedError(error: Swift.Error) -> RDSError {
        return error.asUnrecognizedRDSError()
    }
}

/**
 AWS Client for the RDS service.
 */
public struct AWSRDSClient<InvocationReportingType: HTTPClientCoreInvocationReporting>: RDSClientProtocol, AWSQueryClientProtocol {
    let httpClient: HTTPOperationsClient
    let ownsHttpClients: Bool
    public let awsRegion: AWSRegion
    public let service: String
    public let apiVersion: String
    public let target: String?
    public let retryConfiguration: HTTPClientRetryConfiguration
    public let retryOnErrorProvider: (SmokeHTTPClient.HTTPClientError) -> Bool
    public let credentialsProvider: CredentialsProvider
    
    public let eventLoopProvider: HTTPClient.EventLoopGroupProvider
    public let reporting: InvocationReportingType

    let operationsReporting: RDSOperationsReporting
    let invocationsReporting: RDSInvocationsReporting<InvocationReportingType>
    
    public init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                reporting: InvocationReportingType,
                endpointHostName: String,
                endpointPort: Int = 443,
                requiresTLS: Bool? = nil,
                service: String = "rds",
                contentType: String = "application/octet-stream",
                apiVersion: String = "2014-10-31",
                connectionTimeoutSeconds: Int64 = 10,
                retryConfiguration: HTTPClientRetryConfiguration = .default,
                eventLoopProvider: HTTPClient.EventLoopGroupProvider = .createNew,
                reportingConfiguration: SmokeAWSClientReportingConfiguration<RDSModelOperations>
                    = SmokeAWSClientReportingConfiguration<RDSModelOperations>() ) {
        let useTLS = requiresTLS ?? AWSHTTPClientDelegate.requiresTLS(forEndpointPort: endpointPort)
        let clientDelegate = XMLAWSHttpClientDelegate<RDSError>(requiresTLS: useTLS)

        self.httpClient = HTTPOperationsClient(
            endpointHostName: endpointHostName,
            endpointPort: endpointPort,
            contentType: contentType,
            clientDelegate: clientDelegate,
            connectionTimeoutSeconds: connectionTimeoutSeconds,
            eventLoopProvider: eventLoopProvider)
        self.ownsHttpClients = true
        self.awsRegion = awsRegion
        self.service = service
        self.target = nil
        self.credentialsProvider = credentialsProvider
        self.eventLoopProvider = eventLoopProvider
        self.retryConfiguration = retryConfiguration
        self.reporting = reporting
        self.retryOnErrorProvider = { error in error.isRetriable() }
        self.apiVersion = apiVersion
        self.operationsReporting = RDSOperationsReporting(clientName: "AWSRDSClient", reportingConfiguration: reportingConfiguration)
        self.invocationsReporting = RDSInvocationsReporting(reporting: reporting, operationsReporting: self.operationsReporting)
    }
    
    internal init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                reporting: InvocationReportingType,
                httpClient: HTTPOperationsClient,
                service: String,
                apiVersion: String,
                eventLoopProvider: HTTPClient.EventLoopGroupProvider,
                retryOnErrorProvider: @escaping (SmokeHTTPClient.HTTPClientError) -> Bool,
                retryConfiguration: HTTPClientRetryConfiguration,
                operationsReporting: RDSOperationsReporting) {
        self.httpClient = httpClient
        self.ownsHttpClients = false
        self.awsRegion = awsRegion
        self.service = service
        self.target = nil
        self.credentialsProvider = credentialsProvider
        self.eventLoopProvider = eventLoopProvider
        self.retryConfiguration = retryConfiguration
        self.reporting = reporting
        self.retryOnErrorProvider = retryOnErrorProvider
        self.apiVersion = apiVersion
        self.operationsReporting = operationsReporting
        self.invocationsReporting = RDSInvocationsReporting(reporting: reporting, operationsReporting: self.operationsReporting)
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
     Invokes the AddRoleToDBCluster operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AddRoleToDBClusterMessage object being passed to this operation.
           The possible errors are: dBClusterNotFound, dBClusterRoleAlreadyExists, dBClusterRoleQuotaExceeded, invalidDBClusterState.
     */
    public func addRoleToDBCluster(
            input: RDSModel.AddRoleToDBClusterMessage) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: AddRoleToDBClusterOperationHTTPRequestInput(encodable: input),
                                    action: RDSModelOperations.addRoleToDBCluster.rawValue,
                                    reporting: self.invocationsReporting.addRoleToDBCluster)
    }

    /**
     Invokes the AddRoleToDBInstance operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AddRoleToDBInstanceMessage object being passed to this operation.
           The possible errors are: dBInstanceNotFound, dBInstanceRoleAlreadyExists, dBInstanceRoleQuotaExceeded, invalidDBInstanceState.
     */
    public func addRoleToDBInstance(
            input: RDSModel.AddRoleToDBInstanceMessage) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: AddRoleToDBInstanceOperationHTTPRequestInput(encodable: input),
                                    action: RDSModelOperations.addRoleToDBInstance.rawValue,
                                    reporting: self.invocationsReporting.addRoleToDBInstance)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: AddSourceIdentifierToSubscriptionOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.addSourceIdentifierToSubscription.rawValue,
                                 reporting: self.invocationsReporting.addSourceIdentifierToSubscription)
    }

    /**
     Invokes the AddTagsToResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated AddTagsToResourceMessage object being passed to this operation.
           The possible errors are: dBClusterNotFound, dBInstanceNotFound, dBProxyNotFound, dBProxyTargetGroupNotFound, dBSnapshotNotFound.
     */
    public func addTagsToResource(
            input: RDSModel.AddTagsToResourceMessage) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: AddTagsToResourceOperationHTTPRequestInput(encodable: input),
                                    action: RDSModelOperations.addTagsToResource.rawValue,
                                    reporting: self.invocationsReporting.addTagsToResource)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ApplyPendingMaintenanceActionOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.applyPendingMaintenanceAction.rawValue,
                                 reporting: self.invocationsReporting.applyPendingMaintenanceAction)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: AuthorizeDBSecurityGroupIngressOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.authorizeDBSecurityGroupIngress.rawValue,
                                 reporting: self.invocationsReporting.authorizeDBSecurityGroupIngress)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: BacktrackDBClusterOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.backtrackDBCluster.rawValue,
                                 reporting: self.invocationsReporting.backtrackDBCluster)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CancelExportTaskOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.cancelExportTask.rawValue,
                                 reporting: self.invocationsReporting.cancelExportTask)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CopyDBClusterParameterGroupOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.copyDBClusterParameterGroup.rawValue,
                                 reporting: self.invocationsReporting.copyDBClusterParameterGroup)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CopyDBClusterSnapshotOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.copyDBClusterSnapshot.rawValue,
                                 reporting: self.invocationsReporting.copyDBClusterSnapshot)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CopyDBParameterGroupOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.copyDBParameterGroup.rawValue,
                                 reporting: self.invocationsReporting.copyDBParameterGroup)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CopyDBSnapshotOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.copyDBSnapshot.rawValue,
                                 reporting: self.invocationsReporting.copyDBSnapshot)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CopyOptionGroupOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.copyOptionGroup.rawValue,
                                 reporting: self.invocationsReporting.copyOptionGroup)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateCustomAvailabilityZoneOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.createCustomAvailabilityZone.rawValue,
                                 reporting: self.invocationsReporting.createCustomAvailabilityZone)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateDBClusterOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.createDBCluster.rawValue,
                                 reporting: self.invocationsReporting.createDBCluster)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateDBClusterEndpointOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.createDBClusterEndpoint.rawValue,
                                 reporting: self.invocationsReporting.createDBClusterEndpoint)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateDBClusterParameterGroupOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.createDBClusterParameterGroup.rawValue,
                                 reporting: self.invocationsReporting.createDBClusterParameterGroup)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateDBClusterSnapshotOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.createDBClusterSnapshot.rawValue,
                                 reporting: self.invocationsReporting.createDBClusterSnapshot)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateDBInstanceOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.createDBInstance.rawValue,
                                 reporting: self.invocationsReporting.createDBInstance)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateDBInstanceReadReplicaOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.createDBInstanceReadReplica.rawValue,
                                 reporting: self.invocationsReporting.createDBInstanceReadReplica)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateDBParameterGroupOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.createDBParameterGroup.rawValue,
                                 reporting: self.invocationsReporting.createDBParameterGroup)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateDBProxyOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.createDBProxy.rawValue,
                                 reporting: self.invocationsReporting.createDBProxy)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateDBSecurityGroupOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.createDBSecurityGroup.rawValue,
                                 reporting: self.invocationsReporting.createDBSecurityGroup)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateDBSnapshotOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.createDBSnapshot.rawValue,
                                 reporting: self.invocationsReporting.createDBSnapshot)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateDBSubnetGroupOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.createDBSubnetGroup.rawValue,
                                 reporting: self.invocationsReporting.createDBSubnetGroup)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateEventSubscriptionOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.createEventSubscription.rawValue,
                                 reporting: self.invocationsReporting.createEventSubscription)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateGlobalClusterOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.createGlobalCluster.rawValue,
                                 reporting: self.invocationsReporting.createGlobalCluster)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: CreateOptionGroupOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.createOptionGroup.rawValue,
                                 reporting: self.invocationsReporting.createOptionGroup)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeleteCustomAvailabilityZoneOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.deleteCustomAvailabilityZone.rawValue,
                                 reporting: self.invocationsReporting.deleteCustomAvailabilityZone)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeleteDBClusterOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.deleteDBCluster.rawValue,
                                 reporting: self.invocationsReporting.deleteDBCluster)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeleteDBClusterEndpointOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.deleteDBClusterEndpoint.rawValue,
                                 reporting: self.invocationsReporting.deleteDBClusterEndpoint)
    }

    /**
     Invokes the DeleteDBClusterParameterGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteDBClusterParameterGroupMessage object being passed to this operation.
           The possible errors are: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    public func deleteDBClusterParameterGroup(
            input: RDSModel.DeleteDBClusterParameterGroupMessage) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: DeleteDBClusterParameterGroupOperationHTTPRequestInput(encodable: input),
                                    action: RDSModelOperations.deleteDBClusterParameterGroup.rawValue,
                                    reporting: self.invocationsReporting.deleteDBClusterParameterGroup)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeleteDBClusterSnapshotOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.deleteDBClusterSnapshot.rawValue,
                                 reporting: self.invocationsReporting.deleteDBClusterSnapshot)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeleteDBInstanceOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.deleteDBInstance.rawValue,
                                 reporting: self.invocationsReporting.deleteDBInstance)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeleteDBInstanceAutomatedBackupOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.deleteDBInstanceAutomatedBackup.rawValue,
                                 reporting: self.invocationsReporting.deleteDBInstanceAutomatedBackup)
    }

    /**
     Invokes the DeleteDBParameterGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteDBParameterGroupMessage object being passed to this operation.
           The possible errors are: dBParameterGroupNotFound, invalidDBParameterGroupState.
     */
    public func deleteDBParameterGroup(
            input: RDSModel.DeleteDBParameterGroupMessage) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: DeleteDBParameterGroupOperationHTTPRequestInput(encodable: input),
                                    action: RDSModelOperations.deleteDBParameterGroup.rawValue,
                                    reporting: self.invocationsReporting.deleteDBParameterGroup)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeleteDBProxyOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.deleteDBProxy.rawValue,
                                 reporting: self.invocationsReporting.deleteDBProxy)
    }

    /**
     Invokes the DeleteDBSecurityGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteDBSecurityGroupMessage object being passed to this operation.
           The possible errors are: dBSecurityGroupNotFound, invalidDBSecurityGroupState.
     */
    public func deleteDBSecurityGroup(
            input: RDSModel.DeleteDBSecurityGroupMessage) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: DeleteDBSecurityGroupOperationHTTPRequestInput(encodable: input),
                                    action: RDSModelOperations.deleteDBSecurityGroup.rawValue,
                                    reporting: self.invocationsReporting.deleteDBSecurityGroup)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeleteDBSnapshotOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.deleteDBSnapshot.rawValue,
                                 reporting: self.invocationsReporting.deleteDBSnapshot)
    }

    /**
     Invokes the DeleteDBSubnetGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteDBSubnetGroupMessage object being passed to this operation.
           The possible errors are: dBSubnetGroupNotFound, invalidDBSubnetGroupState, invalidDBSubnetState.
     */
    public func deleteDBSubnetGroup(
            input: RDSModel.DeleteDBSubnetGroupMessage) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: DeleteDBSubnetGroupOperationHTTPRequestInput(encodable: input),
                                    action: RDSModelOperations.deleteDBSubnetGroup.rawValue,
                                    reporting: self.invocationsReporting.deleteDBSubnetGroup)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeleteEventSubscriptionOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.deleteEventSubscription.rawValue,
                                 reporting: self.invocationsReporting.deleteEventSubscription)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeleteGlobalClusterOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.deleteGlobalCluster.rawValue,
                                 reporting: self.invocationsReporting.deleteGlobalCluster)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeleteInstallationMediaOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.deleteInstallationMedia.rawValue,
                                 reporting: self.invocationsReporting.deleteInstallationMedia)
    }

    /**
     Invokes the DeleteOptionGroup operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteOptionGroupMessage object being passed to this operation.
           The possible errors are: invalidOptionGroupState, optionGroupNotFound.
     */
    public func deleteOptionGroup(
            input: RDSModel.DeleteOptionGroupMessage) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: DeleteOptionGroupOperationHTTPRequestInput(encodable: input),
                                    action: RDSModelOperations.deleteOptionGroup.rawValue,
                                    reporting: self.invocationsReporting.deleteOptionGroup)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeregisterDBProxyTargetsOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.deregisterDBProxyTargets.rawValue,
                                 reporting: self.invocationsReporting.deregisterDBProxyTargets)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeAccountAttributesOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.describeAccountAttributes.rawValue,
                                 reporting: self.invocationsReporting.describeAccountAttributes)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeCertificatesOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.describeCertificates.rawValue,
                                 reporting: self.invocationsReporting.describeCertificates)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeCustomAvailabilityZonesOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.describeCustomAvailabilityZones.rawValue,
                                 reporting: self.invocationsReporting.describeCustomAvailabilityZones)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeDBClusterBacktracksOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.describeDBClusterBacktracks.rawValue,
                                 reporting: self.invocationsReporting.describeDBClusterBacktracks)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeDBClusterEndpointsOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.describeDBClusterEndpoints.rawValue,
                                 reporting: self.invocationsReporting.describeDBClusterEndpoints)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeDBClusterParameterGroupsOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.describeDBClusterParameterGroups.rawValue,
                                 reporting: self.invocationsReporting.describeDBClusterParameterGroups)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeDBClusterParametersOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.describeDBClusterParameters.rawValue,
                                 reporting: self.invocationsReporting.describeDBClusterParameters)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeDBClusterSnapshotAttributesOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.describeDBClusterSnapshotAttributes.rawValue,
                                 reporting: self.invocationsReporting.describeDBClusterSnapshotAttributes)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeDBClusterSnapshotsOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.describeDBClusterSnapshots.rawValue,
                                 reporting: self.invocationsReporting.describeDBClusterSnapshots)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeDBClustersOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.describeDBClusters.rawValue,
                                 reporting: self.invocationsReporting.describeDBClusters)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeDBEngineVersionsOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.describeDBEngineVersions.rawValue,
                                 reporting: self.invocationsReporting.describeDBEngineVersions)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeDBInstanceAutomatedBackupsOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.describeDBInstanceAutomatedBackups.rawValue,
                                 reporting: self.invocationsReporting.describeDBInstanceAutomatedBackups)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeDBInstancesOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.describeDBInstances.rawValue,
                                 reporting: self.invocationsReporting.describeDBInstances)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeDBLogFilesOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.describeDBLogFiles.rawValue,
                                 reporting: self.invocationsReporting.describeDBLogFiles)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeDBParameterGroupsOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.describeDBParameterGroups.rawValue,
                                 reporting: self.invocationsReporting.describeDBParameterGroups)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeDBParametersOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.describeDBParameters.rawValue,
                                 reporting: self.invocationsReporting.describeDBParameters)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeDBProxiesOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.describeDBProxies.rawValue,
                                 reporting: self.invocationsReporting.describeDBProxies)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeDBProxyTargetGroupsOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.describeDBProxyTargetGroups.rawValue,
                                 reporting: self.invocationsReporting.describeDBProxyTargetGroups)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeDBProxyTargetsOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.describeDBProxyTargets.rawValue,
                                 reporting: self.invocationsReporting.describeDBProxyTargets)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeDBSecurityGroupsOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.describeDBSecurityGroups.rawValue,
                                 reporting: self.invocationsReporting.describeDBSecurityGroups)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeDBSnapshotAttributesOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.describeDBSnapshotAttributes.rawValue,
                                 reporting: self.invocationsReporting.describeDBSnapshotAttributes)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeDBSnapshotsOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.describeDBSnapshots.rawValue,
                                 reporting: self.invocationsReporting.describeDBSnapshots)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeDBSubnetGroupsOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.describeDBSubnetGroups.rawValue,
                                 reporting: self.invocationsReporting.describeDBSubnetGroups)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeEngineDefaultClusterParametersOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.describeEngineDefaultClusterParameters.rawValue,
                                 reporting: self.invocationsReporting.describeEngineDefaultClusterParameters)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeEngineDefaultParametersOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.describeEngineDefaultParameters.rawValue,
                                 reporting: self.invocationsReporting.describeEngineDefaultParameters)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeEventCategoriesOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.describeEventCategories.rawValue,
                                 reporting: self.invocationsReporting.describeEventCategories)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeEventSubscriptionsOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.describeEventSubscriptions.rawValue,
                                 reporting: self.invocationsReporting.describeEventSubscriptions)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeEventsOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.describeEvents.rawValue,
                                 reporting: self.invocationsReporting.describeEvents)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeExportTasksOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.describeExportTasks.rawValue,
                                 reporting: self.invocationsReporting.describeExportTasks)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeGlobalClustersOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.describeGlobalClusters.rawValue,
                                 reporting: self.invocationsReporting.describeGlobalClusters)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeInstallationMediaOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.describeInstallationMedia.rawValue,
                                 reporting: self.invocationsReporting.describeInstallationMedia)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeOptionGroupOptionsOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.describeOptionGroupOptions.rawValue,
                                 reporting: self.invocationsReporting.describeOptionGroupOptions)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeOptionGroupsOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.describeOptionGroups.rawValue,
                                 reporting: self.invocationsReporting.describeOptionGroups)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeOrderableDBInstanceOptionsOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.describeOrderableDBInstanceOptions.rawValue,
                                 reporting: self.invocationsReporting.describeOrderableDBInstanceOptions)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribePendingMaintenanceActionsOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.describePendingMaintenanceActions.rawValue,
                                 reporting: self.invocationsReporting.describePendingMaintenanceActions)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeReservedDBInstancesOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.describeReservedDBInstances.rawValue,
                                 reporting: self.invocationsReporting.describeReservedDBInstances)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeReservedDBInstancesOfferingsOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.describeReservedDBInstancesOfferings.rawValue,
                                 reporting: self.invocationsReporting.describeReservedDBInstancesOfferings)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeSourceRegionsOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.describeSourceRegions.rawValue,
                                 reporting: self.invocationsReporting.describeSourceRegions)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeValidDBInstanceModificationsOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.describeValidDBInstanceModifications.rawValue,
                                 reporting: self.invocationsReporting.describeValidDBInstanceModifications)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DownloadDBLogFilePortionOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.downloadDBLogFilePortion.rawValue,
                                 reporting: self.invocationsReporting.downloadDBLogFilePortion)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: FailoverDBClusterOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.failoverDBCluster.rawValue,
                                 reporting: self.invocationsReporting.failoverDBCluster)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: FailoverGlobalClusterOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.failoverGlobalCluster.rawValue,
                                 reporting: self.invocationsReporting.failoverGlobalCluster)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ImportInstallationMediaOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.importInstallationMedia.rawValue,
                                 reporting: self.invocationsReporting.importInstallationMedia)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ListTagsForResourceOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.listTagsForResource.rawValue,
                                 reporting: self.invocationsReporting.listTagsForResource)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ModifyCertificatesOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.modifyCertificates.rawValue,
                                 reporting: self.invocationsReporting.modifyCertificates)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ModifyCurrentDBClusterCapacityOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.modifyCurrentDBClusterCapacity.rawValue,
                                 reporting: self.invocationsReporting.modifyCurrentDBClusterCapacity)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ModifyDBClusterOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.modifyDBCluster.rawValue,
                                 reporting: self.invocationsReporting.modifyDBCluster)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ModifyDBClusterEndpointOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.modifyDBClusterEndpoint.rawValue,
                                 reporting: self.invocationsReporting.modifyDBClusterEndpoint)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ModifyDBClusterParameterGroupOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.modifyDBClusterParameterGroup.rawValue,
                                 reporting: self.invocationsReporting.modifyDBClusterParameterGroup)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ModifyDBClusterSnapshotAttributeOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.modifyDBClusterSnapshotAttribute.rawValue,
                                 reporting: self.invocationsReporting.modifyDBClusterSnapshotAttribute)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ModifyDBInstanceOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.modifyDBInstance.rawValue,
                                 reporting: self.invocationsReporting.modifyDBInstance)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ModifyDBParameterGroupOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.modifyDBParameterGroup.rawValue,
                                 reporting: self.invocationsReporting.modifyDBParameterGroup)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ModifyDBProxyOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.modifyDBProxy.rawValue,
                                 reporting: self.invocationsReporting.modifyDBProxy)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ModifyDBProxyTargetGroupOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.modifyDBProxyTargetGroup.rawValue,
                                 reporting: self.invocationsReporting.modifyDBProxyTargetGroup)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ModifyDBSnapshotOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.modifyDBSnapshot.rawValue,
                                 reporting: self.invocationsReporting.modifyDBSnapshot)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ModifyDBSnapshotAttributeOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.modifyDBSnapshotAttribute.rawValue,
                                 reporting: self.invocationsReporting.modifyDBSnapshotAttribute)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ModifyDBSubnetGroupOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.modifyDBSubnetGroup.rawValue,
                                 reporting: self.invocationsReporting.modifyDBSubnetGroup)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ModifyEventSubscriptionOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.modifyEventSubscription.rawValue,
                                 reporting: self.invocationsReporting.modifyEventSubscription)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ModifyGlobalClusterOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.modifyGlobalCluster.rawValue,
                                 reporting: self.invocationsReporting.modifyGlobalCluster)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ModifyOptionGroupOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.modifyOptionGroup.rawValue,
                                 reporting: self.invocationsReporting.modifyOptionGroup)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: PromoteReadReplicaOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.promoteReadReplica.rawValue,
                                 reporting: self.invocationsReporting.promoteReadReplica)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: PromoteReadReplicaDBClusterOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.promoteReadReplicaDBCluster.rawValue,
                                 reporting: self.invocationsReporting.promoteReadReplicaDBCluster)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: PurchaseReservedDBInstancesOfferingOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.purchaseReservedDBInstancesOffering.rawValue,
                                 reporting: self.invocationsReporting.purchaseReservedDBInstancesOffering)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: RebootDBInstanceOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.rebootDBInstance.rawValue,
                                 reporting: self.invocationsReporting.rebootDBInstance)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: RegisterDBProxyTargetsOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.registerDBProxyTargets.rawValue,
                                 reporting: self.invocationsReporting.registerDBProxyTargets)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: RemoveFromGlobalClusterOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.removeFromGlobalCluster.rawValue,
                                 reporting: self.invocationsReporting.removeFromGlobalCluster)
    }

    /**
     Invokes the RemoveRoleFromDBCluster operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RemoveRoleFromDBClusterMessage object being passed to this operation.
           The possible errors are: dBClusterNotFound, dBClusterRoleNotFound, invalidDBClusterState.
     */
    public func removeRoleFromDBCluster(
            input: RDSModel.RemoveRoleFromDBClusterMessage) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: RemoveRoleFromDBClusterOperationHTTPRequestInput(encodable: input),
                                    action: RDSModelOperations.removeRoleFromDBCluster.rawValue,
                                    reporting: self.invocationsReporting.removeRoleFromDBCluster)
    }

    /**
     Invokes the RemoveRoleFromDBInstance operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RemoveRoleFromDBInstanceMessage object being passed to this operation.
           The possible errors are: dBInstanceNotFound, dBInstanceRoleNotFound, invalidDBInstanceState.
     */
    public func removeRoleFromDBInstance(
            input: RDSModel.RemoveRoleFromDBInstanceMessage) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: RemoveRoleFromDBInstanceOperationHTTPRequestInput(encodable: input),
                                    action: RDSModelOperations.removeRoleFromDBInstance.rawValue,
                                    reporting: self.invocationsReporting.removeRoleFromDBInstance)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: RemoveSourceIdentifierFromSubscriptionOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.removeSourceIdentifierFromSubscription.rawValue,
                                 reporting: self.invocationsReporting.removeSourceIdentifierFromSubscription)
    }

    /**
     Invokes the RemoveTagsFromResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RemoveTagsFromResourceMessage object being passed to this operation.
           The possible errors are: dBClusterNotFound, dBInstanceNotFound, dBProxyNotFound, dBProxyTargetGroupNotFound, dBSnapshotNotFound.
     */
    public func removeTagsFromResource(
            input: RDSModel.RemoveTagsFromResourceMessage) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: RemoveTagsFromResourceOperationHTTPRequestInput(encodable: input),
                                    action: RDSModelOperations.removeTagsFromResource.rawValue,
                                    reporting: self.invocationsReporting.removeTagsFromResource)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ResetDBClusterParameterGroupOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.resetDBClusterParameterGroup.rawValue,
                                 reporting: self.invocationsReporting.resetDBClusterParameterGroup)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ResetDBParameterGroupOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.resetDBParameterGroup.rawValue,
                                 reporting: self.invocationsReporting.resetDBParameterGroup)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: RestoreDBClusterFromS3OperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.restoreDBClusterFromS3.rawValue,
                                 reporting: self.invocationsReporting.restoreDBClusterFromS3)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: RestoreDBClusterFromSnapshotOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.restoreDBClusterFromSnapshot.rawValue,
                                 reporting: self.invocationsReporting.restoreDBClusterFromSnapshot)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: RestoreDBClusterToPointInTimeOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.restoreDBClusterToPointInTime.rawValue,
                                 reporting: self.invocationsReporting.restoreDBClusterToPointInTime)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: RestoreDBInstanceFromDBSnapshotOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.restoreDBInstanceFromDBSnapshot.rawValue,
                                 reporting: self.invocationsReporting.restoreDBInstanceFromDBSnapshot)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: RestoreDBInstanceFromS3OperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.restoreDBInstanceFromS3.rawValue,
                                 reporting: self.invocationsReporting.restoreDBInstanceFromS3)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: RestoreDBInstanceToPointInTimeOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.restoreDBInstanceToPointInTime.rawValue,
                                 reporting: self.invocationsReporting.restoreDBInstanceToPointInTime)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: RevokeDBSecurityGroupIngressOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.revokeDBSecurityGroupIngress.rawValue,
                                 reporting: self.invocationsReporting.revokeDBSecurityGroupIngress)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: StartActivityStreamOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.startActivityStream.rawValue,
                                 reporting: self.invocationsReporting.startActivityStream)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: StartDBClusterOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.startDBCluster.rawValue,
                                 reporting: self.invocationsReporting.startDBCluster)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: StartDBInstanceOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.startDBInstance.rawValue,
                                 reporting: self.invocationsReporting.startDBInstance)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: StartDBInstanceAutomatedBackupsReplicationOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.startDBInstanceAutomatedBackupsReplication.rawValue,
                                 reporting: self.invocationsReporting.startDBInstanceAutomatedBackupsReplication)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: StartExportTaskOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.startExportTask.rawValue,
                                 reporting: self.invocationsReporting.startExportTask)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: StopActivityStreamOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.stopActivityStream.rawValue,
                                 reporting: self.invocationsReporting.stopActivityStream)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: StopDBClusterOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.stopDBCluster.rawValue,
                                 reporting: self.invocationsReporting.stopDBCluster)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: StopDBInstanceOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.stopDBInstance.rawValue,
                                 reporting: self.invocationsReporting.stopDBInstance)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: StopDBInstanceAutomatedBackupsReplicationOperationHTTPRequestInput(encodable: input),
                                 action: RDSModelOperations.stopDBInstanceAutomatedBackupsReplication.rawValue,
                                 reporting: self.invocationsReporting.stopDBInstanceAutomatedBackupsReplication)
    }
}
