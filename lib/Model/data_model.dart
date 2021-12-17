class DataModel {
  DataModel({
    dynamic id,
    dynamic nodeId,
    dynamic name,
    dynamic fullName,
    dynamic private,
    Owner? owner,
    dynamic htmlUrl,
    dynamic description,
    dynamic fork,
    dynamic url,
    dynamic forksUrl,
    dynamic keysUrl,
    dynamic collaboratorsUrl,
    dynamic teamsUrl,
    dynamic hooksUrl,
    dynamic issueEventsUrl,
    dynamic eventsUrl,
    dynamic assigneesUrl,
    dynamic branchesUrl,
    dynamic tagsUrl,
    dynamic blobsUrl,
    dynamic gitTagsUrl,
    dynamic gitRefsUrl,
    dynamic treesUrl,
    dynamic statusesUrl,
    dynamic languagesUrl,
    dynamic stargazersUrl,
    dynamic contributorsUrl,
    dynamic subscribersUrl,
    dynamic subscriptionUrl,
    dynamic commitsUrl,
    dynamic gitCommitsUrl,
    dynamic commentsUrl,
    dynamic issueCommentUrl,
    dynamic contentsUrl,
    dynamic compareUrl,
    dynamic mergesUrl,
    dynamic archiveUrl,
    dynamic downloadsUrl,
    dynamic issuesUrl,
    dynamic pullsUrl,
    dynamic milestonesUrl,
    dynamic notificationsUrl,
    dynamic labelsUrl,
    dynamic releasesUrl,
    dynamic deploymentsUrl,
    dynamic createdAt,
    dynamic updatedAt,
    dynamic pushedAt,
    dynamic gitUrl,
    dynamic sshUrl,
    dynamic cloneUrl,
    dynamic svnUrl,
    dynamic homepage,
    dynamic size,
    dynamic stargazersCount,
    dynamic watchersCount,
    dynamic language,
    dynamic hasIssues,
    dynamic hasProjects,
    dynamic hasDownloads,
    dynamic hasWiki,
    dynamic hasPages,
    dynamic forksCount,
    dynamic mirrorUrl,
    dynamic archived,
    dynamic disabled,
    dynamic openIssuesCount,
    dynamic license,
    dynamic allowForking,
    dynamic isTemplate,
    List<dynamic>? topics,
    dynamic visibility,
    dynamic forks,
    dynamic openIssues,
    dynamic watchers,
    dynamic defaultBranch,
  }) {
    _id = id;
    _nodeId = nodeId;
    _name = name;
    _fullName = fullName;
    _private = private;
    _owner = owner;
    _htmlUrl = htmlUrl;
    _description = description;
    _fork = fork;
    _url = url;
    _forksUrl = forksUrl;
    _keysUrl = keysUrl;
    _collaboratorsUrl = collaboratorsUrl;
    _teamsUrl = teamsUrl;
    _hooksUrl = hooksUrl;
    _issueEventsUrl = issueEventsUrl;
    _eventsUrl = eventsUrl;
    _assigneesUrl = assigneesUrl;
    _branchesUrl = branchesUrl;
    _tagsUrl = tagsUrl;
    _blobsUrl = blobsUrl;
    _gitTagsUrl = gitTagsUrl;
    _gitRefsUrl = gitRefsUrl;
    _treesUrl = treesUrl;
    _statusesUrl = statusesUrl;
    _languagesUrl = languagesUrl;
    _stargazersUrl = stargazersUrl;
    _contributorsUrl = contributorsUrl;
    _subscribersUrl = subscribersUrl;
    _subscriptionUrl = subscriptionUrl;
    _commitsUrl = commitsUrl;
    _gitCommitsUrl = gitCommitsUrl;
    _commentsUrl = commentsUrl;
    _issueCommentUrl = issueCommentUrl;
    _contentsUrl = contentsUrl;
    _compareUrl = compareUrl;
    _mergesUrl = mergesUrl;
    _archiveUrl = archiveUrl;
    _downloadsUrl = downloadsUrl;
    _issuesUrl = issuesUrl;
    _pullsUrl = pullsUrl;
    _milestonesUrl = milestonesUrl;
    _notificationsUrl = notificationsUrl;
    _labelsUrl = labelsUrl;
    _releasesUrl = releasesUrl;
    _deploymentsUrl = deploymentsUrl;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _pushedAt = pushedAt;
    _gitUrl = gitUrl;
    _sshUrl = sshUrl;
    _cloneUrl = cloneUrl;
    _svnUrl = svnUrl;
    _homepage = homepage;
    _size = size;
    _stargazersCount = stargazersCount;
    _watchersCount = watchersCount;
    _language = language;
    _hasIssues = hasIssues;
    _hasProjects = hasProjects;
    _hasDownloads = hasDownloads;
    _hasWiki = hasWiki;
    _hasPages = hasPages;
    _forksCount = forksCount;
    _mirrorUrl = mirrorUrl;
    _archived = archived;
    _disabled = disabled;
    _openIssuesCount = openIssuesCount;
    _license = license;
    _allowForking = allowForking;
    _isTemplate = isTemplate;
    _topics = topics;
    _visibility = visibility;
    _forks = forks;
    _openIssues = openIssues;
    _watchers = watchers;
    _defaultBranch = defaultBranch;
  }

  DataModel.fromJson(dynamic json) {
    _id = json['id'];
    _nodeId = json['node_id'];
    _name = json['name'];
    _fullName = json['full_name'];
    _private = json['private'];
    _owner = json['owner'] != null ? Owner.fromJson(json['owner']) : null;
    _htmlUrl = json['html_url'];
    _description = json['description'];
    _fork = json['fork'];
    _url = json['url'];
    _forksUrl = json['forks_url'];
    _keysUrl = json['keys_url'];
    _collaboratorsUrl = json['collaborators_url'];
    _teamsUrl = json['teams_url'];
    _hooksUrl = json['hooks_url'];
    _issueEventsUrl = json['issue_events_url'];
    _eventsUrl = json['events_url'];
    _assigneesUrl = json['assignees_url'];
    _branchesUrl = json['branches_url'];
    _tagsUrl = json['tags_url'];
    _blobsUrl = json['blobs_url'];
    _gitTagsUrl = json['git_tags_url'];
    _gitRefsUrl = json['git_refs_url'];
    _treesUrl = json['trees_url'];
    _statusesUrl = json['statuses_url'];
    _languagesUrl = json['languages_url'];
    _stargazersUrl = json['stargazers_url'];
    _contributorsUrl = json['contributors_url'];
    _subscribersUrl = json['subscribers_url'];
    _subscriptionUrl = json['subscription_url'];
    _commitsUrl = json['commits_url'];
    _gitCommitsUrl = json['git_commits_url'];
    _commentsUrl = json['comments_url'];
    _issueCommentUrl = json['issue_comment_url'];
    _contentsUrl = json['contents_url'];
    _compareUrl = json['compare_url'];
    _mergesUrl = json['merges_url'];
    _archiveUrl = json['archive_url'];
    _downloadsUrl = json['downloads_url'];
    _issuesUrl = json['issues_url'];
    _pullsUrl = json['pulls_url'];
    _milestonesUrl = json['milestones_url'];
    _notificationsUrl = json['notifications_url'];
    _labelsUrl = json['labels_url'];
    _releasesUrl = json['releases_url'];
    _deploymentsUrl = json['deployments_url'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _pushedAt = json['pushed_at'];
    _gitUrl = json['git_url'];
    _sshUrl = json['ssh_url'];
    _cloneUrl = json['clone_url'];
    _svnUrl = json['svn_url'];
    _homepage = json['homepage'];
    _size = json['size'];
    _stargazersCount = json['stargazers_count'];
    _watchersCount = json['watchers_count'];
    _language = json['language'];
    _hasIssues = json['has_issues'];
    _hasProjects = json['has_projects'];
    _hasDownloads = json['has_downloads'];
    _hasWiki = json['has_wiki'];
    _hasPages = json['has_pages'];
    _forksCount = json['forks_count'];
    _mirrorUrl = json['mirror_url'];
    _archived = json['archived'];
    _disabled = json['disabled'];
    _openIssuesCount = json['open_issues_count'];
    _license = json['license'];
    _allowForking = json['allow_forking'];
    _isTemplate = json['is_template'];
    if (json['topics'] != null) {
      _topics = [];
      json['topics'].forEach((v) {
        _topics?.add((v));
      });
    }
    _visibility = json['visibility'];
    _forks = json['forks'];
    _openIssues = json['open_issues'];
    _watchers = json['watchers'];
    _defaultBranch = json['default_branch'];
  }
  dynamic _id;
  dynamic _nodeId;
  dynamic _name;
  dynamic _fullName;
  dynamic _private;
  Owner? _owner;
  dynamic _htmlUrl;
  dynamic _description;
  dynamic _fork;
  dynamic _url;
  dynamic _forksUrl;
  dynamic _keysUrl;
  dynamic _collaboratorsUrl;
  dynamic _teamsUrl;
  dynamic _hooksUrl;
  dynamic _issueEventsUrl;
  dynamic _eventsUrl;
  dynamic _assigneesUrl;
  dynamic _branchesUrl;
  dynamic _tagsUrl;
  dynamic _blobsUrl;
  dynamic _gitTagsUrl;
  dynamic _gitRefsUrl;
  dynamic _treesUrl;
  dynamic _statusesUrl;
  dynamic _languagesUrl;
  dynamic _stargazersUrl;
  dynamic _contributorsUrl;
  dynamic _subscribersUrl;
  dynamic _subscriptionUrl;
  dynamic _commitsUrl;
  dynamic _gitCommitsUrl;
  dynamic _commentsUrl;
  dynamic _issueCommentUrl;
  dynamic _contentsUrl;
  dynamic _compareUrl;
  dynamic _mergesUrl;
  dynamic _archiveUrl;
  dynamic _downloadsUrl;
  dynamic _issuesUrl;
  dynamic _pullsUrl;
  dynamic _milestonesUrl;
  dynamic _notificationsUrl;
  dynamic _labelsUrl;
  dynamic _releasesUrl;
  dynamic _deploymentsUrl;
  dynamic _createdAt;
  dynamic _updatedAt;
  dynamic _pushedAt;
  dynamic _gitUrl;
  dynamic _sshUrl;
  dynamic _cloneUrl;
  dynamic _svnUrl;
  dynamic _homepage;
  dynamic _size;
  dynamic _stargazersCount;
  dynamic _watchersCount;
  dynamic _language;
  dynamic _hasIssues;
  dynamic _hasProjects;
  dynamic _hasDownloads;
  dynamic _hasWiki;
  dynamic _hasPages;
  dynamic _forksCount;
  dynamic _mirrorUrl;
  dynamic _archived;
  dynamic _disabled;
  dynamic _openIssuesCount;
  dynamic _license;
  dynamic _allowForking;
  dynamic _isTemplate;
  List<dynamic>? _topics;
  dynamic _visibility;
  dynamic _forks;
  dynamic _openIssues;
  dynamic _watchers;
  dynamic _defaultBranch;

  dynamic get id => _id;
  dynamic get nodeId => _nodeId;
  dynamic get name => _name;
  dynamic get fullName => _fullName;
  dynamic get private => _private;
  Owner? get owner => _owner;
  dynamic get htmlUrl => _htmlUrl;
  dynamic get description => _description;
  dynamic get fork => _fork;
  dynamic get url => _url;
  dynamic get forksUrl => _forksUrl;
  dynamic get keysUrl => _keysUrl;
  dynamic get collaboratorsUrl => _collaboratorsUrl;
  dynamic get teamsUrl => _teamsUrl;
  dynamic get hooksUrl => _hooksUrl;
  dynamic get issueEventsUrl => _issueEventsUrl;
  dynamic get eventsUrl => _eventsUrl;
  dynamic get assigneesUrl => _assigneesUrl;
  dynamic get branchesUrl => _branchesUrl;
  dynamic get tagsUrl => _tagsUrl;
  dynamic get blobsUrl => _blobsUrl;
  dynamic get gitTagsUrl => _gitTagsUrl;
  dynamic get gitRefsUrl => _gitRefsUrl;
  dynamic get treesUrl => _treesUrl;
  dynamic get statusesUrl => _statusesUrl;
  dynamic get languagesUrl => _languagesUrl;
  dynamic get stargazersUrl => _stargazersUrl;
  dynamic get contributorsUrl => _contributorsUrl;
  dynamic get subscribersUrl => _subscribersUrl;
  dynamic get subscriptionUrl => _subscriptionUrl;
  dynamic get commitsUrl => _commitsUrl;
  dynamic get gitCommitsUrl => _gitCommitsUrl;
  dynamic get commentsUrl => _commentsUrl;
  dynamic get issueCommentUrl => _issueCommentUrl;
  dynamic get contentsUrl => _contentsUrl;
  dynamic get compareUrl => _compareUrl;
  dynamic get mergesUrl => _mergesUrl;
  dynamic get archiveUrl => _archiveUrl;
  dynamic get downloadsUrl => _downloadsUrl;
  dynamic get issuesUrl => _issuesUrl;
  dynamic get pullsUrl => _pullsUrl;
  dynamic get milestonesUrl => _milestonesUrl;
  dynamic get notificationsUrl => _notificationsUrl;
  dynamic get labelsUrl => _labelsUrl;
  dynamic get releasesUrl => _releasesUrl;
  dynamic get deploymentsUrl => _deploymentsUrl;
  dynamic get createdAt => _createdAt;
  dynamic get updatedAt => _updatedAt;
  dynamic get pushedAt => _pushedAt;
  dynamic get gitUrl => _gitUrl;
  dynamic get sshUrl => _sshUrl;
  dynamic get cloneUrl => _cloneUrl;
  dynamic get svnUrl => _svnUrl;
  dynamic get homepage => _homepage;
  dynamic get size => _size;
  dynamic get stargazersCount => _stargazersCount;
  dynamic get watchersCount => _watchersCount;
  dynamic get language => _language;
  dynamic get hasIssues => _hasIssues;
  dynamic get hasProjects => _hasProjects;
  dynamic get hasDownloads => _hasDownloads;
  dynamic get hasWiki => _hasWiki;
  dynamic get hasPages => _hasPages;
  dynamic get forksCount => _forksCount;
  dynamic get mirrorUrl => _mirrorUrl;
  dynamic get archived => _archived;
  dynamic get disabled => _disabled;
  dynamic get openIssuesCount => _openIssuesCount;
  dynamic get license => _license;
  dynamic get allowForking => _allowForking;
  dynamic get isTemplate => _isTemplate;
  List<dynamic>? get topics => _topics;
  dynamic get visibility => _visibility;
  dynamic get forks => _forks;
  dynamic get openIssues => _openIssues;
  dynamic get watchers => _watchers;
  dynamic get defaultBranch => _defaultBranch;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['node_id'] = _nodeId;
    map['name'] = _name;
    map['full_name'] = _fullName;
    map['private'] = _private;
    if (_owner != null) {
      map['owner'] = _owner?.toJson();
    }
    map['html_url'] = _htmlUrl;
    map['description'] = _description;
    map['fork'] = _fork;
    map['url'] = _url;
    map['forks_url'] = _forksUrl;
    map['keys_url'] = _keysUrl;
    map['collaborators_url'] = _collaboratorsUrl;
    map['teams_url'] = _teamsUrl;
    map['hooks_url'] = _hooksUrl;
    map['issue_events_url'] = _issueEventsUrl;
    map['events_url'] = _eventsUrl;
    map['assignees_url'] = _assigneesUrl;
    map['branches_url'] = _branchesUrl;
    map['tags_url'] = _tagsUrl;
    map['blobs_url'] = _blobsUrl;
    map['git_tags_url'] = _gitTagsUrl;
    map['git_refs_url'] = _gitRefsUrl;
    map['trees_url'] = _treesUrl;
    map['statuses_url'] = _statusesUrl;
    map['languages_url'] = _languagesUrl;
    map['stargazers_url'] = _stargazersUrl;
    map['contributors_url'] = _contributorsUrl;
    map['subscribers_url'] = _subscribersUrl;
    map['subscription_url'] = _subscriptionUrl;
    map['commits_url'] = _commitsUrl;
    map['git_commits_url'] = _gitCommitsUrl;
    map['comments_url'] = _commentsUrl;
    map['issue_comment_url'] = _issueCommentUrl;
    map['contents_url'] = _contentsUrl;
    map['compare_url'] = _compareUrl;
    map['merges_url'] = _mergesUrl;
    map['archive_url'] = _archiveUrl;
    map['downloads_url'] = _downloadsUrl;
    map['issues_url'] = _issuesUrl;
    map['pulls_url'] = _pullsUrl;
    map['milestones_url'] = _milestonesUrl;
    map['notifications_url'] = _notificationsUrl;
    map['labels_url'] = _labelsUrl;
    map['releases_url'] = _releasesUrl;
    map['deployments_url'] = _deploymentsUrl;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['pushed_at'] = _pushedAt;
    map['git_url'] = _gitUrl;
    map['ssh_url'] = _sshUrl;
    map['clone_url'] = _cloneUrl;
    map['svn_url'] = _svnUrl;
    map['homepage'] = _homepage;
    map['size'] = _size;
    map['stargazers_count'] = _stargazersCount;
    map['watchers_count'] = _watchersCount;
    map['language'] = _language;
    map['has_issues'] = _hasIssues;
    map['has_projects'] = _hasProjects;
    map['has_downloads'] = _hasDownloads;
    map['has_wiki'] = _hasWiki;
    map['has_pages'] = _hasPages;
    map['forks_count'] = _forksCount;
    map['mirror_url'] = _mirrorUrl;
    map['archived'] = _archived;
    map['disabled'] = _disabled;
    map['open_issues_count'] = _openIssuesCount;
    map['license'] = _license;
    map['allow_forking'] = _allowForking;
    map['is_template'] = _isTemplate;
    if (_topics != null) {
      map['topics'] = _topics?.map((v) => v.toJson()).toList();
    }
    map['visibility'] = _visibility;
    map['forks'] = _forks;
    map['open_issues'] = _openIssues;
    map['watchers'] = _watchers;
    map['default_branch'] = _defaultBranch;
    return map;
  }
}

