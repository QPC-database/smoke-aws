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
// CloudWatchClientProtocol.swift
// CloudWatchClient
//

import Foundation
import CloudWatchModel
import SmokeAWSCore
import SmokeHTTPClient
import NIO

/**
 Client Protocol for the CloudWatch service.
 */
public protocol CloudWatchClientProtocol {
    typealias DeleteAlarmsEventLoopFutureAsyncType = (
            _ input: CloudWatchModel.DeleteAlarmsInput) -> EventLoopFuture<Void>
    typealias DeleteAnomalyDetectorEventLoopFutureAsyncType = (
            _ input: CloudWatchModel.DeleteAnomalyDetectorInput) -> EventLoopFuture<CloudWatchModel.DeleteAnomalyDetectorOutputForDeleteAnomalyDetector>
    typealias DeleteDashboardsEventLoopFutureAsyncType = (
            _ input: CloudWatchModel.DeleteDashboardsInput) -> EventLoopFuture<CloudWatchModel.DeleteDashboardsOutputForDeleteDashboards>
    typealias DeleteInsightRulesEventLoopFutureAsyncType = (
            _ input: CloudWatchModel.DeleteInsightRulesInput) -> EventLoopFuture<CloudWatchModel.DeleteInsightRulesOutputForDeleteInsightRules>
    typealias DescribeAlarmHistoryEventLoopFutureAsyncType = (
            _ input: CloudWatchModel.DescribeAlarmHistoryInput) -> EventLoopFuture<CloudWatchModel.DescribeAlarmHistoryOutputForDescribeAlarmHistory>
    typealias DescribeAlarmsEventLoopFutureAsyncType = (
            _ input: CloudWatchModel.DescribeAlarmsInput) -> EventLoopFuture<CloudWatchModel.DescribeAlarmsOutputForDescribeAlarms>
    typealias DescribeAlarmsForMetricEventLoopFutureAsyncType = (
            _ input: CloudWatchModel.DescribeAlarmsForMetricInput) -> EventLoopFuture<CloudWatchModel.DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric>
    typealias DescribeAnomalyDetectorsEventLoopFutureAsyncType = (
            _ input: CloudWatchModel.DescribeAnomalyDetectorsInput) -> EventLoopFuture<CloudWatchModel.DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors>
    typealias DescribeInsightRulesEventLoopFutureAsyncType = (
            _ input: CloudWatchModel.DescribeInsightRulesInput) -> EventLoopFuture<CloudWatchModel.DescribeInsightRulesOutputForDescribeInsightRules>
    typealias DisableAlarmActionsEventLoopFutureAsyncType = (
            _ input: CloudWatchModel.DisableAlarmActionsInput) -> EventLoopFuture<Void>
    typealias DisableInsightRulesEventLoopFutureAsyncType = (
            _ input: CloudWatchModel.DisableInsightRulesInput) -> EventLoopFuture<CloudWatchModel.DisableInsightRulesOutputForDisableInsightRules>
    typealias EnableAlarmActionsEventLoopFutureAsyncType = (
            _ input: CloudWatchModel.EnableAlarmActionsInput) -> EventLoopFuture<Void>
    typealias EnableInsightRulesEventLoopFutureAsyncType = (
            _ input: CloudWatchModel.EnableInsightRulesInput) -> EventLoopFuture<CloudWatchModel.EnableInsightRulesOutputForEnableInsightRules>
    typealias GetDashboardEventLoopFutureAsyncType = (
            _ input: CloudWatchModel.GetDashboardInput) -> EventLoopFuture<CloudWatchModel.GetDashboardOutputForGetDashboard>
    typealias GetInsightRuleReportEventLoopFutureAsyncType = (
            _ input: CloudWatchModel.GetInsightRuleReportInput) -> EventLoopFuture<CloudWatchModel.GetInsightRuleReportOutputForGetInsightRuleReport>
    typealias GetMetricDataEventLoopFutureAsyncType = (
            _ input: CloudWatchModel.GetMetricDataInput) -> EventLoopFuture<CloudWatchModel.GetMetricDataOutputForGetMetricData>
    typealias GetMetricStatisticsEventLoopFutureAsyncType = (
            _ input: CloudWatchModel.GetMetricStatisticsInput) -> EventLoopFuture<CloudWatchModel.GetMetricStatisticsOutputForGetMetricStatistics>
    typealias GetMetricWidgetImageEventLoopFutureAsyncType = (
            _ input: CloudWatchModel.GetMetricWidgetImageInput) -> EventLoopFuture<CloudWatchModel.GetMetricWidgetImageOutputForGetMetricWidgetImage>
    typealias ListDashboardsEventLoopFutureAsyncType = (
            _ input: CloudWatchModel.ListDashboardsInput) -> EventLoopFuture<CloudWatchModel.ListDashboardsOutputForListDashboards>
    typealias ListMetricsEventLoopFutureAsyncType = (
            _ input: CloudWatchModel.ListMetricsInput) -> EventLoopFuture<CloudWatchModel.ListMetricsOutputForListMetrics>
    typealias ListTagsForResourceEventLoopFutureAsyncType = (
            _ input: CloudWatchModel.ListTagsForResourceInput) -> EventLoopFuture<CloudWatchModel.ListTagsForResourceOutputForListTagsForResource>
    typealias PutAnomalyDetectorEventLoopFutureAsyncType = (
            _ input: CloudWatchModel.PutAnomalyDetectorInput) -> EventLoopFuture<CloudWatchModel.PutAnomalyDetectorOutputForPutAnomalyDetector>
    typealias PutCompositeAlarmEventLoopFutureAsyncType = (
            _ input: CloudWatchModel.PutCompositeAlarmInput) -> EventLoopFuture<Void>
    typealias PutDashboardEventLoopFutureAsyncType = (
            _ input: CloudWatchModel.PutDashboardInput) -> EventLoopFuture<CloudWatchModel.PutDashboardOutputForPutDashboard>
    typealias PutInsightRuleEventLoopFutureAsyncType = (
            _ input: CloudWatchModel.PutInsightRuleInput) -> EventLoopFuture<CloudWatchModel.PutInsightRuleOutputForPutInsightRule>
    typealias PutMetricAlarmEventLoopFutureAsyncType = (
            _ input: CloudWatchModel.PutMetricAlarmInput) -> EventLoopFuture<Void>
    typealias PutMetricDataEventLoopFutureAsyncType = (
            _ input: CloudWatchModel.PutMetricDataInput) -> EventLoopFuture<Void>
    typealias SetAlarmStateEventLoopFutureAsyncType = (
            _ input: CloudWatchModel.SetAlarmStateInput) -> EventLoopFuture<Void>
    typealias TagResourceEventLoopFutureAsyncType = (
            _ input: CloudWatchModel.TagResourceInput) -> EventLoopFuture<CloudWatchModel.TagResourceOutputForTagResource>
    typealias UntagResourceEventLoopFutureAsyncType = (
            _ input: CloudWatchModel.UntagResourceInput) -> EventLoopFuture<CloudWatchModel.UntagResourceOutputForUntagResource>

