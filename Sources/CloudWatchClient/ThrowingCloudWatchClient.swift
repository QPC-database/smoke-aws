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
// ThrowingCloudWatchClient.swift
// CloudWatchClient
//

import Foundation
import CloudWatchModel
import SmokeAWSCore
import SmokeHTTPClient
import NIO

/**
 Mock Client for the CloudWatch service that by default always throws from its methods.
 */
public struct ThrowingCloudWatchClient: CloudWatchClientProtocol {
    let error: CloudWatchError
    let eventLoop: EventLoop
    let typedErrorProvider: (Swift.Error) -> CloudWatchError = { $0.asTypedError() }
    let deleteAlarmsEventLoopFutureAsyncOverride: DeleteAlarmsEventLoopFutureAsyncType?
    let deleteAnomalyDetectorEventLoopFutureAsyncOverride: DeleteAnomalyDetectorEventLoopFutureAsyncType?
    let deleteDashboardsEventLoopFutureAsyncOverride: DeleteDashboardsEventLoopFutureAsyncType?
    let deleteInsightRulesEventLoopFutureAsyncOverride: DeleteInsightRulesEventLoopFutureAsyncType?
    let describeAlarmHistoryEventLoopFutureAsyncOverride: DescribeAlarmHistoryEventLoopFutureAsyncType?
    let describeAlarmsEventLoopFutureAsyncOverride: DescribeAlarmsEventLoopFutureAsyncType?
    let describeAlarmsForMetricEventLoopFutureAsyncOverride: DescribeAlarmsForMetricEventLoopFutureAsyncType?
    let describeAnomalyDetectorsEventLoopFutureAsyncOverride: DescribeAnomalyDetectorsEventLoopFutureAsyncType?
    let describeInsightRulesEventLoopFutureAsyncOverride: DescribeInsightRulesEventLoopFutureAsyncType?
    let disableAlarmActionsEventLoopFutureAsyncOverride: DisableAlarmActionsEventLoopFutureAsyncType?
    let disableInsightRulesEventLoopFutureAsyncOverride: DisableInsightRulesEventLoopFutureAsyncType?
    let enableAlarmActionsEventLoopFutureAsyncOverride: EnableAlarmActionsEventLoopFutureAsyncType?
    let enableInsightRulesEventLoopFutureAsyncOverride: EnableInsightRulesEventLoopFutureAsyncType?
    let getDashboardEventLoopFutureAsyncOverride: GetDashboardEventLoopFutureAsyncType?
    let getInsightRuleReportEventLoopFutureAsyncOverride: GetInsightRuleReportEventLoopFutureAsyncType?
    let getMetricDataEventLoopFutureAsyncOverride: GetMetricDataEventLoopFutureAsyncType?
    let getMetricStatisticsEventLoopFutureAsyncOverride: GetMetricStatisticsEventLoopFutureAsyncType?
    let getMetricWidgetImageEventLoopFutureAsyncOverride: GetMetricWidgetImageEventLoopFutureAsyncType?
    let listDashboardsEventLoopFutureAsyncOverride: ListDashboardsEventLoopFutureAsyncType?
    let listMetricsEventLoopFutureAsyncOverride: ListMetricsEventLoopFutureAsyncType?
    let listTagsForResourceEventLoopFutureAsyncOverride: ListTagsForResourceEventLoopFutureAsyncType?
    let putAnomalyDetectorEventLoopFutureAsyncOverride: PutAnomalyDetectorEventLoopFutureAsyncType?
    let putCompositeAlarmEventLoopFutureAsyncOverride: PutCompositeAlarmEventLoopFutureAsyncType?
    let putDashboardEventLoopFutureAsyncOverride: PutDashboardEventLoopFutureAsyncType?
    let putInsightRuleEventLoopFutureAsyncOverride: PutInsightRuleEventLoopFutureAsyncType?
    let putMetricAlarmEventLoopFutureAsyncOverride: PutMetricAlarmEventLoopFutureAsyncType?
    let putMetricDataEventLoopFutureAsyncOverride: PutMetricDataEventLoopFutureAsyncType?
    let setAlarmStateEventLoopFutureAsyncOverride: SetAlarmStateEventLoopFutureAsyncType?
    let tagResourceEventLoopFutureAsyncOverride: TagResourceEventLoopFutureAsyncType?
    let untagResourceEventLoopFutureAsyncOverride: UntagResourceEventLoopFutureAsyncType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(
            error: CloudWatchError,
            eventLoop: EventLoop,
            deleteAlarmsEventLoopFutureAsync: DeleteAlarmsEventLoopFutureAsyncType? = nil,
            deleteAnomalyDetectorEventLoopFutureAsync: DeleteAnomalyDetectorEventLoopFutureAsyncType? = nil,
            deleteDashboardsEventLoopFutureAsync: DeleteDashboardsEventLoopFutureAsyncType? = nil,
            deleteInsightRulesEventLoopFutureAsync: DeleteInsightRulesEventLoopFutureAsyncType? = nil,
            describeAlarmHistoryEventLoopFutureAsync: DescribeAlarmHistoryEventLoopFutureAsyncType? = nil,
            describeAlarmsEventLoopFutureAsync: DescribeAlarmsEventLoopFutureAsyncType? = nil,
            describeAlarmsForMetricEventLoopFutureAsync: DescribeAlarmsForMetricEventLoopFutureAsyncType? = nil,
            describeAnomalyDetectorsEventLoopFutureAsync: DescribeAnomalyDetectorsEventLoopFutureAsyncType? = nil,
            describeInsightRulesEventLoopFutureAsync: DescribeInsightRulesEventLoopFutureAsyncType? = nil,
            disableAlarmActionsEventLoopFutureAsync: DisableAlarmActionsEventLoopFutureAsyncType? = nil,
            disableInsightRulesEventLoopFutureAsync: DisableInsightRulesEventLoopFutureAsyncType? = nil,
            enableAlarmActionsEventLoopFutureAsync: EnableAlarmActionsEventLoopFutureAsyncType? = nil,
            enableInsightRulesEventLoopFutureAsync: EnableInsightRulesEventLoopFutureAsyncType? = nil,
            getDashboardEventLoopFutureAsync: GetDashboardEventLoopFutureAsyncType? = nil,
            getInsightRuleReportEventLoopFutureAsync: GetInsightRuleReportEventLoopFutureAsyncType? = nil,
            getMetricDataEventLoopFutureAsync: GetMetricDataEventLoopFutureAsyncType? = nil,
            getMetricStatisticsEventLoopFutureAsync: GetMetricStatisticsEventLoopFutureAsyncType? = nil,
            getMetricWidgetImageEventLoopFutureAsync: GetMetricWidgetImageEventLoopFutureAsyncType? = nil,
            listDashboardsEventLoopFutureAsync: ListDashboardsEventLoopFutureAsyncType? = nil,
            listMetricsEventLoopFutureAsync: ListMetricsEventLoopFutureAsyncType? = nil,
            listTagsForResourceEventLoopFutureAsync: ListTagsForResourceEventLoopFutureAsyncType? = nil,
            putAnomalyDetectorEventLoopFutureAsync: PutAnomalyDetectorEventLoopFutureAsyncType? = nil,
            putCompositeAlarmEventLoopFutureAsync: PutCompositeAlarmEventLoopFutureAsyncType? = nil,
            putDashboardEventLoopFutureAsync: PutDashboardEventLoopFutureAsyncType? = nil,
            putInsightRuleEventLoopFutureAsync: PutInsightRuleEventLoopFutureAsyncType? = nil,
            putMetricAlarmEventLoopFutureAsync: PutMetricAlarmEventLoopFutureAsyncType? = nil,
            putMetricDataEventLoopFutureAsync: PutMetricDataEventLoopFutureAsyncType? = nil,
            setAlarmStateEventLoopFutureAsync: SetAlarmStateEventLoopFutureAsyncType? = nil,
            tagResourceEventLoopFutureAsync: TagResourceEventLoopFutureAsyncType? = nil,
            untagResourceEventLoopFutureAsync: UntagResourceEventLoopFutureAsyncType? = nil) {
        self.error = error
        self.eventLoop = eventLoop
        
        self.deleteAlarmsEventLoopFutureAsyncOverride = deleteAlarmsEventLoopFutureAsync
        self.deleteAnomalyDetectorEventLoopFutureAsyncOverride = deleteAnomalyDetectorEventLoopFutureAsync
        self.deleteDashboardsEventLoopFutureAsyncOverride = deleteDashboardsEventLoopFutureAsync
        self.deleteInsightRulesEventLoopFutureAsyncOverride = deleteInsightRulesEventLoopFutureAsync
        self.describeAlarmHistoryEventLoopFutureAsyncOverride = describeAlarmHistoryEventLoopFutureAsync
        self.describeAlarmsEventLoopFutureAsyncOverride = describeAlarmsEventLoopFutureAsync
        self.describeAlarmsForMetricEventLoopFutureAsyncOverride = describeAlarmsForMetricEventLoopFutureAsync
        self.describeAnomalyDetectorsEventLoopFutureAsyncOverride = describeAnomalyDetectorsEventLoopFutureAsync
        self.describeInsightRulesEventLoopFutureAsyncOverride = describeInsightRulesEventLoopFutureAsync
        self.disableAlarmActionsEventLoopFutureAsyncOverride = disableAlarmActionsEventLoopFutureAsync
        self.disableInsightRulesEventLoopFutureAsyncOverride = disableInsightRulesEventLoopFutureAsync
        self.enableAlarmActionsEventLoopFutureAsyncOverride = enableAlarmActionsEventLoopFutureAsync
        self.enableInsightRulesEventLoopFutureAsyncOverride = enableInsightRulesEventLoopFutureAsync
        self.getDashboardEventLoopFutureAsyncOverride = getDashboardEventLoopFutureAsync
        self.getInsightRuleReportEventLoopFutureAsyncOverride = getInsightRuleReportEventLoopFutureAsync
        self.getMetricDataEventLoopFutureAsyncOverride = getMetricDataEventLoopFutureAsync
        self.getMetricStatisticsEventLoopFutureAsyncOverride = getMetricStatisticsEventLoopFutureAsync
        self.getMetricWidgetImageEventLoopFutureAsyncOverride = getMetricWidgetImageEventLoopFutureAsync
        self.listDashboardsEventLoopFutureAsyncOverride = listDashboardsEventLoopFutureAsync
        self.listMetricsEventLoopFutureAsyncOverride = listMetricsEventLoopFutureAsync
        self.listTagsForResourceEventLoopFutureAsyncOverride = listTagsForResourceEventLoopFutureAsync
        self.putAnomalyDetectorEventLoopFutureAsyncOverride = putAnomalyDetectorEventLoopFutureAsync
        self.putCompositeAlarmEventLoopFutureAsyncOverride = putCompositeAlarmEventLoopFutureAsync
        self.putDashboardEventLoopFutureAsyncOverride = putDashboardEventLoopFutureAsync
        self.putInsightRuleEventLoopFutureAsyncOverride = putInsightRuleEventLoopFutureAsync
        self.putMetricAlarmEventLoopFutureAsyncOverride = putMetricAlarmEventLoopFutureAsync
        self.putMetricDataEventLoopFutureAsyncOverride = putMetricDataEventLoopFutureAsync
        self.setAlarmStateEventLoopFutureAsyncOverride = setAlarmStateEventLoopFutureAsync
        self.tagResourceEventLoopFutureAsyncOverride = tagResourceEventLoopFutureAsync
        self.untagResourceEventLoopFutureAsyncOverride = untagResourceEventLoopFutureAsync
    }