/// login : "JakeWharton"
/// id : 66577
/// node_id : "MDQ6VXNlcjY2NTc3"
/// avatar_url : "https://avatars.githubusercontent.com/u/66577?v=4"
/// gravatar_id : ""
/// url : "https://api.github.com/users/JakeWharton"
/// html_url : "https://github.com/JakeWharton"
/// followers_url : "https://api.github.com/users/JakeWharton/followers"
/// following_url : "https://api.github.com/users/JakeWharton/following{/other_user}"
/// gists_url : "https://api.github.com/users/JakeWharton/gists{/gist_id}"
/// starred_url : "https://api.github.com/users/JakeWharton/starred{/owner}{/repo}"
/// subscriptions_url : "https://api.github.com/users/JakeWharton/subscriptions"
/// organizations_url : "https://api.github.com/users/JakeWharton/orgs"
/// repos_url : "https://api.github.com/users/JakeWharton/repos"
/// events_url : "https://api.github.com/users/JakeWharton/events{/privacy}"
/// received_events_url : "https://api.github.com/users/JakeWharton/received_events"
/// type : "User"
/// site_admin : false

class Owner {
  Owner({
    dynamic login,
    dynamic id,
    dynamic nodeId,
    dynamic avatarUrl,
    dynamic gravatarId,
    dynamic url,
    dynamic htmlUrl,
    dynamic followersUrl,
    dynamic followingUrl,
    dynamic gistsUrl,
    dynamic starredUrl,
    dynamic subscriptionsUrl,
    dynamic organizationsUrl,
    dynamic reposUrl,
    dynamic eventsUrl,
    dynamic receivedEventsUrl,
    dynamic type,
    dynamic siteAdmin,
  }) {
    _login = login;
    _id = id;
    _nodeId = nodeId;
    _avatarUrl = avatarUrl;
    _gravatarId = gravatarId;
    _url = url;
    _htmlUrl = htmlUrl;
    _followersUrl = followersUrl;
    _followingUrl = followingUrl;
    _gistsUrl = gistsUrl;
    _starredUrl = starredUrl;
    _subscriptionsUrl = subscriptionsUrl;
    _organizationsUrl = organizationsUrl;
    _reposUrl = reposUrl;
    _eventsUrl = eventsUrl;
    _receivedEventsUrl = receivedEventsUrl;
    _type = type;
    _siteAdmin = siteAdmin;
  }

