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
// AWSCloudWatchClient.swift
// CloudWatchClient
//

import Foundation
import CloudWatchModel
import SmokeAWSCore
import SmokeHTTPClient
import NIO
import SmokeAWSHttp
import NIO
import NIOHTTP1
import AsyncHTTPClient
import Logging

public enum CloudWatchClientError: Swift.Error {
    case invalidEndpoint(String)
    case unsupportedPayload
    case unknownError(String?)
}

 extension CloudWatchError: ConvertableError {
    public static func asUnrecognizedError(error: Swift.Error) -> CloudWatchError {
        return error.asUnrecognizedCloudWatchError()
    }

    func isRetriable() -> Bool? {
        switch self {
        case .limitExceededException, .limitExceededFault:
            return true
        default:
            return nil
        }
    }
}

private extension SmokeHTTPClient.HTTPClientError {
    func isRetriable() -> Bool {
        if let typedError = self.cause as? CloudWatchError, let isRetriable = typedError.isRetriable() {
            return isRetriable
        } else {
            return self.isRetriableAccordingToCategory
        }
    }
}

/**
 AWS Client for the CloudWatch service.
 */
public struct AWSCloudWatchClient<InvocationReportingType: HTTPClientCoreInvocationReporting>: CloudWatchClientProtocol, AWSQueryClientProtocol {
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

    let operationsReporting: CloudWatchOperationsReporting
    let invocationsReporting: CloudWatchInvocationsReporting<InvocationReportingType>
    
