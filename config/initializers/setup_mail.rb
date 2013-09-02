ActionMailer::Base.smtp_settings = {
:address                => "smtp.gmail.com",
:port                   => 587,
:domain                 => "gmail.com",
:user_name              => "swarmdelivery@gmail.com",
:password               => "REDACTED",
:authentication         => "plain",
:enable_starttls_auto   => true
}
