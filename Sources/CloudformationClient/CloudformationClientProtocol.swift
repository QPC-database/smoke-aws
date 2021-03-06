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
// CloudformationClientProtocol.swift
// CloudformationClient
//

import Foundation
import CloudformationModel
import SmokeAWSCore
import SmokeHTTPClient
import NIO

/**
 Client Protocol for the Cloudformation service.
 */
public protocol CloudformationClientProtocol {
    typealias CancelUpdateStackEventLoopFutureAsyncType = (
            _ input: CloudformationModel.CancelUpdateStackInput) -> EventLoopFuture<Void>
    typealias ContinueUpdateRollbackEventLoopFutureAsyncType = (
            _ input: CloudformationModel.ContinueUpdateRollbackInput) -> EventLoopFuture<CloudformationModel.ContinueUpdateRollbackOutputForContinueUpdateRollback>
    typealias CreateChangeSetEventLoopFutureAsyncType = (
            _ input: CloudformationModel.CreateChangeSetInput) -> EventLoopFuture<CloudformationModel.CreateChangeSetOutputForCreateChangeSet>
    typealias CreateStackEventLoopFutureAsyncType = (
            _ input: CloudformationModel.CreateStackInput) -> EventLoopFuture<CloudformationModel.CreateStackOutputForCreateStack>
    typealias CreateStackInstancesEventLoopFutureAsyncType = (
            _ input: CloudformationModel.CreateStackInstancesInput) -> EventLoopFuture<CloudformationModel.CreateStackInstancesOutputForCreateStackInstances>
    typealias CreateStackSetEventLoopFutureAsyncType = (
            _ input: CloudformationModel.CreateStackSetInput) -> EventLoopFuture<CloudformationModel.CreateStackSetOutputForCreateStackSet>
    typealias DeleteChangeSetEventLoopFutureAsyncType = (
            _ input: CloudformationModel.DeleteChangeSetInput) -> EventLoopFuture<CloudformationModel.DeleteChangeSetOutputForDeleteChangeSet>
    typealias DeleteStackEventLoopFutureAsyncType = (
            _ input: CloudformationModel.DeleteStackInput) -> EventLoopFuture<Void>
    typealias DeleteStackInstancesEventLoopFutureAsyncType = (
            _ input: CloudformationModel.DeleteStackInstancesInput) -> EventLoopFuture<CloudformationModel.DeleteStackInstancesOutputForDeleteStackInstances>
    typealias DeleteStackSetEventLoopFutureAsyncType = (
            _ input: CloudformationModel.DeleteStackSetInput) -> EventLoopFuture<CloudformationModel.DeleteStackSetOutputForDeleteStackSet>
    typealias DeregisterTypeEventLoopFutureAsyncType = (
            _ input: CloudformationModel.DeregisterTypeInput) -> EventLoopFuture<CloudformationModel.DeregisterTypeOutputForDeregisterType>
    typealias DescribeAccountLimitsEventLoopFutureAsyncType = (
            _ input: CloudformationModel.DescribeAccountLimitsInput) -> EventLoopFuture<CloudformationModel.DescribeAccountLimitsOutputForDescribeAccountLimits>
    typealias DescribeChangeSetEventLoopFutureAsyncType = (
            _ input: CloudformationModel.DescribeChangeSetInput) -> EventLoopFuture<CloudformationModel.DescribeChangeSetOutputForDescribeChangeSet>
    typealias DescribeStackDriftDetectionStatusEventLoopFutureAsyncType = (
            _ input: CloudformationModel.DescribeStackDriftDetectionStatusInput) -> EventLoopFuture<CloudformationModel.DescribeStackDriftDetectionStatusOutputForDescribeStackDriftDetectionStatus>
    typealias DescribeStackEventsEventLoopFutureAsyncType = (
            _ input: CloudformationModel.DescribeStackEventsInput) -> EventLoopFuture<CloudformationModel.DescribeStackEventsOutputForDescribeStackEvents>
    typealias DescribeStackInstanceEventLoopFutureAsyncType = (
            _ input: CloudformationModel.DescribeStackInstanceInput) -> EventLoopFuture<CloudformationModel.DescribeStackInstanceOutputForDescribeStackInstance>
    typealias DescribeStackResourceEventLoopFutureAsyncType = (
            _ input: CloudformationModel.DescribeStackResourceInput) -> EventLoopFuture<CloudformationModel.DescribeStackResourceOutputForDescribeStackResource>
    typealias DescribeStackResourceDriftsEventLoopFutureAsyncType = (
            _ input: CloudformationModel.DescribeStackResourceDriftsInput) -> EventLoopFuture<CloudformationModel.DescribeStackResourceDriftsOutputForDescribeStackResourceDrifts>
    typealias DescribeStackResourcesEventLoopFutureAsyncType = (
            _ input: CloudformationModel.DescribeStackResourcesInput) -> EventLoopFuture<CloudformationModel.DescribeStackResourcesOutputForDescribeStackResources>
    typealias DescribeStackSetEventLoopFutureAsyncType = (
            _ input: CloudformationModel.DescribeStackSetInput) -> EventLoopFuture<CloudformationModel.DescribeStackSetOutputForDescribeStackSet>
    typealias DescribeStackSetOperationEventLoopFutureAsyncType = (
            _ input: CloudformationModel.DescribeStackSetOperationInput) -> EventLoopFuture<CloudformationModel.DescribeStackSetOperationOutputForDescribeStackSetOperation>
    typealias DescribeStacksEventLoopFutureAsyncType = (
            _ input: CloudformationModel.DescribeStacksInput) -> EventLoopFuture<CloudformationModel.DescribeStacksOutputForDescribeStacks>
    typealias DescribeTypeEventLoopFutureAsyncType = (
            _ input: CloudformationModel.DescribeTypeInput) -> EventLoopFuture<CloudformationModel.DescribeTypeOutputForDescribeType>
    typealias DescribeTypeRegistrationEventLoopFutureAsyncType = (
            _ input: CloudformationModel.DescribeTypeRegistrationInput) -> EventLoopFuture<CloudformationModel.DescribeTypeRegistrationOutputForDescribeTypeRegistration>
    typealias DetectStackDriftEventLoopFutureAsyncType = (
            _ input: CloudformationModel.DetectStackDriftInput) -> EventLoopFuture<CloudformationModel.DetectStackDriftOutputForDetectStackDrift>
    typealias DetectStackResourceDriftEventLoopFutureAsyncType = (
            _ input: CloudformationModel.DetectStackResourceDriftInput) -> EventLoopFuture<CloudformationModel.DetectStackResourceDriftOutputForDetectStackResourceDrift>
    typealias DetectStackSetDriftEventLoopFutureAsyncType = (
            _ input: CloudformationModel.DetectStackSetDriftInput) -> EventLoopFuture<CloudformationModel.DetectStackSetDriftOutputForDetectStackSetDrift>
    typealias EstimateTemplateCostEventLoopFutureAsyncType = (
            _ input: CloudformationModel.EstimateTemplateCostInput) -> EventLoopFuture<CloudformationModel.EstimateTemplateCostOutputForEstimateTemplateCost>
    typealias ExecuteChangeSetEventLoopFutureAsyncType = (
            _ input: CloudformationModel.ExecuteChangeSetInput) -> EventLoopFuture<CloudformationModel.ExecuteChangeSetOutputForExecuteChangeSet>
    typealias GetStackPolicyEventLoopFutureAsyncType = (
            _ input: CloudformationModel.GetStackPolicyInput) -> EventLoopFuture<CloudformationModel.GetStackPolicyOutputForGetStackPolicy>
    typealias GetTemplateEventLoopFutureAsyncType = (
            _ input: CloudformationModel.GetTemplateInput) -> EventLoopFuture<CloudformationModel.GetTemplateOutputForGetTemplate>
    typealias GetTemplateSummaryEventLoopFutureAsyncType = (
            _ input: CloudformationModel.GetTemplateSummaryInput) -> EventLoopFuture<CloudformationModel.GetTemplateSummaryOutputForGetTemplateSummary>
    typealias ListChangeSetsEventLoopFutureAsyncType = (
            _ input: CloudformationModel.ListChangeSetsInput) -> EventLoopFuture<CloudformationModel.ListChangeSetsOutputForListChangeSets>
    typealias ListExportsEventLoopFutureAsyncType = (
            _ input: CloudformationModel.ListExportsInput) -> EventLoopFuture<CloudformationModel.ListExportsOutputForListExports>
    typealias ListImportsEventLoopFutureAsyncType = (
            _ input: CloudformationModel.ListImportsInput) -> EventLoopFuture<CloudformationModel.ListImportsOutputForListImports>
    typealias ListStackInstancesEventLoopFutureAsyncType = (
            _ input: CloudformationModel.ListStackInstancesInput) -> EventLoopFuture<CloudformationModel.ListStackInstancesOutputForListStackInstances>
    typealias ListStackResourcesEventLoopFutureAsyncType = (
            _ input: CloudformationModel.ListStackResourcesInput) -> EventLoopFuture<CloudformationModel.ListStackResourcesOutputForListStackResources>
    typealias ListStackSetOperationResultsEventLoopFutureAsyncType = (
            _ input: CloudformationModel.ListStackSetOperationResultsInput) -> EventLoopFuture<CloudformationModel.ListStackSetOperationResultsOutputForListStackSetOperationResults>
    typealias ListStackSetOperationsEventLoopFutureAsyncType = (
            _ input: CloudformationModel.ListStackSetOperationsInput) -> EventLoopFuture<CloudformationModel.ListStackSetOperationsOutputForListStackSetOperations>
    typealias ListStackSetsEventLoopFutureAsyncType = (
            _ input: CloudformationModel.ListStackSetsInput) -> EventLoopFuture<CloudformationModel.ListStackSetsOutputForListStackSets>
    typealias ListStacksEventLoopFutureAsyncType = (
            _ input: CloudformationModel.ListStacksInput) -> EventLoopFuture<CloudformationModel.ListStacksOutputForListStacks>
    typealias ListTypeRegistrationsEventLoopFutureAsyncType = (
            _ input: CloudformationModel.ListTypeRegistrationsInput) -> EventLoopFuture<CloudformationModel.ListTypeRegistrationsOutputForListTypeRegistrations>
    typealias ListTypeVersionsEventLoopFutureAsyncType = (
            _ input: CloudformationModel.ListTypeVersionsInput) -> EventLoopFuture<CloudformationModel.ListTypeVersionsOutputForListTypeVersions>
    typealias ListTypesEventLoopFutureAsyncType = (
            _ input: CloudformationModel.ListTypesInput) -> EventLoopFuture<CloudformationModel.ListTypesOutputForListTypes>
    typealias RecordHandlerProgressEventLoopFutureAsyncType = (
            _ input: CloudformationModel.RecordHandlerProgressInput) -> EventLoopFuture<CloudformationModel.RecordHandlerProgressOutputForRecordHandlerProgress>
    typealias RegisterTypeEventLoopFutureAsyncType = (
            _ input: CloudformationModel.RegisterTypeInput) -> EventLoopFuture<CloudformationModel.RegisterTypeOutputForRegisterType>
    typealias SetStackPolicyEventLoopFutureAsyncType = (
            _ input: CloudformationModel.SetStackPolicyInput) -> EventLoopFuture<Void>
    typealias SetTypeDefaultVersionEventLoopFutureAsyncType = (
            _ input: CloudformationModel.SetTypeDefaultVersionInput) -> EventLoopFuture<CloudformationModel.SetTypeDefaultVersionOutputForSetTypeDefaultVersion>
    typealias SignalResourceEventLoopFutureAsyncType = (
            _ input: CloudformationModel.SignalResourceInput) -> EventLoopFuture<Void>
    typealias StopStackSetOperationEventLoopFutureAsyncType = (
            _ input: CloudformationModel.StopStackSetOperationInput) -> EventLoopFuture<CloudformationModel.StopStackSetOperationOutputForStopStackSetOperation>
    typealias UpdateStackEventLoopFutureAsyncType = (
            _ input: CloudformationModel.UpdateStackInput) -> EventLoopFuture<CloudformationModel.UpdateStackOutputForUpdateStack>
    typealias UpdateStackInstancesEventLoopFutureAsyncType = (
            _ input: CloudformationModel.UpdateStackInstancesInput) -> EventLoopFuture<CloudformationModel.UpdateStackInstancesOutputForUpdateStackInstances>
    typealias UpdateStackSetEventLoopFutureAsyncType = (
            _ input: CloudformationModel.UpdateStackSetInput) -> EventLoopFuture<CloudformationModel.UpdateStackSetOutputForUpdateStackSet>
    typealias UpdateTerminationProtectionEventLoopFutureAsyncType = (
            _ input: CloudformationModel.UpdateTerminationProtectionInput) -> EventLoopFuture<CloudformationModel.UpdateTerminationProtectionOutputForUpdateTerminationProtection>
    typealias ValidateTemplateEventLoopFutureAsyncType = (
            _ input: CloudformationModel.ValidateTemplateInput) -> EventLoopFuture<CloudformationModel.ValidateTemplateOutputForValidateTemplate>

