function Add-VSWAFRegionalSqlInjectionMatchSetFieldToMatch {
    <#
    .SYNOPSIS
        Adds an AWS::WAFRegional::SqlInjectionMatchSet.FieldToMatch resource property to the template. Specifies the part of a web request that you want AWS WAF to search, such as a specific header or a query string.

    .DESCRIPTION
        Adds an AWS::WAFRegional::SqlInjectionMatchSet.FieldToMatch resource property to the template.
Specifies the part of a web request that you want AWS WAF to search, such as a specific header or a query string.

    .LINK
        http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-sqlinjectionmatchset-fieldtomatch.html

    .PARAMETER Type
        The part of the web request that you want AWS WAF to search for a specified string. Parts of a request that you can search include the following:
+  HEADER: A specified request header, for example, the value of the User-Agent or Referer header. If you choose HEADER for the type, specify the name of the header in Data.
+  METHOD: The HTTP method, which indicates the type of operation that the request is asking the origin to perform.
+  QUERY_STRING: A query string, which is the part of a URL that appears after a ? character, if any.
+  URI: The part of a web request that identifies a resource, for example, /images/daily-ad.jpg.
+  BODY: The part of a request that contains any additional data that you want to send to your web server as the HTTP request body, such as data from a form. The request body immediately follows the request headers. Note that only the first 8192 bytes of the request body are forwarded to AWS WAF for inspection. To allow or block requests based on the length of the body, you can create a size constraint set.
+  SINGLE_QUERY_ARG: The parameter in the query string that you will inspect, such as *UserName* or *SalesRegion*. The maximum length for SINGLE_QUERY_ARG is 30 characters.
+  ALL_QUERY_ARGS: Similar to SINGLE_QUERY_ARG, but rather than inspecting a single parameter, AWS WAF will inspect all parameters within the query for the value or regex pattern that you specify in TargetString.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-sqlinjectionmatchset-fieldtomatch.html#cfn-wafregional-sqlinjectionmatchset-fieldtomatch-type
        PrimitiveType: String
        UpdateType: Mutable

    .PARAMETER Data
        When the value of Type is HEADER, enter the name of the header that you want AWS WAF to search, for example, User-Agent or Referer. The name of the header is not case sensitive.
When the value of Type is SINGLE_QUERY_ARG, enter the name of the parameter that you want AWS WAF to search, for example, UserName or SalesRegion. The parameter name is not case sensitive.
If the value of Type is any other value, omit Data.

        Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-sqlinjectionmatchset-fieldtomatch.html#cfn-wafregional-sqlinjectionmatchset-fieldtomatch-data
        PrimitiveType: String
        UpdateType: Mutable

    .FUNCTIONALITY
        Vaporshell
    #>
    [OutputType('Vaporshell.Resource.WAFRegional.SqlInjectionMatchSet.FieldToMatch')]
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
        $Type,
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
        $Data
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
        $obj | Add-ObjectDetail -TypeName 'Vaporshell.Resource.WAFRegional.SqlInjectionMatchSet.FieldToMatch'
        Write-Verbose "Resulting JSON from $($MyInvocation.MyCommand): `n`n$($obj | ConvertTo-Json -Depth 5)`n"
    }
}
