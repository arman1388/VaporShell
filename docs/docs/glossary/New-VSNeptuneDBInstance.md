# New-VSNeptuneDBInstance

## SYNOPSIS
Adds an AWS::Neptune::DBInstance resource to the template.
The AWS::Neptune::DBInstance type creates an Amazon Neptune DB instance.

## SYNTAX

```
New-VSNeptuneDBInstance [-LogicalId] <String> [-DBParameterGroupName <Object>] -DBInstanceClass <Object>
 [-AllowMajorVersionUpgrade <Object>] [-DBClusterIdentifier <Object>] [-AvailabilityZone <Object>]
 [-PreferredMaintenanceWindow <Object>] [-AutoMinorVersionUpgrade <Object>] [-DBSubnetGroupName <Object>]
 [-DBInstanceIdentifier <Object>] [-DBSnapshotIdentifier <Object>] [-Tags <Object>] [-DeletionPolicy <String>]
 [-UpdateReplacePolicy <String>] [-DependsOn <String[]>] [-Metadata <Object>] [-UpdatePolicy <Object>]
 [-Condition <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::Neptune::DBInstance resource to the template.
The AWS::Neptune::DBInstance type creates an Amazon Neptune DB instance.

**Updating DB Instances**

You can set a deletion policy for your DB instance to control how AWS CloudFormation handles the instance when the stack is deleted.
For Neptune DB instances, you can choose to *retain* the instance, to *delete* the instance, or to *create a snapshot* of the instance.
The default AWS CloudFormation behavior depends on the DBClusterIdentifier property:

+ For AWS::Neptune::DBInstance resources that don't specify the DBClusterIdentifier property, AWS CloudFormation saves a snapshot of the DB instance.

+ For AWS::Neptune::DBInstance resources that do specify the DBClusterIdentifier property, AWS CloudFormation deletes the DB instance.

**Deleting DB Instances**

**Important**

If a DB instance is deleted or replaced during an update, AWS CloudFormation deletes all automated snapshots.
However, it retains manual DB snapshots.
During an update that requires replacement, you can apply a stack policy to prevent DB instances from being replaced.

When properties labeled *Update requires: Replacement* are updated, AWS CloudFormation first creates a replacement DB instance, changes references from other dependent resources to point to the replacement DB instance, and finally deletes the old DB instance.

**Important**

We highly recommend that you take a snapshot of the database before updating the stack.
If you don't, you lose the data when AWS CloudFormation replaces your DB instance.
To preserve your data, perform the following procedure:

Deactivate any applications that are using the DB instance so that there's no activity on the DB instance.

Create a snapshot of the DB instance.

If you want to restore your instance using a DB snapshot, modify the updated template with your DB instance changes and add the DBSnapshotIdentifier property with the ID of the DB snapshot that you want to use.

Update the stack.

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

### -DBParameterGroupName
The name of an existing DB parameter group or a reference to an AWS::Neptune::DBParameterGroup resource created in the template.
If any of the data members of the referenced parameter group are changed during an update, the DB instance might need to be restarted, which causes some interruption.
If the parameter group contains static parameters, whether they were changed or not, an update triggers a reboot.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbinstance.html#cfn-neptune-dbinstance-dbparametergroupname
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

### -DBInstanceClass
Contains the name of the compute and memory capacity class of the DB instance.
If you update this property, some interruptions may occur.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbinstance.html#cfn-neptune-dbinstance-dbinstanceclass
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AllowMajorVersionUpgrade
Indicates that major version upgrades are allowed.
Changing this parameter doesn't result in an outage and the change is asynchronously applied as soon as possible.
This parameter must be set to true when specifying a value for the EngineVersion parameter that is a different major version than the DB instance's current version.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbinstance.html#cfn-neptune-dbinstance-allowmajorversionupgrade
PrimitiveType: Boolean
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

### -DBClusterIdentifier
If the DB instance is a member of a DB cluster, contains the name of the DB cluster that the DB instance is a member of.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbinstance.html#cfn-neptune-dbinstance-dbclusteridentifier
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

### -AvailabilityZone
Specifies the name of the Availability Zone the DB instance is located in.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbinstance.html#cfn-neptune-dbinstance-availabilityzone
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

### -PreferredMaintenanceWindow
Specifies the weekly time range during which system maintenance can occur, in Universal Coordinated Time UTC.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbinstance.html#cfn-neptune-dbinstance-preferredmaintenancewindow
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

### -AutoMinorVersionUpgrade
Indicates that minor version patches are applied automatically.
When updating this property, some interruptions may occur.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbinstance.html#cfn-neptune-dbinstance-autominorversionupgrade
PrimitiveType: Boolean
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

### -DBSubnetGroupName
A DB subnet group to associate with the DB instance.
If you update this value, the new subnet group must be a subnet group in a new virtual private cloud VPC.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbinstance.html#cfn-neptune-dbinstance-dbsubnetgroupname
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

### -DBInstanceIdentifier
Contains a user-supplied database identifier.
This identifier is the unique key that identifies a DB instance.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbinstance.html#cfn-neptune-dbinstance-dbinstanceidentifier
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

### -DBSnapshotIdentifier
This parameter is not supported.
AWS::Neptune::DBInstance does not support restoring from snapshots.
AWS::Neptune::DBCluster does support restoring from snapshots.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbinstance.html#cfn-neptune-dbinstance-dbsnapshotidentifier
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

### -Tags
An arbitrary set of tags key-value pairs for this DB instance.

Type: List
Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbinstance.html#cfn-neptune-dbinstance-tags
ItemType: Tag
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

### Vaporshell.Resource.Neptune.DBInstance
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbinstance.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbinstance.html)