    /**
     Invokes the CancelUpdateStack operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CancelUpdateStackInput object being passed to this operation.
           The possible errors are: tokenAlreadyExists.
     */
    func cancelUpdateStack(
            input: CloudformationModel.CancelUpdateStackInput) -> EventLoopFuture<Void>

    /**
     Invokes the ContinueUpdateRollback operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ContinueUpdateRollbackInput object being passed to this operation.
     - Returns: A future to the ContinueUpdateRollbackOutputForContinueUpdateRollback object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: tokenAlreadyExists.
     */
    func continueUpdateRollback(
            input: CloudformationModel.ContinueUpdateRollbackInput) -> EventLoopFuture<CloudformationModel.ContinueUpdateRollbackOutputForContinueUpdateRollback>

    /**
     Invokes the CreateChangeSet operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateChangeSetInput object being passed to this operation.
     - Returns: A future to the CreateChangeSetOutputForCreateChangeSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: alreadyExists, insufficientCapabilities, limitExceeded.
     */
    func createChangeSet(
            input: CloudformationModel.CreateChangeSetInput) -> EventLoopFuture<CloudformationModel.CreateChangeSetOutputForCreateChangeSet>

    /**
     Invokes the CreateStack operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateStackInput object being passed to this operation.
     - Returns: A future to the CreateStackOutputForCreateStack object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: alreadyExists, insufficientCapabilities, limitExceeded, tokenAlreadyExists.
     */
    func createStack(
            input: CloudformationModel.CreateStackInput) -> EventLoopFuture<CloudformationModel.CreateStackOutputForCreateStack>

