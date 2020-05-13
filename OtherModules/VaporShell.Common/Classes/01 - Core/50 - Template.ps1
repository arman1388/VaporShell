class Template : VSObject {
    hidden [hashtable] $_resources = @{}
    [string] $AWSTemplateFormatVersion
    [object] $Transform
    [string] $Description
    [object] $Parameters
    [object] $Mappings
    [Resource[]] $Resources
    [object] $Outputs
    [object] $Rules

    static [string] Help() {
        $help = "This is the Template help."
        return $help
    }

    [string] ToString() {
        return $this.ToJson()
    }

    [void] AddResource([Resource] $resource) {
        $cleanProps = $resource.PSObject.Properties.Name.Where({$_ -notmatch '^(_|LogicalId$)' -and $null -ne $resource."$_"})
        $this._resources[$resource.LogicalId] = $resource | Select-Object $cleanProps
    }

    [void] AddResource([Resource[]] $resources) {
        $resources | ForEach-Object {
            $this.AddResource($_)
        }
    }

    hidden [void] _addAccessors() {
        $this | Add-Member -Force -MemberType ScriptProperty -Name Resources -Value {$this._resources} -SecondValue {
            param([Resource[]] $resources)
            $this.AddResource($resources)
        }
    }

    Template() : base() {}
    Template([hashtable] $props) : base($props) {}
    Template([psobject] $props) : base($props)  {}
}