  Owner.fromJson(dynamic json) {
    _login = json['login'];
    _id = json['id'];
    _nodeId = json['node_id'];
    _avatarUrl = json['avatar_url'];
    _gravatarId = json['gravatar_id'];
    _url = json['url'];
    _htmlUrl = json['html_url'];
    _followersUrl = json['followers_url'];
    _followingUrl = json['following_url'];
    _gistsUrl = json['gists_url'];
    _starredUrl = json['starred_url'];
    _subscriptionsUrl = json['subscriptions_url'];
    _organizationsUrl = json['organizations_url'];
    _reposUrl = json['repos_url'];
    _eventsUrl = json['events_url'];
    _receivedEventsUrl = json['received_events_url'];
    _type = json['type'];
    _siteAdmin = json['site_admin'];
  }
  dynamic _login;
  dynamic _id;
  dynamic _nodeId;
  dynamic _avatarUrl;
  dynamic _gravatarId;
  dynamic _url;
  dynamic _htmlUrl;
  dynamic _followersUrl;
  dynamic _followingUrl;
  dynamic _gistsUrl;
  dynamic _starredUrl;
  dynamic _subscriptionsUrl;
  dynamic _organizationsUrl;
  dynamic _reposUrl;
  dynamic _eventsUrl;
  dynamic _receivedEventsUrl;
  dynamic _type;
  dynamic _siteAdmin;

