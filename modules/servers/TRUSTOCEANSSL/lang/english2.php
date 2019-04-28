<?php
/*  Chinese Simple Language File*/
/* WHMCS模块语言文件 - 客户端 */


$TRUSTOCEAN_LANG['trustoceanssl']['clientnav']['mysslcertificate'] = "Manage SSL";

/* 新的语言文件for TRUSTOCEANSSL 产品模块*/
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setupone']['title'] = "Step1： Upload your CSR code";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setupone']['desc'] = "You can upload your csr code generated by local openssl. or use online generater to create one: https://csrgenerator.com/";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setupone']['uploadcsr'] = "Upload generated CSR code";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setupone']['generatecsr'] = "Online CSR generate";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setupone']['inputcsr'] = "CSR Code";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setupone']['csrplaceholder'] = "Paste your CSR code to here, support ECC and RSA CSR";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setupone']['commonname'] = "Main Domain Name<br>(FQDN, Not support IPv4)";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setupone']['commonnameplaceholder'] = "CommonName will use as certificate CN domain";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setupone']['emailaddress'] = "Email";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setupone']['emailaddressplaceholder'] = "email address to receive CSR and encrypted-private key";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setupone']['signtype'] = "Signature type";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setupone']['signtypeplacesafe'] = "Commonly Used";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setupone']['signtypeplacefaster'] = "Recommend";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setupone']['signaglor'] = "Signature algorithm";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setupone']['privatetoken'] = "Private Key Token";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setupone']['privatetokenplaceholder'] = "Please set a password to encrypt your private key";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setupone']['nextsetup'] = "Next";

$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setupone']['reissuesubmit'] = "Reissue Now";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['useoldcsr'] = "Use Current CSR";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['generatenewcsr'] = "Auto Generate New CSR";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['uploadnewcsr'] = "Upload New CSR";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['reissue']['title'] = "Reissue Your Certificate";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['reissue']['description'] = "You can use this reissue page for change your private key , or change / modify your Domain Name for Multi Domain Certificate, For Multi Domain Certificate, You can only verify the new domains. We will issue a new SSL Certificate for you, so you need upload the new certificate to your server for correct use.";

#第二步提交域名列表
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setup2']['title'] = "Step2： Upload your Domain Names";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setup2']['desc'] = "Please input all of domain names(or IPv4 address if this certificate support) you want to protect in this certificate, also need input the CSR CommonName and input the top-level domain for wildcard domains. we are not support IPv6 address currently. <br>Your order can upload :domainCount domain names, if you want to add more domains , please add more SANs to your order before upload domains.";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setup2']['inputdomain'] = "Input One Domain Per Line (:domainCount Domains Allowed)";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setup2']['next2'] = "Next";

#第三步 选择域名验证方式
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setup3']['title'] = "Step3： Choose & Finish The Domain Validation Method";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setup3']['desc'] = "Before we can issue your certificate, you must choose and finish the Domain Validation Process for each domain.";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setup3']['dndinfo'] = "Click Here to View Domain Validation Description";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setup3']['dcvdns1'] = "1. DNS CNAME Record：";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setup3']['dcvdns2'] = "You can choose a DCV CNAME_CSR_HASH method, then you need create one CNAME record for verification your domain name.";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setup3']['dcvhttp1'] = "2. HTTP FILE Upload：";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setup3']['dcvhttp2'] = "You can choose a DCV HTTP_CSR_HASH method for your domain to pass domain verification, you need download one .txt file and upload to your website, then our server will access the file to do verification. (http:// 80 port)";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setup3']['dcvhttps1'] = "3. HTTPS FILE Upload：";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setup3']['dcvhttps2'] = "You can choose a DCV HTTPS_CSR_HASH method for your domain to pass domain verification, you need download one .txt file and upload to your website, then our server will access the file to do verification. (https:// 443 port)";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setup3']['table']['domain'] = "Domain";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setup3']['table']['status'] = "Status";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setup3']['table']['method'] = "Method";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setup3']['table']['selectall'] = "Select For All";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setup3']['table']['selectalldesc'] = "Use the selected method for all domains";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setup3']['table']['dns'] = "CNAME_CSR_HASH";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setup3']['table']['http'] = "HTTP_CSR_HASH";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setup3']['table']['https'] = "HTTPS_CSR_HASH";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setup3']['table']['remove'] = "Remove";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setup3']['table']['removedesc'] = "You can remove this domain if you cannot verifiy now.";