    /**
     Invokes the CreateStackInstances operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateStackInstancesInput object being passed to this operation.
     - Returns: A future to the CreateStackInstancesOutputForCreateStackInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidOperation, limitExceeded, operationIdAlreadyExists, operationInProgress, stackSetNotFound, staleRequest.
     */
    func createStackInstances(
            input: CloudformationModel.CreateStackInstancesInput) -> EventLoopFuture<CloudformationModel.CreateStackInstancesOutputForCreateStackInstances>

    /**
     Invokes the CreateStackSet operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated CreateStackSetInput object being passed to this operation.
     - Returns: A future to the CreateStackSetOutputForCreateStackSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: createdButModified, limitExceeded, nameAlreadyExists.
     */
    func createStackSet(
            input: CloudformationModel.CreateStackSetInput) -> EventLoopFuture<CloudformationModel.CreateStackSetOutputForCreateStackSet>

    /**
     Invokes the DeleteChangeSet operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteChangeSetInput object being passed to this operation.
     - Returns: A future to the DeleteChangeSetOutputForDeleteChangeSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidChangeSetStatus.
     */
    func deleteChangeSet(
            input: CloudformationModel.DeleteChangeSetInput) -> EventLoopFuture<CloudformationModel.DeleteChangeSetOutputForDeleteChangeSet>