  dynamic get login => _login;
  dynamic get id => _id;
  dynamic get nodeId => _nodeId;
  dynamic get avatarUrl => _avatarUrl;
  dynamic get gravatarId => _gravatarId;
  dynamic get url => _url;
  dynamic get htmlUrl => _htmlUrl;
  dynamic get followersUrl => _followersUrl;
  dynamic get followingUrl => _followingUrl;
  dynamic get gistsUrl => _gistsUrl;
  dynamic get starredUrl => _starredUrl;
  dynamic get subscriptionsUrl => _subscriptionsUrl;
  dynamic get organizationsUrl => _organizationsUrl;
  dynamic get reposUrl => _reposUrl;
  dynamic get eventsUrl => _eventsUrl;
  dynamic get receivedEventsUrl => _receivedEventsUrl;
  dynamic get type => _type;
  dynamic get siteAdmin => _siteAdmin;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['login'] = _login;
    map['id'] = _id;
    map['node_id'] = _nodeId;
    map['avatar_url'] = _avatarUrl;
    map['gravatar_id'] = _gravatarId;
    map['url'] = _url;
    map['html_url'] = _htmlUrl;
    map['followers_url'] = _followersUrl;
    map['following_url'] = _followingUrl;
    map['gists_url'] = _gistsUrl;
    map['starred_url'] = _starredUrl;
    map['subscriptions_url'] = _subscriptionsUrl;
    map['organizations_url'] = _organizationsUrl;
    map['repos_url'] = _reposUrl;
    map['events_url'] = _eventsUrl;
    map['received_events_url'] = _receivedEventsUrl;
    map['type'] = _type;
    map['site_admin'] = _siteAdmin;
    return map;
  }
}
