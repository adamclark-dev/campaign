message=$(git log -n 1 --pretty=format:%s $hash | head -c 20);

if [[ $(echo $message | grep 'major') ]]; then
  method='major'
elif [[ $(echo $message | grep 'minor') ]]; then
  method='minor'
else
  method='patch'
fi

release-it $method -n