    /**
     Invokes the DeleteStack operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteStackInput object being passed to this operation.
           The possible errors are: tokenAlreadyExists.
     */
    func deleteStack(
            input: CloudformationModel.DeleteStackInput) -> EventLoopFuture<Void>

    /**
     Invokes the DeleteStackInstances operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteStackInstancesInput object being passed to this operation.
     - Returns: A future to the DeleteStackInstancesOutputForDeleteStackInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidOperation, operationIdAlreadyExists, operationInProgress, stackSetNotFound, staleRequest.
     */
    func deleteStackInstances(
            input: CloudformationModel.DeleteStackInstancesInput) -> EventLoopFuture<CloudformationModel.DeleteStackInstancesOutputForDeleteStackInstances>

    /**
     Invokes the DeleteStackSet operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteStackSetInput object being passed to this operation.
     - Returns: A future to the DeleteStackSetOutputForDeleteStackSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: operationInProgress, stackSetNotEmpty.
     */
    func deleteStackSet(
            input: CloudformationModel.DeleteStackSetInput) -> EventLoopFuture<CloudformationModel.DeleteStackSetOutputForDeleteStackSet>

    /**
     Invokes the DeregisterType operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeregisterTypeInput object being passed to this operation.
     - Returns: A future to the DeregisterTypeOutputForDeregisterType object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: cFNRegistry, typeNotFound.
     */
    func deregisterType(
            input: CloudformationModel.DeregisterTypeInput) -> EventLoopFuture<CloudformationModel.DeregisterTypeOutputForDeregisterType>