$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setup3']['table']['dcv']['host'] = "Host";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setup3']['table']['dcv']['type'] = "Type";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setup3']['table']['dcv']['point'] = "Value";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setup3']['table']['dcv']['typecname'] = "CNAME(Alias)";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setup3']['table']['dcv']['copy'] = "Copy";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setup3']['table']['dcv']['download'] = "Please download";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setup3']['table']['dcv']['upload'] = "Upload it to";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setup3']['table']['dcv']['folder'] = "Path";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setup3']['table']['dcv']['access'] = "Try to access this file";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setup3']['table']['dcv']['emaildesc'] = "↓Select Email Address↓";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setup3']['table']['dcv']['status']['needverification'] = "Processing";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setup3']['table']['dcv']['status']['verified'] = "Verified";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setup3']['table']['dcv']['status']['waitingemail'] = "Waiting Submit";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setup3']['table']['dcv']['change']['process'] = "Tring to update DCV method...";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setup3']['table']['dcv']['submit']['desc'] = "After you Save&Submit your order to CA, you also can check your Domain Verification Status in this page, you must finish the Domain Verification Process for all domains listed before cert can be issued.";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setup3']['table']['dcv']['submit']['btn'] = "Save & Submit to CA";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['setup3']['table']['dcv']['submit']['returnlist'] = "View Certificates";

# 即将签发证书页面预览
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['caprocessing']['title'] = "We are processing your certificate";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['caprocessing']['desc'] = "1.For Domain Validation Certificate, It is need 5-15 minutes to issue。<br>2.For Organization Validation Certificate, Maybe need 7-15 days to process and issue。<br>3.We will send an email to you onece your certificate issued out。";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['caprocessing']['desc2'] = "Now, Please use these buttons to finishd your Domain Validation, after that we will auto-issue your certifica.";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['caprocessing']['resenddcv'] = "Resend DCV Emails";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['caprocessing']['checkdcv'] = "View Order Validation Status";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['caprocessing']['submitticket'] = "Submit Ticket";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['issued']['title'] = "Your Certificate is issued & Active";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['issued']['desc'] = "Congratulations，your certificate issued successfully, next step is to install the certificate on your web servers or CDN servers, you can view our documents.";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['issued']['btn']['downloadcert'] = "Download Cert";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['issued']['btn']['convertcert'] = "Convert Cert(Decrypt PrivateKey)";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['issued']['btn']['reissue'] = "Reissue(Modify Domains & PrivateKey)";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['issued']['btn']['reissuesubmit'] = "Reissue Now";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['issued']['btn']['subticket'] = "Submit Ticket";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['issued']['btn']['techdocs'] = "Knowledgebase";

$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['issued']['btn']['dia1'] = "Download Cert with CA-Chains Only";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['issued']['btn']['dia2'] = "Helper can convert your cert format";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['issued']['btn']['dia3'] = "This action can help you to change your CSR、PrivateKey, or modify domains for MDC cert order.";

$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['issued']['info']['cert'] = "Certificate";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['issued']['info']['chaincert'] = "Chains Cert";

$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['issued']['sannotice'] = "Notice: The domains in CSR code will not be used, so you need input all the domains you want to protect in the next Domain Name list. The First Domain Name will be the Primary Domain Name.";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['issued']['inputcsr'] = "Input CSR code";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['issued']['inputcsrplaceholder'] = "Input the CSR code generated by yourself";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['issued']['inputsandomains'] = "Input Domain Names";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['issued']['inputsandomainsplaceholder'] = "One Domain Name perline";

// 企业证书注册字段
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['organization']['organization_name'] = "Organization Legal Name";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['organization']['organizationalUnitName'] = "Organization Unit Name";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['organization']['registerted_address_line1'] = "Registered Address";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['organization']['registerted_no'] = "Organization ID";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['organization']['country'] = "Country";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['organization']['state'] = "State";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['organization']['city'] = "City";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['organization']['postal_code'] = "Postal Code";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['organization']['organization_phone'] = "Organization Phone";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['organization']['date_of_incorporation'] = "Date of incorporation";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['organization']['contact_name'] = "Contact Name";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['organization']['contact_title'] = "Contact Title";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['organization']['contact_phone'] = "Contact Phone";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['organization']['notice'] = "Notice: Descript your Basic Organization Information, all the basic information must fit your Business License, we will check that after you submit.";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['organization']['contactnotice'] = "Notice: This person must be a staff of this Organization you apply for. the email address will used as EV Agreements Click Through Verification.";

$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['organization']['info2'] = "Organization Verification";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['organization']['info2desc'] = "We will contact you with 1-2 work days, if you want to contact TrustOcean SSL CA for organization verification process, please email to verification@ticket.trustocean.com and place order number in email title, your OrderNumber#";