    /**
     Invokes the DeleteAlarms operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteAlarmsInput object being passed to this operation.
           The possible errors are: resourceNotFound.
     */
    func deleteAlarms(
            input: CloudWatchModel.DeleteAlarmsInput) -> EventLoopFuture<Void>

    /**
     Invokes the DeleteAnomalyDetector operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteAnomalyDetectorInput object being passed to this operation.
     - Returns: A future to the DeleteAnomalyDetectorOutputForDeleteAnomalyDetector object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: internalService, invalidParameterValue, missingRequiredParameter, resourceNotFound.
     */
    func deleteAnomalyDetector(
            input: CloudWatchModel.DeleteAnomalyDetectorInput) -> EventLoopFuture<CloudWatchModel.DeleteAnomalyDetectorOutputForDeleteAnomalyDetector>

    /**
     Invokes the DeleteDashboards operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteDashboardsInput object being passed to this operation.
     - Returns: A future to the DeleteDashboardsOutputForDeleteDashboards object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dashboardNotFound, internalService, invalidParameterValue.
     */
    func deleteDashboards(
            input: CloudWatchModel.DeleteDashboardsInput) -> EventLoopFuture<CloudWatchModel.DeleteDashboardsOutputForDeleteDashboards>

    /**
     Invokes the DeleteInsightRules operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteInsightRulesInput object being passed to this operation.
     - Returns: A future to the DeleteInsightRulesOutputForDeleteInsightRules object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameterValue, missingRequiredParameter.
     */
    func deleteInsightRules(
            input: CloudWatchModel.DeleteInsightRulesInput) -> EventLoopFuture<CloudWatchModel.DeleteInsightRulesOutputForDeleteInsightRules>

    /**
     Invokes the DescribeAlarmHistory operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeAlarmHistoryInput object being passed to this operation.
     - Returns: A future to the DescribeAlarmHistoryOutputForDescribeAlarmHistory object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidNextToken.
     */
    func describeAlarmHistory(
            input: CloudWatchModel.DescribeAlarmHistoryInput) -> EventLoopFuture<CloudWatchModel.DescribeAlarmHistoryOutputForDescribeAlarmHistory>

    /**
     Invokes the DescribeAlarms operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeAlarmsInput object being passed to this operation.
     - Returns: A future to the DescribeAlarmsOutputForDescribeAlarms object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidNextToken.
     */
    func describeAlarms(
            input: CloudWatchModel.DescribeAlarmsInput) -> EventLoopFuture<CloudWatchModel.DescribeAlarmsOutputForDescribeAlarms>

