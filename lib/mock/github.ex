defmodule Mehub.GithubMock do

  def make_request(:get, "/users/wuriyanto48") do
    {:ok,
      %HTTPoison.Response{
        body: %{
          "avatar_url" => "https://avatars2.githubusercontent.com/u/7042989?v=4",
          "bio" => "engineer, author & hobbyist. \r\nYoutube : Musobar Media",
          "blog" => "wuriyanto.com",
          "company" => "@purwokertodev ",
          "created_at" => "2014-03-24T03:15:26Z",
          "email" => nil,
          "events_url" => "https://api.github.com/users/wuriyanto48/events{/privacy}",
          "followers" => 38,
          "followers_url" => "https://api.github.com/users/wuriyanto48/followers",
          "following" => 2,
          "following_url" => "https://api.github.com/users/wuriyanto48/following{/other_user}",
          "gists_url" => "https://api.github.com/users/wuriyanto48/gists{/gist_id}",
          "gravatar_id" => "",
          "hireable" => true,
          "html_url" => "https://github.com/wuriyanto48",
          "id" => 7042989,
          "location" => "Banjarnegara, Indonesia",
          "login" => "wuriyanto48",
          "name" => "wuriyanto musobar",
          "node_id" => "MDQ6VXNlcjcwNDI5ODk=",
          "organizations_url" => "https://api.github.com/users/wuriyanto48/orgs",
          "public_gists" => 13,
          "public_repos" => 58,
          "received_events_url" => "https://api.github.com/users/wuriyanto48/received_events",
          "repos_url" => "https://api.github.com/users/wuriyanto48/repos",
          "site_admin" => false,
          "starred_url" => "https://api.github.com/users/wuriyanto48/starred{/owner}{/repo}",
          "subscriptions_url" => "https://api.github.com/users/wuriyanto48/subscriptions",
          "type" => "User",
          "updated_at" => "2018-09-29T11:23:56Z",
          "url" => "https://api.github.com/users/wuriyanto48"
        },
        headers: [
          {"Server", "GitHub.com"},
          {"Date", "Mon, 01 Oct 2018 12:00:18 GMT"},
          {"Content-Type", "application/json; charset=utf-8"},
          {"Content-Length", "1280"},
          {"Status", "200 OK"},
          {"X-RateLimit-Limit", "60"},
          {"X-RateLimit-Remaining", "57"},
          {"X-RateLimit-Reset", "1538398099"},
          {"Cache-Control", "public, max-age=60, s-maxage=60"},
          {"Vary", "Accept"},
          {"ETag", "\"62961a55c974ea209aa23f3f87c21df7\""},
          {"Last-Modified", "Sat, 29 Sep 2018 11:23:56 GMT"},
          {"X-GitHub-Media-Type", "github.v3; format=json"},
          {"Access-Control-Expose-Headers",
            "ETag, Link, Retry-After, X-GitHub-OTP, X-RateLimit-Limit, X-RateLimit-Remaining, X-RateLimit-Reset, X-OAuth-Scopes, X-Accepted-OAuth-Scopes, X-Poll-Interval"},
          {"Access-Control-Allow-Origin", "*"},
          {"Strict-Transport-Security",
            "max-age=31536000; includeSubdomains; preload"},
          {"X-Frame-Options", "deny"},
          {"X-Content-Type-Options", "nosniff"},
          {"X-XSS-Protection", "1; mode=block"},
          {"Referrer-Policy",
            "origin-when-cross-origin, strict-origin-when-cross-origin"},
          {"Content-Security-Policy", "default-src 'none'"},
          {"X-Runtime-rack", "0.031235"},
          {"X-GitHub-Request-Id", "F4D3:0AB1:25D4DDC:45CE591:5BB20C3D"}
        ],
        request_url: "https://api.github.com/users/wuriyanto48",
        status_code: 200
      }}
  end

  def make_request(:get, "/users/wury4") do
    {:ok,
      %HTTPoison.Response{
        body: %{
          "documentation_url" => "https://developer.github.com/v3/users/#get-a-single-user",
          "message" => "Not Found"
        },
        headers: [
          {"Server", "GitHub.com"},
          {"Date", "Mon, 01 Oct 2018 12:24:09 GMT"},
          {"Content-Type", "application/json; charset=utf-8"},
          {"Content-Length", "102"},
          {"Status", "404 Not Found"},
          {"X-RateLimit-Limit", "60"},
          {"X-RateLimit-Remaining", "53"},
          {"X-RateLimit-Reset", "1538398099"},
          {"X-GitHub-Media-Type", "github.v3; format=json"},
          {"Access-Control-Expose-Headers",
            "ETag, Link, Retry-After, X-GitHub-OTP, X-RateLimit-Limit, X-RateLimit-Remaining, X-RateLimit-Reset, X-OAuth-Scopes, X-Accepted-OAuth-Scopes, X-Poll-Interval"},
          {"Access-Control-Allow-Origin", "*"},
          {"Strict-Transport-Security",
            "max-age=31536000; includeSubdomains; preload"},
          {"X-Frame-Options", "deny"},
          {"X-Content-Type-Options", "nosniff"},
          {"X-XSS-Protection", "1; mode=block"},
          {"Referrer-Policy",
            "origin-when-cross-origin, strict-origin-when-cross-origin"},
          {"Content-Security-Policy", "default-src 'none'"},
          {"X-Runtime-rack", "0.018688"},
          {"X-GitHub-Request-Id", "4573:0AB1:25FA7D7:46102F2:5BB211DD"}
        ],
        request_url: "https://api.github.com/users/wury4",
        status_code: 404
      }}
  end

  def make_request(:get, "/users/wuriyanto48/orgs") do
    {:ok,
      %HTTPoison.Response{
        body: [
          %{
            "avatar_url" => "https://avatars3.githubusercontent.com/u/17444246?v=4",
            "description" => "Lengkap Dan Mudah",
            "events_url" => "https://api.github.com/orgs/Bhinneka/events",
            "hooks_url" => "https://api.github.com/orgs/Bhinneka/hooks",
            "id" => 17444246,
            "issues_url" => "https://api.github.com/orgs/Bhinneka/issues",
            "login" => "Bhinneka",
            "members_url" => "https://api.github.com/orgs/Bhinneka/members{/member}",
            "node_id" => "MDEyOk9yZ2FuaXphdGlvbjE3NDQ0MjQ2",
            "public_members_url" => "https://api.github.com/orgs/Bhinneka/public_members{/member}",
            "repos_url" => "https://api.github.com/orgs/Bhinneka/repos",
            "url" => "https://api.github.com/orgs/Bhinneka"
          },
          %{
            "avatar_url" => "https://avatars2.githubusercontent.com/u/34151345?v=4",
            "description" => "Ora Ngapak, Ora Kepenak, Ngapak :heart: Open Source",
            "events_url" => "https://api.github.com/orgs/purwokertodev/events",
            "hooks_url" => "https://api.github.com/orgs/purwokertodev/hooks",
            "id" => 34151345,
            "issues_url" => "https://api.github.com/orgs/purwokertodev/issues",
            "login" => "purwokertodev",
            "members_url" => "https://api.github.com/orgs/purwokertodev/members{/member}",
            "node_id" => "MDEyOk9yZ2FuaXphdGlvbjM0MTUxMzQ1",
            "public_members_url" => "https://api.github.com/orgs/purwokertodev/public_members{/member}",
            "repos_url" => "https://api.github.com/orgs/purwokertodev/repos",
            "url" => "https://api.github.com/orgs/purwokertodev"
          }
        ],
        headers: [
          {"Server", "GitHub.com"},
          {"Date", "Mon, 01 Oct 2018 12:16:40 GMT"},
          {"Content-Type", "application/json; charset=utf-8"},
          {"Content-Length", "1303"},
          {"Status", "200 OK"},
          {"X-RateLimit-Limit", "60"},
          {"X-RateLimit-Remaining", "55"},
          {"X-RateLimit-Reset", "1538398099"},
          {"Cache-Control", "public, max-age=60, s-maxage=60"},
          {"Vary", "Accept"},
          {"ETag", "\"865785735a9e68104ef592ef309c1d10\""},
          {"X-GitHub-Media-Type", "github.v3; format=json"},
          {"Access-Control-Expose-Headers",
            "ETag, Link, Retry-After, X-GitHub-OTP, X-RateLimit-Limit, X-RateLimit-Remaining, X-RateLimit-Reset, X-OAuth-Scopes, X-Accepted-OAuth-Scopes, X-Poll-Interval"},
          {"Access-Control-Allow-Origin", "*"},
          {"Strict-Transport-Security",
            "max-age=31536000; includeSubdomains; preload"},
          {"X-Frame-Options", "deny"},
          {"X-Content-Type-Options", "nosniff"},
          {"X-XSS-Protection", "1; mode=block"},
          {"Referrer-Policy",
            "origin-when-cross-origin, strict-origin-when-cross-origin"},
          {"Content-Security-Policy", "default-src 'none'"},
          {"X-Runtime-rack", "0.018336"},
          {"X-GitHub-Request-Id", "F4FC:0AB2:1D9FC48:3950724:5BB21028"}
        ],
        request_url: "https://api.github.com/users/wuriyanto48/orgs",
        status_code: 200
      }}
  end

  def make_request(:get, "/users/wuriyanto48/repos") do
    {:ok,
    %HTTPoison.Response{
      body: [
        %{
          "id" => 47394074,
          "node_id" => "MDEwOlJlcG9zaXRvcnk0NzM5NDA3NA==",
          "name" => "blogAppWithSpringMvc"
        },
        %{
          "id" => 122459398,
          "node_id" => "MDEwOlJlcG9zaXRvcnkxMjI0NTkzOTg=",
          "name" => "block-chain-cpp"
        },
      ],
      headers: [
        {"Server", "GitHub.com"},
        {"Date", "Mon, 01 Oct 2018 12:00:18 GMT"},
        {"Content-Type", "application/json; charset=utf-8"},
        {"Content-Length", "1280"},
        {"Status", "200 OK"},
        {"X-RateLimit-Limit", "60"},
        {"X-RateLimit-Remaining", "57"},
        {"X-RateLimit-Reset", "1538398099"},
        {"Cache-Control", "public, max-age=60, s-maxage=60"},
        {"Vary", "Accept"},
        {"ETag", "\"62961a55c974ea209aa23f3f87c21df7\""},
        {"Last-Modified", "Sat, 29 Sep 2018 11:23:56 GMT"},
        {"X-GitHub-Media-Type", "github.v3; format=json"},
        {"Access-Control-Expose-Headers",
          "ETag, Link, Retry-After, X-GitHub-OTP, X-RateLimit-Limit, X-RateLimit-Remaining, X-RateLimit-Reset, X-OAuth-Scopes, X-Accepted-OAuth-Scopes, X-Poll-Interval"},
        {"Access-Control-Allow-Origin", "*"},
        {"Strict-Transport-Security",
          "max-age=31536000; includeSubdomains; preload"},
        {"X-Frame-Options", "deny"},
        {"X-Content-Type-Options", "nosniff"},
        {"X-XSS-Protection", "1; mode=block"},
        {"Referrer-Policy",
          "origin-when-cross-origin, strict-origin-when-cross-origin"},
        {"Content-Security-Policy", "default-src 'none'"},
        {"X-Runtime-rack", "0.031235"},
        {"X-GitHub-Request-Id", "F4D3:0AB1:25D4DDC:45CE591:5BB20C3D"}
      ],
      request_url: "https://api.github.com/users/wuriyanto48/repos",
      status_code: 200
    }}
  end
end
