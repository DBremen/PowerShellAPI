if ($req_query_channel -and $req_query_count){
    $channel = $req_query_channel
    $count = $req_query_count
    $rawPosts = (Invoke-RestMethod "https://www.reddit.com/r/$channel.json?limit=100" -Verbose).data.children.data
    $redditPosts = foreach ($post in $rawPosts){
        [PSCustomObject]@{
            Name        = $post.Name
            UPS         = $post.UPS
            NumComments = $post.num_comments
            Author      = $post.Author
            Flair       = $post.link_flair_text
            Created     = [timezone]::CurrentTimeZone.ToLocalTime(([datetime]'1/1/1970').AddSeconds($post.created_utc))
            Title       = $post.Title
            Url         = $post.Url
        }
    }

    $return = $redditPosts |
        where {$_.Created -gt (Get-Date).AddDays(-1)} |
        sort UPS, NumComments -Descending |
        select -First $count |
        ConvertTo-Json |
        Out-String 
    
    Out-File -Encoding ascii -FilePath $res -InputObject $return
}