    /**
     Invokes the DescribeAccountLimits operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeAccountLimitsInput object being passed to this operation.
     - Returns: A future to the DescribeAccountLimitsOutputForDescribeAccountLimits object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeAccountLimits(
            input: CloudformationModel.DescribeAccountLimitsInput) -> EventLoopFuture<CloudformationModel.DescribeAccountLimitsOutputForDescribeAccountLimits>

    /**
     Invokes the DescribeChangeSet operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeChangeSetInput object being passed to this operation.
     - Returns: A future to the DescribeChangeSetOutputForDescribeChangeSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: changeSetNotFound.
     */
    func describeChangeSet(
            input: CloudformationModel.DescribeChangeSetInput) -> EventLoopFuture<CloudformationModel.DescribeChangeSetOutputForDescribeChangeSet>

    /**
     Invokes the DescribeStackDriftDetectionStatus operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeStackDriftDetectionStatusInput object being passed to this operation.
     - Returns: A future to the DescribeStackDriftDetectionStatusOutputForDescribeStackDriftDetectionStatus object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeStackDriftDetectionStatus(
            input: CloudformationModel.DescribeStackDriftDetectionStatusInput) -> EventLoopFuture<CloudformationModel.DescribeStackDriftDetectionStatusOutputForDescribeStackDriftDetectionStatus>

    /**
     Invokes the DescribeStackEvents operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeStackEventsInput object being passed to this operation.
     - Returns: A future to the DescribeStackEventsOutputForDescribeStackEvents object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeStackEvents(
            input: CloudformationModel.DescribeStackEventsInput) -> EventLoopFuture<CloudformationModel.DescribeStackEventsOutputForDescribeStackEvents>

    /**
     Invokes the DescribeStackInstance operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeStackInstanceInput object being passed to this operation.
     - Returns: A future to the DescribeStackInstanceOutputForDescribeStackInstance object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: stackInstanceNotFound, stackSetNotFound.
     */
    func describeStackInstance(
            input: CloudformationModel.DescribeStackInstanceInput) -> EventLoopFuture<CloudformationModel.DescribeStackInstanceOutputForDescribeStackInstance>

    /**
     Invokes the DescribeStackResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeStackResourceInput object being passed to this operation.
     - Returns: A future to the DescribeStackResourceOutputForDescribeStackResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeStackResource(
            input: CloudformationModel.DescribeStackResourceInput) -> EventLoopFuture<CloudformationModel.DescribeStackResourceOutputForDescribeStackResource>

    /**
     Invokes the DescribeStackResourceDrifts operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeStackResourceDriftsInput object being passed to this operation.
     - Returns: A future to the DescribeStackResourceDriftsOutputForDescribeStackResourceDrifts object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeStackResourceDrifts(
            input: CloudformationModel.DescribeStackResourceDriftsInput) -> EventLoopFuture<CloudformationModel.DescribeStackResourceDriftsOutputForDescribeStackResourceDrifts>

    /**
     Invokes the DescribeStackResources operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeStackResourcesInput object being passed to this operation.
     - Returns: A future to the DescribeStackResourcesOutputForDescribeStackResources object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeStackResources(
            input: CloudformationModel.DescribeStackResourcesInput) -> EventLoopFuture<CloudformationModel.DescribeStackResourcesOutputForDescribeStackResources>

    /**
     Invokes the DescribeStackSet operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeStackSetInput object being passed to this operation.
     - Returns: A future to the DescribeStackSetOutputForDescribeStackSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: stackSetNotFound.
     */
    func describeStackSet(
            input: CloudformationModel.DescribeStackSetInput) -> EventLoopFuture<CloudformationModel.DescribeStackSetOutputForDescribeStackSet>

    /**
     Invokes the DescribeStackSetOperation operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeStackSetOperationInput object being passed to this operation.
     - Returns: A future to the DescribeStackSetOperationOutputForDescribeStackSetOperation object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: operationNotFound, stackSetNotFound.
     */
    func describeStackSetOperation(
            input: CloudformationModel.DescribeStackSetOperationInput) -> EventLoopFuture<CloudformationModel.DescribeStackSetOperationOutputForDescribeStackSetOperation>

