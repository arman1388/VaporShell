# Add-VSAppStreamImageBuilderDomainJoinInfo

## SYNOPSIS
Adds an AWS::AppStream::ImageBuilder.DomainJoinInfo resource property to the template.
The name of the directory and organizational unit (OU to use to join the image builder to a Microsoft Active Directory domain.

## SYNTAX

```
Add-VSAppStreamImageBuilderDomainJoinInfo [[-OrganizationalUnitDistinguishedName] <Object>]
 [[-DirectoryName] <Object>] [<CommonParameters>]
```

## DESCRIPTION
Adds an AWS::AppStream::ImageBuilder.DomainJoinInfo resource property to the template.
The name of the directory and organizational unit (OU to use to join the image builder to a Microsoft Active Directory domain.

## PARAMETERS

### -OrganizationalUnitDistinguishedName
The distinguished name of the organizational unit for computer accounts.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-imagebuilder-domainjoininfo.html#cfn-appstream-imagebuilder-domainjoininfo-organizationalunitdistinguishedname
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DirectoryName
The fully qualified name of the directory for example, corp.example.com.

Documentation: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-imagebuilder-domainjoininfo.html#cfn-appstream-imagebuilder-domainjoininfo-directoryname
PrimitiveType: String
UpdateType: Mutable

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Vaporshell.Resource.AppStream.ImageBuilder.DomainJoinInfo
## NOTES

## RELATED LINKS

[http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-imagebuilder-domainjoininfo.html](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-imagebuilder-domainjoininfo.html)

