# New-VSS3Bucket

## SYNOPSIS
Adds an AWS::S3::Bucket resource to the template.
The AWS::S3::Bucket resource creates an Amazon S3 bucket in the same AWS Region where you create the AWS CloudFormation stack.

## SYNTAX

```
New-VSS3Bucket [-LogicalId] <String> [-AccelerateConfiguration <Object>] [-AccessControl <Object>]
 [-AnalyticsConfigurations <Object>] [-BucketEncryption <Object>] [-BucketName <Object>]
 [-CorsConfiguration <Object>] [-InventoryConfigurations <Object>] [-LifecycleConfiguration <Object>]
 [-LoggingConfiguration <Object>] [-MetricsConfigurations <Object>] [-NotificationConfiguration <Object>]
 [-ObjectLockConfiguration <Object>] [-ObjectLockEnabled <Object>] [-PublicAccessBlockConfiguration <Object>]
 [-ReplicationConfiguration <Object>] [-Tags <Object>] [-VersioningConfiguration <Object>]
 [-WebsiteConfiguration <Object>] [-DeletionPolicy <String>] [-UpdateReplacePolicy <String>]
 [-DependsOn <String[]>] [-Metadata <Object>] [-UpdatePolicy <Object>] [-Condition <Object>]
 [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::S3::Bucket resource to the template.
The AWS::S3::Bucket resource creates an Amazon S3 bucket in the same AWS Region where you create the AWS CloudFormation stack.

To control how AWS CloudFormation handles the bucket when the stack is deleted, you can set a deletion policy for your bucket.
You can choose to *retain* the bucket or to *delete* the bucket.
For more information, see DeletionPolicy Attribute: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-deletionpolicy.html.

**Important**

You can only delete empty buckets.
Deletion fails for buckets that have contents.

## PARAMETERS

### -LogicalId
The logical ID must be alphanumeric (A-Za-z0-9) and unique within the template.
Use the logical name to reference the resource in other parts of the template.
For example, if you want to map an Amazon Elastic Block Store volume to an Amazon EC2 instance, you reference the logical IDs to associate the block stores with the instance.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AccelerateConfiguration
Configures the transfer acceleration state for an Amazon S3 bucket.
For more information, see Amazon S3 Transfer Acceleration: https://docs.aws.amazon.com/AmazonS3/latest/dev/transfer-acceleration.html in the *Amazon Simple Storage Service Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-accelerateconfiguration
Type: AccelerateConfiguration
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AccessControl
A canned access control list ACL that grants predefined permissions to the bucket.
For more information about canned ACLs, see Canned ACL: https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl in the *Amazon Simple Storage Service Developer Guide*.
Be aware that the syntax for this property differs from the information provided in the *Amazon Simple Storage Service Developer Guide*.
The AccessControl property is case-sensitive and must be one of the following values: Private, PublicRead, PublicReadWrite, AuthenticatedRead, LogDeliveryWrite, BucketOwnerRead, BucketOwnerFullControl, or AwsExecRead.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-accesscontrol
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AnalyticsConfigurations
Specifies the configuration and any analyses for the analytics filter of an Amazon S3 bucket.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-analyticsconfigurations
DuplicatesAllowed: False
ItemType: AnalyticsConfiguration
Type: List
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BucketEncryption
Specifies default encryption for a bucket using server-side encryption with Amazon S3-managed keys SSE-S3 or AWS KMS-managed keys SSE-KMS bucket.
For information about the Amazon S3 default encryption feature, see  Amazon S3 Default Encryption for S3 Buckets: https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-encryption.html in the *Amazon Simple Storage Service Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-bucketencryption
Type: BucketEncryption
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BucketName
A name for the bucket.
If you don't specify a name, AWS CloudFormation generates a unique ID and uses that ID for the bucket name.
For more information, see Name Type: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-name.html.
The bucket name must contain only lowercase letters, numbers, periods ., and dashes -.
If you specify a name, you can't perform updates that require replacement of this resource.
You can perform updates that require no or some interruption.
If you need to replace the resource, specify a new name.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-name
PrimitiveType: String
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CorsConfiguration
Describes the cross-origin access configuration for objects in an Amazon S3 bucket.
For more information, see Enabling Cross-Origin Resource Sharing: https://docs.aws.amazon.com/AmazonS3/latest/dev/cors.html in the *Amazon Simple Storage Service Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-crossoriginconfig
Type: CorsConfiguration
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InventoryConfigurations
Specifies the inventory configuration for an Amazon S3 bucket.
For more information, see GET Bucket inventory: https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketGETInventoryConfig.html in the *Amazon Simple Storage Service API Reference*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-inventoryconfigurations
DuplicatesAllowed: False
ItemType: InventoryConfiguration
Type: List
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LifecycleConfiguration
Specifies the lifecycle configuration for objects in an Amazon S3 bucket.
For more information, see Object Lifecycle Management: https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lifecycle-mgmt.html in the *Amazon Simple Storage Service Developer Guide*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-lifecycleconfig
Type: LifecycleConfiguration
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LoggingConfiguration
Settings that define where logs are stored.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-loggingconfig
Type: LoggingConfiguration
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MetricsConfigurations
Specifies a metrics configuration for the CloudWatch request metrics specified by the metrics configuration ID from an Amazon S3 bucket.
If you're updating an existing metrics configuration, note that this is a full replacement of the existing metrics configuration.
If you don't include the elements you want to keep, they are erased.
For more information, see  PUT Bucket metrics: https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTMetricConfiguration.html in the *Amazon Simple Storage Service API Reference*.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-metricsconfigurations
DuplicatesAllowed: False
ItemType: MetricsConfiguration
Type: List
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NotificationConfiguration
Configuration that defines how Amazon S3 handles bucket notifications.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-notification
Type: NotificationConfiguration
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ObjectLockConfiguration
Places an Object Lock configuration on the specified bucket.
The rule specified in the Object Lock configuration will be applied by default to every new object placed in the specified bucket.
DefaultRetention requires either Days or Years.
You can't specify both at the same time.
**Related Resources**
+  Locking Objects: https://docs.aws.amazon.com/AmazonS3/latest/dev/object-lock.html

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-objectlockconfiguration
Type: ObjectLockConfiguration
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ObjectLockEnabled
Indicates whether this bucket has an Object Lock configuration enabled.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-objectlockenabled
PrimitiveType: Boolean
UpdateType: Immutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PublicAccessBlockConfiguration
Configuration that defines how Amazon S3 handles public access.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-publicaccessblockconfiguration
Type: PublicAccessBlockConfiguration
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ReplicationConfiguration
Configuration for replicating objects in an S3 bucket.
To enable replication, you must also enable versioning by using the VersioningConfiguration property.
Amazon S3 can store replicated objects in only one destination bucket.
The destination bucket must already exist and be in a different AWS Region than your source bucket.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-replicationconfiguration
Type: ReplicationConfiguration
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Tags
An arbitrary set of tags key-value pairs for this S3 bucket.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-tags
DuplicatesAllowed: True
ItemType: Tag
Type: List
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VersioningConfiguration
Enables multiple versions of all objects in this bucket.
You might enable versioning to prevent objects from being deleted or overwritten by mistake or to archive objects so that you can retrieve previous versions of them.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-versioning
Type: VersioningConfiguration
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WebsiteConfiguration
Information used to configure the bucket as a static website.
For more information, see Hosting Websites on Amazon S3: https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html#cfn-s3-bucket-websiteconfiguration
Type: WebsiteConfiguration
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DeletionPolicy
With the DeletionPolicy attribute you can preserve or (in some cases) backup a resource when its stack is deleted.
You specify a DeletionPolicy attribute for each resource that you want to control.
If a resource has no DeletionPolicy attribute, AWS CloudFormation deletes the resource by default.

To keep a resource when its stack is deleted, specify Retain for that resource.
You can use retain for any resource.
For example, you can retain a nested stack, S3 bucket, or EC2 instance so that you can continue to use or modify those resources after you delete their stacks.

You must use one of the following options: "Delete","Retain","Snapshot"

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UpdateReplacePolicy
Use the UpdateReplacePolicy attribute to retain or (in some cases) backup the existing physical instance of a resource when it is replaced during a stack update operation.

When you initiate a stack update, AWS CloudFormation updates resources based on differences between what you submit and the stack's current template and parameters.
If you update a resource property that requires that the resource be replaced, AWS CloudFormation recreates the resource during the update.
Recreating the resource generates a new physical ID.
AWS CloudFormation creates the replacement resource first, and then changes references from other dependent resources to point to the replacement resource.
By default, AWS CloudFormation then deletes the old resource.
Using the UpdateReplacePolicy, you can specify that AWS CloudFormation retain or (in some cases) create a snapshot of the old resource.

For resources that support snapshots, such as AWS::EC2::Volume, specify Snapshot to have AWS CloudFormation create a snapshot before deleting the old resource instance.

You can apply the UpdateReplacePolicy attribute to any resource.
UpdateReplacePolicy is only executed if you update a resource property whose update behavior is specified as Replacement, thereby causing AWS CloudFormation to replace the old resource with a new one with a new physical ID.
For example, if you update the Engine property of an AWS::RDS::DBInstance resource type, AWS CloudFormation creates a new resource and replaces the current DB instance resource with the new one.
The UpdateReplacePolicy attribute would then dictate whether AWS CloudFormation deleted, retained, or created a snapshot of the old DB instance.
The update behavior for each property of a resource is specified in the reference topic for that resource in the AWS Resource and Property Types Reference.
For more information on resource update behavior, see Update Behaviors of Stack Resources.

The UpdateReplacePolicy attribute applies to stack updates you perform directly, as well as stack updates performed using change sets.

Note
Resources that are retained continue to exist and continue to incur applicable charges until you delete those resources.
Snapshots that are created with this policy continue to exist and continue to incur applicable charges until you delete those snapshots.
UpdateReplacePolicy retains the old physical resource or snapshot, but removes it from AWS CloudFormation's scope.

UpdateReplacePolicy differs from the DeletionPolicy attribute in that it only applies to resources replaced during stack updates.
Use DeletionPolicy for resources deleted when a stack is deleted, or when the resource definition itself is deleted from the template as part of a stack update.

You must use one of the following options: "Delete","Retain","Snapshot"

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DependsOn
With the DependsOn attribute you can specify that the creation of a specific resource follows another.
When you add a DependsOn attribute to a resource, that resource is created only after the creation of the resource specified in the DependsOn attribute.

This parameter takes a string or list of strings representing Logical IDs of resources that must be created prior to this resource being created.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Metadata
The Metadata attribute enables you to associate structured data with a resource.
By adding a Metadata attribute to a resource, you can add data in JSON or YAML to the resource declaration.
In addition, you can use intrinsic functions (such as GetAtt and Ref), parameters, and pseudo parameters within the Metadata attribute to add those interpreted values.

You must use a PSCustomObject containing key/value pairs here.
This will be returned when describing the resource using AWS CLI.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UpdatePolicy
Use the UpdatePolicy attribute to specify how AWS CloudFormation handles updates to the AWS::AutoScaling::AutoScalingGroup resource.
AWS CloudFormation invokes one of three update policies depending on the type of change you make or whether a scheduled action is associated with the Auto Scaling group.

You must use the "Add-UpdatePolicy" function here.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Condition
Logical ID of the condition that this resource needs to be true in order for this resource to be provisioned.

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.S3.Bucket
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket.html)

