function Add-VSLambdaAliasVersionWeight {
    <#
    .SYNOPSIS
        Adds an AWS::Lambda::Alias.VersionWeight resource property to the template. The traffic-shifting: https://docs.aws.amazon.com/lambda/latest/dg/lambda-traffic-shifting-using-aliases.html configuration of a Lambda function alias.

    .DESCRIPTION
        Adds an AWS::Lambda::Alias.VersionWeight resource property to the template.
The traffic-shifting: https://docs.aws.amazon.com/lambda/latest/dg/lambda-traffic-shifting-using-aliases.html configuration of a Lambda function alias.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-alias-versionweight.html

    .PARAMETER FunctionVersion
        The qualifier of the second version.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-alias-versionweight.html#cfn-lambda-alias-versionweight-functionversion
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER FunctionWeight
        The percentage of traffic that the alias routes to the second version.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-alias-versionweight.html#cfn-lambda-alias-versionweight-functionweight
        PrimitiveType: Double
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.Lambda.Alias.VersionWeight')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $FunctionVersion,
        [parameter(Mandatory = $true)]
        [ValidateScript( {
                $allowedTypes = "System.Double","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $FunctionWeight
    )
    Begin {
        $obj = [PSCustomObject]@{}
        $commonParams = @('Verbose','Debug','ErrorAction','WarningAction','InformationAction','ErrorVariable','WarningVariable','InformationVariable','OutVariable','OutBuffer','PipelineVariable')
    }
    Process {
        foreach ($key in $PSBoundParameters.Keys | Where-Object {$commonParams -notcontains $_}) {
            switch ($key) {
                Default {
                    $obj | Add-Member -MemberType NoteProperty -Name $key -Value $PSBoundParameters.$key
                }
            }
        }
    }
    End {
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.Lambda.Alias.VersionWeight'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
