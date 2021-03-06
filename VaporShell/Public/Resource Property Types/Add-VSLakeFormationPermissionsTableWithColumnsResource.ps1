function Add-VSLakeFormationPermissionsTableWithColumnsResource {
    <#
    .SYNOPSIS
        Adds an AWS::LakeFormation::Permissions.TableWithColumnsResource resource property to the template. A structure for a table with columns object. This object is only used when granting a SELECT permission.

    .DESCRIPTION
        Adds an AWS::LakeFormation::Permissions.TableWithColumnsResource resource property to the template.
A structure for a table with columns object. This object is only used when granting a SELECT permission.

This object must take a value for at least one of ColumnsNames, ColumnsIndexes, or ColumnsWildcard.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-tablewithcolumnsresource.html

    .PARAMETER ColumnNames
        The list of column names for the table. At least one of ColumnNames or ColumnWildcard is required.

        PrimitiveItemType: String
        Type: List
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-tablewithcolumnsresource.html#cfn-lakeformation-permissions-tablewithcolumnsresource-columnnames
        UpdateType: Mutable

    .PARAMETER DatabaseName
        The name of the database for the table with columns resource. Unique to the Data Catalog. A database is a set of associated table definitions organized into a logical group. You can Grant and Revoke database privileges to a principal.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-tablewithcolumnsresource.html#cfn-lakeformation-permissions-tablewithcolumnsresource-databasename
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER Name
        The name of the table resource. A table is a metadata definition that represents your data. You can Grant and Revoke table privileges to a principal.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-tablewithcolumnsresource.html#cfn-lakeformation-permissions-tablewithcolumnsresource-name
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER ColumnWildcard
        A wildcard specified by a ColumnWildcard object. At least one of ColumnNames or ColumnWildcard is required.

        Type: ColumnWildcard
        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-permissions-tablewithcolumnsresource.html#cfn-lakeformation-permissions-tablewithcolumnsresource-columnwildcard
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.LakeFormation.Permissions.TableWithColumnsResource')]
    [cmdletbinding()]
    Param
    (
        [parameter(Mandatory = $false)]
        $ColumnNames,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $DatabaseName,
        [parameter(Mandatory = $false)]
        [ValidateScript( {
                $allowedTypes = "System.String","Vaporshell.Function","Vaporshell.Condition"
                if ([string]$($_.PSTypeNames) -match "($(($allowedTypes|ForEach-Object{[RegEx]::Escape($_)}) -join '|'))") {
                    $true
                }
                else {
                    $PSCmdlet.ThrowTerminatingError((New-VSError -String "This parameter only accepts the following types: $($allowedTypes -join ", "). The current types of the value are: $($_.PSTypeNames -join ", ")."))
                }
            })]
        $Name,
        [parameter(Mandatory = $false)]
        $ColumnWildcard
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.LakeFormation.Permissions.TableWithColumnsResource'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