    public init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                reporting: InvocationReportingType,
                endpointHostName: String,
                endpointPort: Int = 443,
                requiresTLS: Bool? = nil,
                service: String = "monitoring",
                contentType: String = "application/octet-stream",
                apiVersion: String = "2010-08-01",
                connectionTimeoutSeconds: Int64 = 10,
                retryConfiguration: HTTPClientRetryConfiguration = .default,
                eventLoopProvider: HTTPClient.EventLoopGroupProvider = .createNew,
                reportingConfiguration: SmokeAWSClientReportingConfiguration<CloudWatchModelOperations>
                    = SmokeAWSClientReportingConfiguration<CloudWatchModelOperations>() ) {
        let useTLS = requiresTLS ?? AWSHTTPClientDelegate.requiresTLS(forEndpointPort: endpointPort)
        let clientDelegate = XMLAWSHttpClientDelegate<CloudWatchError>(requiresTLS: useTLS,
            outputListDecodingStrategy: .collapseListUsingItemTag("member"), 
            inputQueryListEncodingStrategy: .expandListWithIndexAndItemTag(itemTag: "member"))

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
        self.operationsReporting = CloudWatchOperationsReporting(clientName: "AWSCloudWatchClient", reportingConfiguration: reportingConfiguration)
        self.invocationsReporting = CloudWatchInvocationsReporting(reporting: reporting, operationsReporting: self.operationsReporting)
    }
    
    internal init(credentialsProvider: CredentialsProvider, awsRegion: AWSRegion,
                reporting: InvocationReportingType,
                httpClient: HTTPOperationsClient,
                service: String,
                apiVersion: String,
                eventLoopProvider: HTTPClient.EventLoopGroupProvider,
                retryOnErrorProvider: @escaping (SmokeHTTPClient.HTTPClientError) -> Bool,
                retryConfiguration: HTTPClientRetryConfiguration,
                operationsReporting: CloudWatchOperationsReporting) {
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
        self.invocationsReporting = CloudWatchInvocationsReporting(reporting: reporting, operationsReporting: self.operationsReporting)
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
     Invokes the DeleteAlarms operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DeleteAlarmsInput object being passed to this operation.
           The possible errors are: resourceNotFound.
     */
    public func deleteAlarms(
            input: CloudWatchModel.DeleteAlarmsInput) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: DeleteAlarmsOperationHTTPRequestInput(encodable: input),
                                    action: CloudWatchModelOperations.deleteAlarms.rawValue,
                                    reporting: self.invocationsReporting.deleteAlarms)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeleteAnomalyDetectorOperationHTTPRequestInput(encodable: input),
                                 action: CloudWatchModelOperations.deleteAnomalyDetector.rawValue,
                                 reporting: self.invocationsReporting.deleteAnomalyDetector)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeleteDashboardsOperationHTTPRequestInput(encodable: input),
                                 action: CloudWatchModelOperations.deleteDashboards.rawValue,
                                 reporting: self.invocationsReporting.deleteDashboards)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DeleteInsightRulesOperationHTTPRequestInput(encodable: input),
                                 action: CloudWatchModelOperations.deleteInsightRules.rawValue,
                                 reporting: self.invocationsReporting.deleteInsightRules)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeAlarmHistoryOperationHTTPRequestInput(encodable: input),
                                 action: CloudWatchModelOperations.describeAlarmHistory.rawValue,
                                 reporting: self.invocationsReporting.describeAlarmHistory)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeAlarmsOperationHTTPRequestInput(encodable: input),
                                 action: CloudWatchModelOperations.describeAlarms.rawValue,
                                 reporting: self.invocationsReporting.describeAlarms)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeAlarmsForMetricOperationHTTPRequestInput(encodable: input),
                                 action: CloudWatchModelOperations.describeAlarmsForMetric.rawValue,
                                 reporting: self.invocationsReporting.describeAlarmsForMetric)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeAnomalyDetectorsOperationHTTPRequestInput(encodable: input),
                                 action: CloudWatchModelOperations.describeAnomalyDetectors.rawValue,
                                 reporting: self.invocationsReporting.describeAnomalyDetectors)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DescribeInsightRulesOperationHTTPRequestInput(encodable: input),
                                 action: CloudWatchModelOperations.describeInsightRules.rawValue,
                                 reporting: self.invocationsReporting.describeInsightRules)
    }

    /**
     Invokes the DisableAlarmActions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated DisableAlarmActionsInput object being passed to this operation.
     */
    public func disableAlarmActions(
            input: CloudWatchModel.DisableAlarmActionsInput) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: DisableAlarmActionsOperationHTTPRequestInput(encodable: input),
                                    action: CloudWatchModelOperations.disableAlarmActions.rawValue,
                                    reporting: self.invocationsReporting.disableAlarmActions)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: DisableInsightRulesOperationHTTPRequestInput(encodable: input),
                                 action: CloudWatchModelOperations.disableInsightRules.rawValue,
                                 reporting: self.invocationsReporting.disableInsightRules)
    }

    /**
     Invokes the EnableAlarmActions operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated EnableAlarmActionsInput object being passed to this operation.
     */
    public func enableAlarmActions(
            input: CloudWatchModel.EnableAlarmActionsInput) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: EnableAlarmActionsOperationHTTPRequestInput(encodable: input),
                                    action: CloudWatchModelOperations.enableAlarmActions.rawValue,
                                    reporting: self.invocationsReporting.enableAlarmActions)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: EnableInsightRulesOperationHTTPRequestInput(encodable: input),
                                 action: CloudWatchModelOperations.enableInsightRules.rawValue,
                                 reporting: self.invocationsReporting.enableInsightRules)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: GetDashboardOperationHTTPRequestInput(encodable: input),
                                 action: CloudWatchModelOperations.getDashboard.rawValue,
                                 reporting: self.invocationsReporting.getDashboard)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: GetInsightRuleReportOperationHTTPRequestInput(encodable: input),
                                 action: CloudWatchModelOperations.getInsightRuleReport.rawValue,
                                 reporting: self.invocationsReporting.getInsightRuleReport)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: GetMetricDataOperationHTTPRequestInput(encodable: input),
                                 action: CloudWatchModelOperations.getMetricData.rawValue,
                                 reporting: self.invocationsReporting.getMetricData)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: GetMetricStatisticsOperationHTTPRequestInput(encodable: input),
                                 action: CloudWatchModelOperations.getMetricStatistics.rawValue,
                                 reporting: self.invocationsReporting.getMetricStatistics)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: GetMetricWidgetImageOperationHTTPRequestInput(encodable: input),
                                 action: CloudWatchModelOperations.getMetricWidgetImage.rawValue,
                                 reporting: self.invocationsReporting.getMetricWidgetImage)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ListDashboardsOperationHTTPRequestInput(encodable: input),
                                 action: CloudWatchModelOperations.listDashboards.rawValue,
                                 reporting: self.invocationsReporting.listDashboards)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ListMetricsOperationHTTPRequestInput(encodable: input),
                                 action: CloudWatchModelOperations.listMetrics.rawValue,
                                 reporting: self.invocationsReporting.listMetrics)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: ListTagsForResourceOperationHTTPRequestInput(encodable: input),
                                 action: CloudWatchModelOperations.listTagsForResource.rawValue,
                                 reporting: self.invocationsReporting.listTagsForResource)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: PutAnomalyDetectorOperationHTTPRequestInput(encodable: input),
                                 action: CloudWatchModelOperations.putAnomalyDetector.rawValue,
                                 reporting: self.invocationsReporting.putAnomalyDetector)
    }

    /**
     Invokes the PutCompositeAlarm operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutCompositeAlarmInput object being passed to this operation.
           The possible errors are: limitExceeded.
     */
    public func putCompositeAlarm(
            input: CloudWatchModel.PutCompositeAlarmInput) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: PutCompositeAlarmOperationHTTPRequestInput(encodable: input),
                                    action: CloudWatchModelOperations.putCompositeAlarm.rawValue,
                                    reporting: self.invocationsReporting.putCompositeAlarm)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: PutDashboardOperationHTTPRequestInput(encodable: input),
                                 action: CloudWatchModelOperations.putDashboard.rawValue,
                                 reporting: self.invocationsReporting.putDashboard)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: PutInsightRuleOperationHTTPRequestInput(encodable: input),
                                 action: CloudWatchModelOperations.putInsightRule.rawValue,
                                 reporting: self.invocationsReporting.putInsightRule)
    }

    /**
     Invokes the PutMetricAlarm operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutMetricAlarmInput object being passed to this operation.
           The possible errors are: limitExceeded.
     */
    public func putMetricAlarm(
            input: CloudWatchModel.PutMetricAlarmInput) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: PutMetricAlarmOperationHTTPRequestInput(encodable: input),
                                    action: CloudWatchModelOperations.putMetricAlarm.rawValue,
                                    reporting: self.invocationsReporting.putMetricAlarm)
    }

    /**
     Invokes the PutMetricData operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated PutMetricDataInput object being passed to this operation.
           The possible errors are: internalService, invalidParameterCombination, invalidParameterValue, missingRequiredParameter.
     */
    public func putMetricData(
            input: CloudWatchModel.PutMetricDataInput) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: PutMetricDataOperationHTTPRequestInput(encodable: input),
                                    action: CloudWatchModelOperations.putMetricData.rawValue,
                                    reporting: self.invocationsReporting.putMetricData)
    }

    /**
     Invokes the SetAlarmState operation returning immediately with an `EventLoopFuture` that will be completed with the result at a later time.

     - Parameters:
         - input: The validated SetAlarmStateInput object being passed to this operation.
           The possible errors are: invalidFormat, resourceNotFound.
     */
    public func setAlarmState(
            input: CloudWatchModel.SetAlarmStateInput) -> EventLoopFuture<Void> {
        return executeWithoutOutput(httpClient: httpClient,
                                    wrappedInput: SetAlarmStateOperationHTTPRequestInput(encodable: input),
                                    action: CloudWatchModelOperations.setAlarmState.rawValue,
                                    reporting: self.invocationsReporting.setAlarmState)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: TagResourceOperationHTTPRequestInput(encodable: input),
                                 action: CloudWatchModelOperations.tagResource.rawValue,
                                 reporting: self.invocationsReporting.tagResource)
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
        return executeWithOutput(httpClient: httpClient,
                                 wrappedInput: UntagResourceOperationHTTPRequestInput(encodable: input),
                                 action: CloudWatchModelOperations.untagResource.rawValue,
                                 reporting: self.invocationsReporting.untagResource)
    }
}
