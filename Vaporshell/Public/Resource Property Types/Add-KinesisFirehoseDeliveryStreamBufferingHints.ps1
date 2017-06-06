function Add-KinesisFirehoseDeliveryStreamBufferingHints {
    <#
    .SYNOPSIS
        Adds an AWS::KinesisFirehose::DeliveryStream.BufferingHints resource property to the template

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-s3destinationconfiguration-bufferinghints.html

    .PARAMETER IntervalInSeconds
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-s3destinationconfiguration-bufferinghints.html#cfn-kinesisfirehose-kinesisdeliverystream-s3destinationconfiguration-bufferinghints-intervalinseconds
		PrimitiveType: Integer
		Required: True
		UpdateType: Mutable

    .PARAMETER SizeInMBs
		Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-kinesisdeliverystream-s3destinationconfiguration-bufferinghints.html#cfn-kinesisfirehose-kinesisdeliverystream-s3destinationconfiguration-bufferinghints-sizeinmbs
		PrimitiveType: Integer
		Required: True
		UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.KinesisFirehose.DeliveryStream.BufferingHints')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [Int]
        $IntervalInSeconds,
        [parameter(Mandatory = $true)]
        [Int]
        $SizeInMBs
    )
    Begin {
        $obj = [PSCustomObject]@{}
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys) {
            $val = $((Get-Variable $key).Value)
            if ($val -eq "True" -or $val -eq "False") {
                $val = $val.ToLower()
            }
            $obj | Add-Member -MemberType NoteProperty -Name $key -Value $val
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.KinesisFirehose.DeliveryStream.BufferingHints'
    }
}
