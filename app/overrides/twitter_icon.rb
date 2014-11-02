Deface::Override.new(
  :virtual_path => "spree/users/show",
  :name => "twitter",
  :insert_after => "[data-hook='account_summary'] #user-info dd:first"
) do
<<-CODE.chomp

<dt><a href="https://twitter.com/share" class="twitter-share-button" data-url="https://19thholeswag.com/r/WRTIBHEJ" data-text="I'm never paying full price for golf fashion ever again! Join me!" data-via="19thHoleSwag" data-size="large" data-hashtags="birdienation">Tweet</a></dt>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
CODE
end