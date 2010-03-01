SiteSetting.create(
  :name => "Four Bean Soup Broth",
  :admin_email => "admin@fourbeansoup.com",
  :url => "http://fourbeansoup.com",
  :description => "A website cooked with beautiful tasty code"
)
EmailTemplate.attr_protected.delete "name"
EmailTemplate.create([
  {
    :name => "welcome", 
    :subject => "Welcome to {{site.name}}", 
    :body => 
"{{user.display_name}}, your account {{site.name}} has been created.

{{site.url}}/
  "},
  {
    :name => "password_reset", 
    :subject => "You have requested a password reset for {{site.name}}",
    :body => "{{user.display_name}}, your password can be reset for {{site.name}}.
If you did not make this request, simply ignore this email.  
If you did make this request just click the link below:

{{site.url}}/password_resets/{{user.perishable_token}}/edit
  "},
  {
    :name => "invitation", 
    :subject => "You have been invited to {{site.name}}", 
    :body => 
"You've been invited to try out a new website.

Visit this url below to signup for an account, and make sure you use this email address:

{{site.url}}/users/sign_up
  "},
  {
    :name => "referral",
    :subject => "Your friend wants to share this website with you",
    :body =>
"Hello. Your friend wanted us to send this email to you to let you know about {{site.name}}. We gave them an option to include a personal note below.

Personal note
====================================

{{note}}

===

Please take a moment to visit {{site.name}}'s website {{site.url}}.

  "},
  {
    :name => "confirmation",
    :subject => "You have sent the website to your friends",
    :body =>
"Hello. We sent the email to your friends about {{site.name}}.

We just wanted to take a moment to say: Thanks for sharing our website!

  "},
  {
    :name => "admin_confirmation",
    :subject => "Someone sent a friend referral",
    :body => 
"{{referrer.email}} sent a referral about {{site.name}} to:

{% for referral in referrals %}
  {{referral.email}}
{% endfor %}
  "}
  ])