    /**
     Invokes the DescribeAlarmsForMetric operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeAlarmsForMetricInput object being passed to this operation.
     - Returns: A future to the DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func describeAlarmsForMetric(
            input: CloudWatchModel.DescribeAlarmsForMetricInput) -> EventLoopFuture<CloudWatchModel.DescribeAlarmsForMetricOutputForDescribeAlarmsForMetric>

    /**
     Invokes the DescribeAnomalyDetectors operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeAnomalyDetectorsInput object being passed to this operation.
     - Returns: A future to the DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: internalService, invalidNextToken, invalidParameterValue.
     */
    func describeAnomalyDetectors(
            input: CloudWatchModel.DescribeAnomalyDetectorsInput) -> EventLoopFuture<CloudWatchModel.DescribeAnomalyDetectorsOutputForDescribeAnomalyDetectors>

    /**
     Invokes the DescribeInsightRules operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DescribeInsightRulesInput object being passed to this operation.
     - Returns: A future to the DescribeInsightRulesOutputForDescribeInsightRules object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidNextToken.
     */
    func describeInsightRules(
            input: CloudWatchModel.DescribeInsightRulesInput) -> EventLoopFuture<CloudWatchModel.DescribeInsightRulesOutputForDescribeInsightRules>

    /**
     Invokes the DisableAlarmActions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DisableAlarmActionsInput object being passed to this operation.
     */
    func disableAlarmActions(
            input: CloudWatchModel.DisableAlarmActionsInput) -> EventLoopFuture<Void>

    /**
     Invokes the DisableInsightRules operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DisableInsightRulesInput object being passed to this operation.
     - Returns: A future to the DisableInsightRulesOutputForDisableInsightRules object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameterValue, missingRequiredParameter.
     */
    func disableInsightRules(
            input: CloudWatchModel.DisableInsightRulesInput) -> EventLoopFuture<CloudWatchModel.DisableInsightRulesOutputForDisableInsightRules>

    /**
     Invokes the EnableAlarmActions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated EnableAlarmActionsInput object being passed to this operation.
     */
    func enableAlarmActions(
            input: CloudWatchModel.EnableAlarmActionsInput) -> EventLoopFuture<Void>

    /**
     Invokes the EnableInsightRules operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated EnableInsightRulesInput object being passed to this operation.
     - Returns: A future to the EnableInsightRulesOutputForEnableInsightRules object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameterValue, limitExceeded, missingRequiredParameter.
     */
    func enableInsightRules(
            input: CloudWatchModel.EnableInsightRulesInput) -> EventLoopFuture<CloudWatchModel.EnableInsightRulesOutputForEnableInsightRules>

    /**
     Invokes the GetDashboard operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetDashboardInput object being passed to this operation.
     - Returns: A future to the GetDashboardOutputForGetDashboard object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dashboardNotFound, internalService, invalidParameterValue.
     */
    func getDashboard(
            input: CloudWatchModel.GetDashboardInput) -> EventLoopFuture<CloudWatchModel.GetDashboardOutputForGetDashboard>

    /**
     Invokes the GetInsightRuleReport operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetInsightRuleReportInput object being passed to this operation.
     - Returns: A future to the GetInsightRuleReportOutputForGetInsightRuleReport object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameterValue, missingRequiredParameter, resourceNotFound.
     */
    func getInsightRuleReport(
            input: CloudWatchModel.GetInsightRuleReportInput) -> EventLoopFuture<CloudWatchModel.GetInsightRuleReportOutputForGetInsightRuleReport>

    /**
     Invokes the GetMetricData operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetMetricDataInput object being passed to this operation.
     - Returns: A future to the GetMetricDataOutputForGetMetricData object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidNextToken.
     */
    func getMetricData(
            input: CloudWatchModel.GetMetricDataInput) -> EventLoopFuture<CloudWatchModel.GetMetricDataOutputForGetMetricData>

    /**
     Invokes the GetMetricStatistics operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetMetricStatisticsInput object being passed to this operation.
     - Returns: A future to the GetMetricStatisticsOutputForGetMetricStatistics object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: internalService, invalidParameterCombination, invalidParameterValue, missingRequiredParameter.
     */
    func getMetricStatistics(
            input: CloudWatchModel.GetMetricStatisticsInput) -> EventLoopFuture<CloudWatchModel.GetMetricStatisticsOutputForGetMetricStatistics>

