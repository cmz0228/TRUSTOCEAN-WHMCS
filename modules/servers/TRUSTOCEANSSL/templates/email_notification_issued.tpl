{literal}<style>p{margin-bottom: 5px;}</style>{/literal}<p>Dear {$client_name},</p><p>Your Certificate applied at {$cert_created_at} has been issued successfully,  This email is the notification for your certificate and caCertificate content, you can also download your certificate on our website！</p><p>Certificate: {$cert_name}<br><span style="color: #626262; background-color: #ffffff;">Valid From: {$cert_valid_at}</span><br>Valid Till: {$cert_expire_at}<br>Domain Names: {$cert_domain_list}</p><p>Certificate Code:</p><pre>{$cert_cert_code}</pre><p>CA Chains(Intermediate certificate) Code:</p><pre>{$cert_ca_code}</pre><p>Thank you for choosing to use our TLS/SSL security certificate service. For reference to the certificate installation document, please go to our help center.</p><p><span style="color: #626262; background-color: #ffffff;">{$signature}</span></p>