    /**
     Invokes the DescribeStacks operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeStacksInput object being passed to this operation.
     - Returns: A future to the DescribeStacksOutputForDescribeStacks object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeStacks(
            input: CloudformationModel.DescribeStacksInput) -> EventLoopFuture<CloudformationModel.DescribeStacksOutputForDescribeStacks>

    /**
     Invokes the DescribeType operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeTypeInput object being passed to this operation.
     - Returns: A future to the DescribeTypeOutputForDescribeType object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: cFNRegistry, typeNotFound.
     */
    func describeType(
            input: CloudformationModel.DescribeTypeInput) -> EventLoopFuture<CloudformationModel.DescribeTypeOutputForDescribeType>

    /**
     Invokes the DescribeTypeRegistration operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeTypeRegistrationInput object being passed to this operation.
     - Returns: A future to the DescribeTypeRegistrationOutputForDescribeTypeRegistration object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: cFNRegistry.
     */
    func describeTypeRegistration(
            input: CloudformationModel.DescribeTypeRegistrationInput) -> EventLoopFuture<CloudformationModel.DescribeTypeRegistrationOutputForDescribeTypeRegistration>

    /**
     Invokes the DetectStackDrift operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DetectStackDriftInput object being passed to this operation.
     - Returns: A future to the DetectStackDriftOutputForDetectStackDrift object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func detectStackDrift(
            input: CloudformationModel.DetectStackDriftInput) -> EventLoopFuture<CloudformationModel.DetectStackDriftOutputForDetectStackDrift>

    /**
     Invokes the DetectStackResourceDrift operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DetectStackResourceDriftInput object being passed to this operation.
     - Returns: A future to the DetectStackResourceDriftOutputForDetectStackResourceDrift object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func detectStackResourceDrift(
            input: CloudformationModel.DetectStackResourceDriftInput) -> EventLoopFuture<CloudformationModel.DetectStackResourceDriftOutputForDetectStackResourceDrift>

    /**
     Invokes the DetectStackSetDrift operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DetectStackSetDriftInput object being passed to this operation.
     - Returns: A future to the DetectStackSetDriftOutputForDetectStackSetDrift object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidOperation, operationInProgress, stackSetNotFound.
     */
    func detectStackSetDrift(
            input: CloudformationModel.DetectStackSetDriftInput) -> EventLoopFuture<CloudformationModel.DetectStackSetDriftOutputForDetectStackSetDrift>

    /**
     Invokes the EstimateTemplateCost operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated EstimateTemplateCostInput object being passed to this operation.
     - Returns: A future to the EstimateTemplateCostOutputForEstimateTemplateCost object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func estimateTemplateCost(
            input: CloudformationModel.EstimateTemplateCostInput) -> EventLoopFuture<CloudformationModel.EstimateTemplateCostOutputForEstimateTemplateCost>

    /**
     Invokes the ExecuteChangeSet operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ExecuteChangeSetInput object being passed to this operation.
     - Returns: A future to the ExecuteChangeSetOutputForExecuteChangeSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: changeSetNotFound, insufficientCapabilities, invalidChangeSetStatus, tokenAlreadyExists.
     */
    func executeChangeSet(
            input: CloudformationModel.ExecuteChangeSetInput) -> EventLoopFuture<CloudformationModel.ExecuteChangeSetOutputForExecuteChangeSet>

    /**
     Invokes the GetStackPolicy operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetStackPolicyInput object being passed to this operation.
     - Returns: A future to the GetStackPolicyOutputForGetStackPolicy object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getStackPolicy(
            input: CloudformationModel.GetStackPolicyInput) -> EventLoopFuture<CloudformationModel.GetStackPolicyOutputForGetStackPolicy>

    /**
     Invokes the GetTemplate operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetTemplateInput object being passed to this operation.
     - Returns: A future to the GetTemplateOutputForGetTemplate object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: changeSetNotFound.
     */
    func getTemplate(
            input: CloudformationModel.GetTemplateInput) -> EventLoopFuture<CloudformationModel.GetTemplateOutputForGetTemplate>

    /**
     Invokes the GetTemplateSummary operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetTemplateSummaryInput object being passed to this operation.
     - Returns: A future to the GetTemplateSummaryOutputForGetTemplateSummary object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: stackSetNotFound.
     */
    func getTemplateSummary(
            input: CloudformationModel.GetTemplateSummaryInput) -> EventLoopFuture<CloudformationModel.GetTemplateSummaryOutputForGetTemplateSummary>