    /**
     Invokes the GetMetricWidgetImage operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated GetMetricWidgetImageInput object being passed to this operation.
     - Returns: A future to the GetMetricWidgetImageOutputForGetMetricWidgetImage object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
     */
    func getMetricWidgetImage(
            input: CloudWatchModel.GetMetricWidgetImageInput) -> EventLoopFuture<CloudWatchModel.GetMetricWidgetImageOutputForGetMetricWidgetImage>

    /**
     Invokes the ListDashboards operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListDashboardsInput object being passed to this operation.
     - Returns: A future to the ListDashboardsOutputForListDashboards object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: internalService, invalidParameterValue.
     */
    func listDashboards(
            input: CloudWatchModel.ListDashboardsInput) -> EventLoopFuture<CloudWatchModel.ListDashboardsOutputForListDashboards>

    /**
     Invokes the ListMetrics operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListMetricsInput object being passed to this operation.
     - Returns: A future to the ListMetricsOutputForListMetrics object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: internalService, invalidParameterValue.
     */
    func listMetrics(
            input: CloudWatchModel.ListMetricsInput) -> EventLoopFuture<CloudWatchModel.ListMetricsOutputForListMetrics>

    /**
     Invokes the ListTagsForResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated ListTagsForResourceInput object being passed to this operation.
     - Returns: A future to the ListTagsForResourceOutputForListTagsForResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: internalService, invalidParameterValue, resourceNotFound.
     */
    func listTagsForResource(
            input: CloudWatchModel.ListTagsForResourceInput) -> EventLoopFuture<CloudWatchModel.ListTagsForResourceOutputForListTagsForResource>

    /**
     Invokes the PutAnomalyDetector operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutAnomalyDetectorInput object being passed to this operation.
     - Returns: A future to the PutAnomalyDetectorOutputForPutAnomalyDetector object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: internalService, invalidParameterValue, limitExceeded, missingRequiredParameter.
     */
    func putAnomalyDetector(
            input: CloudWatchModel.PutAnomalyDetectorInput) -> EventLoopFuture<CloudWatchModel.PutAnomalyDetectorOutputForPutAnomalyDetector>

    /**
     Invokes the PutCompositeAlarm operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutCompositeAlarmInput object being passed to this operation.
           The possible errors are: limitExceeded.
     */
    func putCompositeAlarm(
            input: CloudWatchModel.PutCompositeAlarmInput) -> EventLoopFuture<Void>

    /**
     Invokes the PutDashboard operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutDashboardInput object being passed to this operation.
     - Returns: A future to the PutDashboardOutputForPutDashboard object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: dashboardInvalidInput, internalService.
     */
    func putDashboard(
            input: CloudWatchModel.PutDashboardInput) -> EventLoopFuture<CloudWatchModel.PutDashboardOutputForPutDashboard>

    /**
     Invokes the PutInsightRule operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutInsightRuleInput object being passed to this operation.
     - Returns: A future to the PutInsightRuleOutputForPutInsightRule object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: invalidParameterValue, limitExceeded, missingRequiredParameter.
     */
    func putInsightRule(
            input: CloudWatchModel.PutInsightRuleInput) -> EventLoopFuture<CloudWatchModel.PutInsightRuleOutputForPutInsightRule>

    /**
     Invokes the PutMetricAlarm operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutMetricAlarmInput object being passed to this operation.
           The possible errors are: limitExceeded.
     */
    func putMetricAlarm(
            input: CloudWatchModel.PutMetricAlarmInput) -> EventLoopFuture<Void>

    /**
     Invokes the PutMetricData operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutMetricDataInput object being passed to this operation.
           The possible errors are: internalService, invalidParameterCombination, invalidParameterValue, missingRequiredParameter.
     */
    func putMetricData(
            input: CloudWatchModel.PutMetricDataInput) -> EventLoopFuture<Void>

    /**
     Invokes the SetAlarmState operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SetAlarmStateInput object being passed to this operation.
           The possible errors are: invalidFormat, resourceNotFound.
     */
    func setAlarmState(
            input: CloudWatchModel.SetAlarmStateInput) -> EventLoopFuture<Void>

    /**
     Invokes the TagResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated TagResourceInput object being passed to this operation.
     - Returns: A future to the TagResourceOutputForTagResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: concurrentModification, internalService, invalidParameterValue, resourceNotFound.
     */
    func tagResource(
            input: CloudWatchModel.TagResourceInput) -> EventLoopFuture<CloudWatchModel.TagResourceOutputForTagResource>

    /**
     Invokes the UntagResource operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated UntagResourceInput object being passed to this operation.
     - Returns: A future to the UntagResourceOutputForUntagResource object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: concurrentModification, internalService, invalidParameterValue, resourceNotFound.
     */
    func untagResource(
            input: CloudWatchModel.UntagResourceInput) -> EventLoopFuture<CloudWatchModel.UntagResourceOutputForUntagResource>
}