$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['issued']['info']['certinfo'] = "Certificate Details";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['issued']['info']['orginfo'] = "Organization Details";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['issued']['info']['orderinfo'] = "Order Details";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['issued']['info']['convertcert'] = "Convert Cert(Decrypt PrivateKey)";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['issued']['info']['certno'] = "Certificate ID";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['issued']['info']['cnname'] = "Common Name";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['issued']['info']['status'] = "Certificate Status";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['issued']['info']['ca'] = "Authority";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['issued']['info']['subca'] = "Issuer Name";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['issued']['info']['signaglor'] = "Signature Algorithm";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['issued']['info']['valid'] = "Validity";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['issued']['info']['sanname'] = "Alternate Names";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['issued']['info']['ct'] = "Certificate Transparency";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['issued']['info']['from'] = "From";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['issued']['info']['to'] = "Till";

$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['info']['status']['dv'] = "Domain Validation";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['info']['status']['ov'] = "Organization Validation";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['sider']['title'] = "Order Details";

$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['upgrade']['cannotdowngrade'] = "Cannot Downgrade your SAN domain count !";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['upgrade']['cannotupgrade'] = "Only the Active、Configuration Status certificate can upgrade SAN count.";

$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['issued']['convert']['desc'] = "Notice：You can use this tool to decrypt your private key and convert your certificate to formats(Nginx、Apahce、IIS、CDN), If you use our console to generat your csr before, we have sent the private key to your email box (:email).";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['issued']['convert']['privatekey'] = "Private Key";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['issued']['convert']['privatekeydesc'] = "Check your email box, we may emailed the encrypted private key generated online to you";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['issued']['convert']['keytoken'] = "Private Key Token";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['issued']['convert']['keytokendesc'] = "Input your private key token";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['issued']['convert']['convertbtn'] = "Convert Now";

$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['sider']['type'] = "Type";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['sider']['class'] = "Class";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['sider']['valid'] = "Created At";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['sider']['trustoceanno'] = "SSL Service ID";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['sider']['comodono'] = "COMODO Order ID";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['sider']['certinfo'] = "View Details";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['sider']['certlist'] = "Back To List";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['sider']['dcvmanagement'] = "DCV Status";

# SAN增加页面
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['addsan']['desc'] = "For Multi Domain Certificate Order, You can add more SAN domains any time, but no more than 250 domains in total.";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['addsan']['btn'] = "Add SANs";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['addsan']['desc2'] = "Currently: :total Domain(s)";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['addsan']['after'] = "Domain,  :price / SAN";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['addsan']['btn2'] = "Next";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['addsan']['desc3'] = "How Many Domains You Want To Add?";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['addsan']['desc4'] = "Input a number";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['addsan']['erpage']['title'] = "Please pay the previous invoice #:invoiceid";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['addsan']['erpage']['desc'] = "You are currently unable to add a domain name because the current certificate has an outstanding upgrade invoice.<br><br>If you need to continue, please pay the unpaid bill first, and you can continue to operate after the bill is paid.<br><br>如果您认为您此消息有误，请提交故障工单给我们。";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['addsan']['erpage']['paybtn'] = "Pay Now";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['addsan']['erpage']['submitticket'] = "Submit Ticket";

# 全局自定义菜单
$TRUSTOCEAN_LANG['trustoceanssl']['customnav']['top']['applyssl'] = "Apply Certificate";
$TRUSTOCEAN_LANG['trustoceanssl']['customnav']['top']['myssl'] = "Manage Certificate";

# 在下面添加更多的语言翻译, 同时需要修改模板文件进行使用

$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['status']['verified'] = "Verified";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['status']['processing'] = "Processing";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['status']['emailsent'] = "Email Sent";

$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['btn']['updatedcv'] = "Check Verification Status";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['btn']['loadingtext'] = "Processing...";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['btn']['checkissue'] = "Check Certificate Status";
$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['btn']['retrydcv'] = "ReSend DCV Email / Check Domain";

$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['choosecsr'] = "Choose CSR";