    /**
     Invokes the ListChangeSets operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListChangeSetsInput object being passed to this operation.
     - Returns: A future to the ListChangeSetsOutputForListChangeSets object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listChangeSets(
            input: CloudformationModel.ListChangeSetsInput) -> EventLoopFuture<CloudformationModel.ListChangeSetsOutputForListChangeSets>

    /**
     Invokes the ListExports operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListExportsInput object being passed to this operation.
     - Returns: A future to the ListExportsOutputForListExports object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listExports(
            input: CloudformationModel.ListExportsInput) -> EventLoopFuture<CloudformationModel.ListExportsOutputForListExports>

    /**
     Invokes the ListImports operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListImportsInput object being passed to this operation.
     - Returns: A future to the ListImportsOutputForListImports object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listImports(
            input: CloudformationModel.ListImportsInput) -> EventLoopFuture<CloudformationModel.ListImportsOutputForListImports>

    /**
     Invokes the ListStackInstances operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListStackInstancesInput object being passed to this operation.
     - Returns: A future to the ListStackInstancesOutputForListStackInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: stackSetNotFound.
     */
    func listStackInstances(
            input: CloudformationModel.ListStackInstancesInput) -> EventLoopFuture<CloudformationModel.ListStackInstancesOutputForListStackInstances>

    /**
     Invokes the ListStackResources operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListStackResourcesInput object being passed to this operation.
     - Returns: A future to the ListStackResourcesOutputForListStackResources object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listStackResources(
            input: CloudformationModel.ListStackResourcesInput) -> EventLoopFuture<CloudformationModel.ListStackResourcesOutputForListStackResources>

    /**
     Invokes the ListStackSetOperationResults operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListStackSetOperationResultsInput object being passed to this operation.
     - Returns: A future to the ListStackSetOperationResultsOutputForListStackSetOperationResults object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: operationNotFound, stackSetNotFound.
     */
    func listStackSetOperationResults(
            input: CloudformationModel.ListStackSetOperationResultsInput) -> EventLoopFuture<CloudformationModel.ListStackSetOperationResultsOutputForListStackSetOperationResults>

    /**
     Invokes the ListStackSetOperations operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListStackSetOperationsInput object being passed to this operation.
     - Returns: A future to the ListStackSetOperationsOutputForListStackSetOperations object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: stackSetNotFound.
     */
    func listStackSetOperations(
            input: CloudformationModel.ListStackSetOperationsInput) -> EventLoopFuture<CloudformationModel.ListStackSetOperationsOutputForListStackSetOperations>

    /**
     Invokes the ListStackSets operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListStackSetsInput object being passed to this operation.
     - Returns: A future to the ListStackSetsOutputForListStackSets object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listStackSets(
            input: CloudformationModel.ListStackSetsInput) -> EventLoopFuture<CloudformationModel.ListStackSetsOutputForListStackSets>

    /**
     Invokes the ListStacks operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListStacksInput object being passed to this operation.
     - Returns: A future to the ListStacksOutputForListStacks object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func listStacks(
            input: CloudformationModel.ListStacksInput) -> EventLoopFuture<CloudformationModel.ListStacksOutputForListStacks>

    /**
     Invokes the ListTypeRegistrations operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListTypeRegistrationsInput object being passed to this operation.
     - Returns: A future to the ListTypeRegistrationsOutputForListTypeRegistrations object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: cFNRegistry.
     */
    func listTypeRegistrations(
            input: CloudformationModel.ListTypeRegistrationsInput) -> EventLoopFuture<CloudformationModel.ListTypeRegistrationsOutputForListTypeRegistrations>

    /**
     Invokes the ListTypeVersions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListTypeVersionsInput object being passed to this operation.
     - Returns: A future to the ListTypeVersionsOutputForListTypeVersions object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: cFNRegistry.
     */
    func listTypeVersions(
            input: CloudformationModel.ListTypeVersionsInput) -> EventLoopFuture<CloudformationModel.ListTypeVersionsOutputForListTypeVersions>

    /**
     Invokes the ListTypes operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListTypesInput object being passed to this operation.
     - Returns: A future to the ListTypesOutputForListTypes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: cFNRegistry.
     */
    func listTypes(
            input: CloudformationModel.ListTypesInput) -> EventLoopFuture<CloudformationModel.ListTypesOutputForListTypes>