    /**
     Invokes the DeleteAlarms operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteAlarmsInput object being passed to this operation.
           The possible errors are: resourceNotFound.
     */
    public func deleteAlarms(
            input: CloudWatchModel.DeleteAlarmsInput) -> EventLoopFuture<Void> {
        if let deleteAlarmsEventLoopFutureAsyncOverride = deleteAlarmsEventLoopFutureAsyncOverride {
            return deleteAlarmsEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the DeleteAnomalyDetector operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteAnomalyDetectorInput object being passed to this operation.
     - Returns: A future to the DeleteAnomalyDetectorOutputForDeleteAnomalyDetector object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: internalService, invalidParameterValue, missingRequiredParameter, resourceNotFound.
     */
    public func deleteAnomalyDetector(
            input: CloudWatchModel.DeleteAnomalyDetectorInput) -> EventLoopFuture<CloudWatchModel.DeleteAnomalyDetectorOutputForDeleteAnomalyDetector> {
        if let deleteAnomalyDetectorEventLoopFutureAsyncOverride = deleteAnomalyDetectorEventLoopFutureAsyncOverride {
            return deleteAnomalyDetectorEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: DeleteAnomalyDetectorOutputForDeleteAnomalyDetector.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the DeleteDashboards operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteDashboardsInput object being passed to this operation.
     - Returns: A future to the DeleteDashboardsOutputForDeleteDashboards object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dashboardNotFound, internalService, invalidParameterValue.
     */
    public func deleteDashboards(
            input: CloudWatchModel.DeleteDashboardsInput) -> EventLoopFuture<CloudWatchModel.DeleteDashboardsOutputForDeleteDashboards> {
        if let deleteDashboardsEventLoopFutureAsyncOverride = deleteDashboardsEventLoopFutureAsyncOverride {
            return deleteDashboardsEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: DeleteDashboardsOutputForDeleteDashboards.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the DeleteInsightRules operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteInsightRulesInput object being passed to this operation.
     - Returns: A future to the DeleteInsightRulesOutputForDeleteInsightRules object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameterValue, missingRequiredParameter.
     */
    public func deleteInsightRules(
            input: CloudWatchModel.DeleteInsightRulesInput) -> EventLoopFuture<CloudWatchModel.DeleteInsightRulesOutputForDeleteInsightRules> {
        if let deleteInsightRulesEventLoopFutureAsyncOverride = deleteInsightRulesEventLoopFutureAsyncOverride {
            return deleteInsightRulesEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: DeleteInsightRulesOutputForDeleteInsightRules.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeAlarmHistory operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeAlarmHistoryInput object being passed to this operation.
     - Returns: A future to the DescribeAlarmHistoryOutputForDescribeAlarmHistory object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidNextToken.
     */
    public func describeAlarmHistory(
            input: CloudWatchModel.DescribeAlarmHistoryInput) -> EventLoopFuture<CloudWatchModel.DescribeAlarmHistoryOutputForDescribeAlarmHistory> {
        if let describeAlarmHistoryEventLoopFutureAsyncOverride = describeAlarmHistoryEventLoopFutureAsyncOverride {
            return describeAlarmHistoryEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: DescribeAlarmHistoryOutputForDescribeAlarmHistory.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeAlarms operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeAlarmsInput object being passed to this operation.
     - Returns: A future to the DescribeAlarmsOutputForDescribeAlarms object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidNextToken.
     */
    public func describeAlarms(
            input: CloudWatchModel.DescribeAlarmsInput) -> EventLoopFuture<CloudWatchModel.DescribeAlarmsOutputForDescribeAlarms> {
        if let describeAlarmsEventLoopFutureAsyncOverride = describeAlarmsEventLoopFutureAsyncOverride {
            return describeAlarmsEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: DescribeAlarmsOutputForDescribeAlarms.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeAlarmsForMetric operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeAlarmsForMetricInput object being passed to this operation.
     - Returns: A future to the DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func describeAlarmsForMetric(
            input: CloudWatchModel.DescribeAlarmsForMetricInput) -> EventLoopFuture<CloudWatchModel.DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric> {
        if let describeAlarmsForMetricEventLoopFutureAsyncOverride = describeAlarmsForMetricEventLoopFutureAsyncOverride {
            return describeAlarmsForMetricEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeAnomalyDetectors operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeAnomalyDetectorsInput object being passed to this operation.
     - Returns: A future to the DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: internalService, invalidNextToken, invalidParameterValue.
     */
    public func describeAnomalyDetectors(
            input: CloudWatchModel.DescribeAnomalyDetectorsInput) -> EventLoopFuture<CloudWatchModel.DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors> {
        if let describeAnomalyDetectorsEventLoopFutureAsyncOverride = describeAnomalyDetectorsEventLoopFutureAsyncOverride {
            return describeAnomalyDetectorsEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the DescribeInsightRules operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeInsightRulesInput object being passed to this operation.
     - Returns: A future to the DescribeInsightRulesOutputForDescribeInsightRules object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidNextToken.
     */
    public func describeInsightRules(
            input: CloudWatchModel.DescribeInsightRulesInput) -> EventLoopFuture<CloudWatchModel.DescribeInsightRulesOutputForDescribeInsightRules> {
        if let describeInsightRulesEventLoopFutureAsyncOverride = describeInsightRulesEventLoopFutureAsyncOverride {
            return describeInsightRulesEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: DescribeInsightRulesOutputForDescribeInsightRules.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the DisableAlarmActions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DisableAlarmActionsInput object being passed to this operation.
     */
    public func disableAlarmActions(
            input: CloudWatchModel.DisableAlarmActionsInput) -> EventLoopFuture<Void> {
        if let disableAlarmActionsEventLoopFutureAsyncOverride = disableAlarmActionsEventLoopFutureAsyncOverride {
            return disableAlarmActionsEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the DisableInsightRules operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DisableInsightRulesInput object being passed to this operation.
     - Returns: A future to the DisableInsightRulesOutputForDisableInsightRules object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameterValue, missingRequiredParameter.
     */
    public func disableInsightRules(
            input: CloudWatchModel.DisableInsightRulesInput) -> EventLoopFuture<CloudWatchModel.DisableInsightRulesOutputForDisableInsightRules> {
        if let disableInsightRulesEventLoopFutureAsyncOverride = disableInsightRulesEventLoopFutureAsyncOverride {
            return disableInsightRulesEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: DisableInsightRulesOutputForDisableInsightRules.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the EnableAlarmActions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated EnableAlarmActionsInput object being passed to this operation.
     */
    public func enableAlarmActions(
            input: CloudWatchModel.EnableAlarmActionsInput) -> EventLoopFuture<Void> {
        if let enableAlarmActionsEventLoopFutureAsyncOverride = enableAlarmActionsEventLoopFutureAsyncOverride {
            return enableAlarmActionsEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the EnableInsightRules operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated EnableInsightRulesInput object being passed to this operation.
     - Returns: A future to the EnableInsightRulesOutputForEnableInsightRules object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameterValue, limitExceeded, missingRequiredParameter.
     */
    public func enableInsightRules(
            input: CloudWatchModel.EnableInsightRulesInput) -> EventLoopFuture<CloudWatchModel.EnableInsightRulesOutputForEnableInsightRules> {
        if let enableInsightRulesEventLoopFutureAsyncOverride = enableInsightRulesEventLoopFutureAsyncOverride {
            return enableInsightRulesEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: EnableInsightRulesOutputForEnableInsightRules.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the GetDashboard operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetDashboardInput object being passed to this operation.
     - Returns: A future to the GetDashboardOutputForGetDashboard object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dashboardNotFound, internalService, invalidParameterValue.
     */
    public func getDashboard(
            input: CloudWatchModel.GetDashboardInput) -> EventLoopFuture<CloudWatchModel.GetDashboardOutputForGetDashboard> {
        if let getDashboardEventLoopFutureAsyncOverride = getDashboardEventLoopFutureAsyncOverride {
            return getDashboardEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: GetDashboardOutputForGetDashboard.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the GetInsightRuleReport operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetInsightRuleReportInput object being passed to this operation.
     - Returns: A future to the GetInsightRuleReportOutputForGetInsightRuleReport object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameterValue, missingRequiredParameter, resourceNotFound.
     */
    public func getInsightRuleReport(
            input: CloudWatchModel.GetInsightRuleReportInput) -> EventLoopFuture<CloudWatchModel.GetInsightRuleReportOutputForGetInsightRuleReport> {
        if let getInsightRuleReportEventLoopFutureAsyncOverride = getInsightRuleReportEventLoopFutureAsyncOverride {
            return getInsightRuleReportEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: GetInsightRuleReportOutputForGetInsightRuleReport.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the GetMetricData operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetMetricDataInput object being passed to this operation.
     - Returns: A future to the GetMetricDataOutputForGetMetricData object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidNextToken.
     */
    public func getMetricData(
            input: CloudWatchModel.GetMetricDataInput) -> EventLoopFuture<CloudWatchModel.GetMetricDataOutputForGetMetricData> {
        if let getMetricDataEventLoopFutureAsyncOverride = getMetricDataEventLoopFutureAsyncOverride {
            return getMetricDataEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: GetMetricDataOutputForGetMetricData.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the GetMetricStatistics operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetMetricStatisticsInput object being passed to this operation.
     - Returns: A future to the GetMetricStatisticsOutputForGetMetricStatistics object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: internalService, invalidParameterCombination, invalidParameterValue, missingRequiredParameter.
     */
    public func getMetricStatistics(
            input: CloudWatchModel.GetMetricStatisticsInput) -> EventLoopFuture<CloudWatchModel.GetMetricStatisticsOutputForGetMetricStatistics> {
        if let getMetricStatisticsEventLoopFutureAsyncOverride = getMetricStatisticsEventLoopFutureAsyncOverride {
            return getMetricStatisticsEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: GetMetricStatisticsOutputForGetMetricStatistics.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the GetMetricWidgetImage operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetMetricWidgetImageInput object being passed to this operation.
     - Returns: A future to the GetMetricWidgetImageOutputForGetMetricWidgetImage object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    public func getMetricWidgetImage(
            input: CloudWatchModel.GetMetricWidgetImageInput) -> EventLoopFuture<CloudWatchModel.GetMetricWidgetImageOutputForGetMetricWidgetImage> {
        if let getMetricWidgetImageEventLoopFutureAsyncOverride = getMetricWidgetImageEventLoopFutureAsyncOverride {
            return getMetricWidgetImageEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: GetMetricWidgetImageOutputForGetMetricWidgetImage.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the ListDashboards operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListDashboardsInput object being passed to this operation.
     - Returns: A future to the ListDashboardsOutputForListDashboards object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: internalService, invalidParameterValue.
     */
    public func listDashboards(
            input: CloudWatchModel.ListDashboardsInput) -> EventLoopFuture<CloudWatchModel.ListDashboardsOutputForListDashboards> {
        if let listDashboardsEventLoopFutureAsyncOverride = listDashboardsEventLoopFutureAsyncOverride {
            return listDashboardsEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: ListDashboardsOutputForListDashboards.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the ListMetrics operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListMetricsInput object being passed to this operation.
     - Returns: A future to the ListMetricsOutputForListMetrics object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: internalService, invalidParameterValue.
     */
    public func listMetrics(
            input: CloudWatchModel.ListMetricsInput) -> EventLoopFuture<CloudWatchModel.ListMetricsOutputForListMetrics> {
        if let listMetricsEventLoopFutureAsyncOverride = listMetricsEventLoopFutureAsyncOverride {
            return listMetricsEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: ListMetricsOutputForListMetrics.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the ListTagsForResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
     - Returns: A future to the ListTagsForResourceOutputForListTagsForResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: internalService, invalidParameterValue, resourceNotFound.
     */
    public func listTagsForResource(
            input: CloudWatchModel.ListTagsForResourceInput) -> EventLoopFuture<CloudWatchModel.ListTagsForResourceOutputForListTagsForResource> {
        if let listTagsForResourceEventLoopFutureAsyncOverride = listTagsForResourceEventLoopFutureAsyncOverride {
            return listTagsForResourceEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: ListTagsForResourceOutputForListTagsForResource.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the PutAnomalyDetector operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutAnomalyDetectorInput object being passed to this operation.
     - Returns: A future to the PutAnomalyDetectorOutputForPutAnomalyDetector object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: internalService, invalidParameterValue, limitExceeded, missingRequiredParameter.
     */
    public func putAnomalyDetector(
            input: CloudWatchModel.PutAnomalyDetectorInput) -> EventLoopFuture<CloudWatchModel.PutAnomalyDetectorOutputForPutAnomalyDetector> {
        if let putAnomalyDetectorEventLoopFutureAsyncOverride = putAnomalyDetectorEventLoopFutureAsyncOverride {
            return putAnomalyDetectorEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: PutAnomalyDetectorOutputForPutAnomalyDetector.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the PutCompositeAlarm operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutCompositeAlarmInput object being passed to this operation.
           The possible errors are: limitExceeded.
     */
    public func putCompositeAlarm(
            input: CloudWatchModel.PutCompositeAlarmInput) -> EventLoopFuture<Void> {
        if let putCompositeAlarmEventLoopFutureAsyncOverride = putCompositeAlarmEventLoopFutureAsyncOverride {
            return putCompositeAlarmEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the PutDashboard operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutDashboardInput object being passed to this operation.
     - Returns: A future to the PutDashboardOutputForPutDashboard object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dashboardInvalidInput, internalService.
     */
    public func putDashboard(
            input: CloudWatchModel.PutDashboardInput) -> EventLoopFuture<CloudWatchModel.PutDashboardOutputForPutDashboard> {
        if let putDashboardEventLoopFutureAsyncOverride = putDashboardEventLoopFutureAsyncOverride {
            return putDashboardEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: PutDashboardOutputForPutDashboard.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the PutInsightRule operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutInsightRuleInput object being passed to this operation.
     - Returns: A future to the PutInsightRuleOutputForPutInsightRule object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameterValue, limitExceeded, missingRequiredParameter.
     */
    public func putInsightRule(
            input: CloudWatchModel.PutInsightRuleInput) -> EventLoopFuture<CloudWatchModel.PutInsightRuleOutputForPutInsightRule> {
        if let putInsightRuleEventLoopFutureAsyncOverride = putInsightRuleEventLoopFutureAsyncOverride {
            return putInsightRuleEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: PutInsightRuleOutputForPutInsightRule.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the PutMetricAlarm operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutMetricAlarmInput object being passed to this operation.
           The possible errors are: limitExceeded.
     */
    public func putMetricAlarm(
            input: CloudWatchModel.PutMetricAlarmInput) -> EventLoopFuture<Void> {
        if let putMetricAlarmEventLoopFutureAsyncOverride = putMetricAlarmEventLoopFutureAsyncOverride {
            return putMetricAlarmEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the PutMetricData operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutMetricDataInput object being passed to this operation.
           The possible errors are: internalService, invalidParameterCombination, invalidParameterValue, missingRequiredParameter.
     */
    public func putMetricData(
            input: CloudWatchModel.PutMetricDataInput) -> EventLoopFuture<Void> {
        if let putMetricDataEventLoopFutureAsyncOverride = putMetricDataEventLoopFutureAsyncOverride {
            return putMetricDataEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the SetAlarmState operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SetAlarmStateInput object being passed to this operation.
           The possible errors are: invalidFormat, resourceNotFound.
     */
    public func setAlarmState(
            input: CloudWatchModel.SetAlarmStateInput) -> EventLoopFuture<Void> {
        if let setAlarmStateEventLoopFutureAsyncOverride = setAlarmStateEventLoopFutureAsyncOverride {
            return setAlarmStateEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: Void.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the TagResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
     - Returns: A future to the TagResourceOutputForTagResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: concurrentModification, internalService, invalidParameterValue, resourceNotFound.
     */
    public func tagResource(
            input: CloudWatchModel.TagResourceInput) -> EventLoopFuture<CloudWatchModel.TagResourceOutputForTagResource> {
        if let tagResourceEventLoopFutureAsyncOverride = tagResourceEventLoopFutureAsyncOverride {
            return tagResourceEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: TagResourceOutputForTagResource.self)
        promise.fail(error)
        
        return promise.futureResult
    }

    /**
     Invokes the UntagResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
     - Returns: A future to the UntagResourceOutputForUntagResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: concurrentModification, internalService, invalidParameterValue, resourceNotFound.
     */
    public func untagResource(
            input: CloudWatchModel.UntagResourceInput) -> EventLoopFuture<CloudWatchModel.UntagResourceOutputForUntagResource> {
        if let untagResourceEventLoopFutureAsyncOverride = untagResourceEventLoopFutureAsyncOverride {
            return untagResourceEventLoopFutureAsyncOverride(input)
        }

        let promise = self.eventLoop.makePromise(of: UntagResourceOutputForUntagResource.self)
        promise.fail(error)
        
        return promise.futureResult
    }
}