// API错误信息
$TRUSTOCEAN_LANG['trustoceanssl']['apierror']['orginfoe2'] = "Please provide all the Organization Information!";
$TRUSTOCEAN_LANG['trustoceanssl']['apierror']['wait5'] = "Please waiting 3 minutes before next checking avaliable.";
$TRUSTOCEAN_LANG['trustoceanssl']['apierror']['repeatdomain'] = "One or more Domain Name / IPv4 Address was repeated, please check your domain list.";
$TRUSTOCEAN_LANG['trustoceanssl']['apierror']['amountsan'] = "The number of domain names exceeds the limit. Please upgrade the SAN number of domain names and try again.";
$TRUSTOCEAN_LANG['trustoceanssl']['apierror']['wildcard'] = "Your Certificate does not support Wildcard Domain, Please remove：";
$TRUSTOCEAN_LANG['trustoceanssl']['apierror']['noip'] = "Your Certificate does not support IPv4 address, please remove it.";
$TRUSTOCEAN_LANG['trustoceanssl']['apierror']['notcorrectdomain'] = "These Domains not correct: ";
$TRUSTOCEAN_LANG['trustoceanssl']['apierror']['nothaovedoamin'] = "Please provide domain(s) for your certificate order.";
$TRUSTOCEAN_LANG['trustoceanssl']['apierror']['nocsrcode'] = "The domain name in your CSR code is not correct.";
$TRUSTOCEAN_LANG['trustoceanssl']['apierror']['iswildcard'] = "Your Certificate is one wildcard certificate order, please input domain like：*.trustocean.com";
$TRUSTOCEAN_LANG['trustoceanssl']['apierror']['domainincorrect'] = "You provided one incorrect domain name, please check and try it again.";
$TRUSTOCEAN_LANG['trustoceanssl']['apierror']['notfirstip'] = "The first domain name should not be an IPv4 address for this certificate.";
$TRUSTOCEAN_LANG['trustoceanssl']['apierror']['ipincsr'] = "Please do not use an IPv4 address as your CSR code CommonName, please re-generate your CSR code and try again.";
$TRUSTOCEAN_LANG['trustoceanssl']['apierror']['ipincsrcommon'] = "Cannot use an IPv4 address as CommonName, If you want to protect IPv4 address, please buy one Public IP certificate.";
$TRUSTOCEAN_LANG['trustoceanssl']['apierror']['cannotsubmitca'] = "Your certificate cannot submit to CA, please submit one ticket to us.";
$TRUSTOCEAN_LANG['trustoceanssl']['apierror']['ipdcverr'] = "Only `HTTP` and `HTTPS` method can use for IPv4 address verification.";
$TRUSTOCEAN_LANG['trustoceanssl']['apierror']['incorrectcsrcode'] = "You are not input your CSR code, or your CSR code not correct, please check and try.";
$TRUSTOCEAN_LANG['trustoceanssl']['apierror']['cannotrefundfor30days'] = "Order more than 30 days refund validity, refund operation can not be carried out.";

$TRUSTOCEAN_LANG['trustoceanssl']['apierror']['cannotremovesan'] = "Only MultiDomain certificate can be remove Domain(s) from.";
$TRUSTOCEAN_LANG['trustoceanssl']['apierror']['cannotremovesanone'] = "Each certificate retains at least one domain name and cannot delete：";
$TRUSTOCEAN_LANG['trustoceanssl']['apierror']['cannotremovesanverified'] = "This domain has been verified, cannot delete：";
$TRUSTOCEAN_LANG['trustoceanssl']['apierror']['privatekeyincorrect'] = "Your privateKey not correct or Token not correct, please check and try it again！";
$TRUSTOCEAN_LANG['trustoceanssl']['apierror']['cannotresetorder'] = "You cannot set this order to an new order！Because you have submitted it to CA.";

$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['caprocessing']['resenderror'] = "Cannot play this action now!";

$TRUSTOCEAN_LANG['trustoceanssl']['enroll']['desc90'] = "Notice: Once you clicked the ReCheck and Check Verification Status button, we may need 5-20 minutes to check all of your domains for verification if your DCV setup its correct, sometime, it may take more long times.";


$TRUSTOCEAN_LANG['trustoceanssl']['hookupgrade']['cancelledorder'] = "Cannot Add SAN to a cancelled order";
$TRUSTOCEAN_LANG['trustoceanssl']['hookupgrade']['notmdcorder'] = "This is not a Multi Domains Certificate, cannot upgrade the SAN";
$TRUSTOCEAN_LANG['trustoceanssl']['hookupgrade']['unpaidInvoice'] = "Before You try this upgrade, you must pay the Invocie#";
$TRUSTOCEAN_LANG['trustoceanssl']['hookupgrade']['internalApiError'] = "Something error found when we try to process your request, please contact us by ticket to report this error.";
$TRUSTOCEAN_LANG['trustoceanssl']['hookupgrade']['invoiceDesc'] = "Cutomer upgrade the SAN count by client area upgrade page.";
$TRUSTOCEAN_LANG['trustoceanssl']['hookupgrade']['invoiceNotes'] = "This is an TrustOcean SSL SAN invoice, please do not mark as paid by your hand.";



return $TRUSTOCEAN_LANG;