    /**
     Invokes the RecordHandlerProgress operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RecordHandlerProgressInput object being passed to this operation.
     - Returns: A future to the RecordHandlerProgressOutputForRecordHandlerProgress object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidStateTransition, operationStatusCheckFailed.
     */
    func recordHandlerProgress(
            input: CloudformationModel.RecordHandlerProgressInput) -> EventLoopFuture<CloudformationModel.RecordHandlerProgressOutputForRecordHandlerProgress>

    /**
     Invokes the RegisterType operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated RegisterTypeInput object being passed to this operation.
     - Returns: A future to the RegisterTypeOutputForRegisterType object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: cFNRegistry.
     */
    func registerType(
            input: CloudformationModel.RegisterTypeInput) -> EventLoopFuture<CloudformationModel.RegisterTypeOutputForRegisterType>

    /**
     Invokes the SetStackPolicy operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SetStackPolicyInput object being passed to this operation.
     */
    func setStackPolicy(
            input: CloudformationModel.SetStackPolicyInput) -> EventLoopFuture<Void>

    /**
     Invokes the SetTypeDefaultVersion operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SetTypeDefaultVersionInput object being passed to this operation.
     - Returns: A future to the SetTypeDefaultVersionOutputForSetTypeDefaultVersion object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: cFNRegistry, typeNotFound.
     */
    func setTypeDefaultVersion(
            input: CloudformationModel.SetTypeDefaultVersionInput) -> EventLoopFuture<CloudformationModel.SetTypeDefaultVersionOutputForSetTypeDefaultVersion>

    /**
     Invokes the SignalResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SignalResourceInput object being passed to this operation.
     */
    func signalResource(
            input: CloudformationModel.SignalResourceInput) -> EventLoopFuture<Void>

    /**
     Invokes the StopStackSetOperation operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated StopStackSetOperationInput object being passed to this operation.
     - Returns: A future to the StopStackSetOperationOutputForStopStackSetOperation object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidOperation, operationNotFound, stackSetNotFound.
     */
    func stopStackSetOperation(
            input: CloudformationModel.StopStackSetOperationInput) -> EventLoopFuture<CloudformationModel.StopStackSetOperationOutputForStopStackSetOperation>

    /**
     Invokes the UpdateStack operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UpdateStackInput object being passed to this operation.
     - Returns: A future to the UpdateStackOutputForUpdateStack object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: insufficientCapabilities, tokenAlreadyExists.
     */
    func updateStack(
            input: CloudformationModel.UpdateStackInput) -> EventLoopFuture<CloudformationModel.UpdateStackOutputForUpdateStack>

    /**
     Invokes the UpdateStackInstances operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UpdateStackInstancesInput object being passed to this operation.
     - Returns: A future to the UpdateStackInstancesOutputForUpdateStackInstances object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidOperation, operationIdAlreadyExists, operationInProgress, stackInstanceNotFound, stackSetNotFound, staleRequest.
     */
    func updateStackInstances(
            input: CloudformationModel.UpdateStackInstancesInput) -> EventLoopFuture<CloudformationModel.UpdateStackInstancesOutputForUpdateStackInstances>

    /**
     Invokes the UpdateStackSet operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UpdateStackSetInput object being passed to this operation.
     - Returns: A future to the UpdateStackSetOutputForUpdateStackSet object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidOperation, operationIdAlreadyExists, operationInProgress, stackInstanceNotFound, stackSetNotFound, staleRequest.
     */
    func updateStackSet(
            input: CloudformationModel.UpdateStackSetInput) -> EventLoopFuture<CloudformationModel.UpdateStackSetOutputForUpdateStackSet>

    /**
     Invokes the UpdateTerminationProtection operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UpdateTerminationProtectionInput object being passed to this operation.
     - Returns: A future to the UpdateTerminationProtectionOutputForUpdateTerminationProtection object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func updateTerminationProtection(
            input: CloudformationModel.UpdateTerminationProtectionInput) -> EventLoopFuture<CloudformationModel.UpdateTerminationProtectionOutputForUpdateTerminationProtection>

    /**
     Invokes the ValidateTemplate operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ValidateTemplateInput object being passed to this operation.
     - Returns: A future to the ValidateTemplateOutputForValidateTemplate object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func validateTemplate(
            input: CloudformationModel.ValidateTemplateInput) -> EventLoopFuture<CloudformationModel.ValidateTemplateOutputForValidateTemplate>
}
