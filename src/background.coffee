filter =
  urls: [
    "http://codeforces.com/*"
    "http://codeforces.ru/*"
  ]

chrome.webRequest.onBeforeRequest.addListener(
  ()->
    console.log "onBeforeRequest: ", arguments
  filter
)

chrome.webRequest.onResponseStarted.addListener(
  ()->
    console.log "onResponseStarted", arguments
  filter
)

chrome.webRequest.onCompleted.addListener(
  ()->
    console.log "onCompleted", arguments
  filter
)

