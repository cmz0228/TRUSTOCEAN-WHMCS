<style type="text/css">
    .tohide{
        display: none;
    }
    .tohide2{
        display: none;
    }
</style>
<div class="section">
    <div class="section-header">
        <h3>{$MODLANG.trustoceanssl.enroll.setupone.title}</h3>
        <p>{$MODLANG.trustoceanssl.enroll.setupone.desc}</p>
        {if $result}
			{include file="$template/includes/alert.tpl" type="warning" msg=$result textcenter=true}
		{/if}
    </div>
    <script type="text/javascript" src="/modules/servers/TRUSTOCEANSSL/assets/csrgenerator/org/pkijs/common.js">
    </script>
    <script type="text/javascript" src="/modules/servers/TRUSTOCEANSSL/assets/csrgenerator/org/pkijs/asn1.js">
    </script>
    <script type="text/javascript" src="/modules/servers/TRUSTOCEANSSL/assets/csrgenerator/org/pkijs/x509_schema.js">
    </script>
    <script type="text/javascript" src="/modules/servers/TRUSTOCEANSSL/assets/csrgenerator/org/pkijs/x509_simpl.js">
    </script>
    <script type="text/javascript" src="/modules/servers/TRUSTOCEANSSL/assets/csrgenerator/org/pkijs/application.js">
    </script>
    <div class="section-body" style="text-align: left;">
        <form data-certificate-baseinfo role="form" method="post">
            <input type="hidden" name="id" value="{$vars.serviceid}">
            <input type="hidden" name="responsetype" value="json">
            <div class="panel-group panel-group-condensed is-selected" >
                <div class="panel panel-check" >
                    <div class="panel-collapse collapse in"  style="">
                        <div class="panel-body">
                            <div class="m-w-416">
                                <div class="form-group">
                                    <label for="inputCsr" class="control-label">{$MODLANG.trustoceanssl.enroll.choosecsr}</label>
                                    <select name="csroption" class="form-control" onclick="csrchecker2('{$vars.ismultidomain}');">
                                        <option value="upload">{$MODLANG.trustoceanssl.enroll.uploadnewcsr}</option>
                                    </select>
                                </div>
                                <div class="form-group" data-input-csr  style="display: none;">
                                    <label for="inputNs1" class="control-label">{$MODLANG.trustoceanssl.enroll.issued.inputcsr}</label>
                                    <p class="text-danger">提示: <a  data-toggle="modal" data-target="#myCsrModal" class="btn btn-xs btn-success">CSR离线生成器</a> 可帮助您使用浏览器进行CSR和私钥生成, 页面将会自动下载您的私钥进行备份, 请您妥善保存。</p>
                                    <textarea id="x509_csrcode" type="text" name="csrcode" autocomplete="new-password" class="form-control domnsinputs" placeholder="{$MODLANG.trustoceanssl.enroll.issued.inputcsrplaceholder}" value="" style="min-height: 200px;"></textarea>
                                </div>
                                {if $vars.ismultidomain !== "on"}
                                <div class="form-group" data-sinledomaininput>
                                    <label for="inputNs1" class="control-label">{$MODLANG.trustoceanssl.enroll.setupone.commonname}</label>
                                    <input type="text" name="domain" autocomplete="new-password" class="form-control domnsinputs" placeholder="{$MODLANG.trustoceanssl.enroll.setupone.commonnameplaceholder}" value="">
                                </div>
                                {else}
                                <div class="text-info">{$MODLANG.trustoceanssl.enroll.issued.sannotice}</div>
                                <div class="form-group">
                                    <label for="inputNs1" class="control-label">{$MODLANG.trustoceanssl.enroll.issued.inputsandomains}</label>
                                    <textarea type="text" name="domainlist" autocomplete="new-password" class="form-control domnsinputs" placeholder="{$MODLANG.trustoceanssl.enroll.issued.inputsandomainsplaceholder}" style="min-height: 120px" value=""></textarea>
                                </div>
                                {/if}

                                {if $vars.configoption2 !== "dv"}
                                    <hr>
                                    <div class="text-info">{$MODLANG.trustoceanssl.enroll.organization.notice}</div>
                                    <div class="form-group">
                                        <label for="inputNs1" class="control-label">{$MODLANG.trustoceanssl.enroll.organization.organization_name}</label>
                                        <input type="text" name="organization_name" required autocomplete="new-password" class="form-control domnsinputs" placeholder="" value="">
                                    </div>
                                    <div class="form-group">
                                        <label for="inputNs1" class="control-label">{$MODLANG.trustoceanssl.enroll.organization.organizationalUnitName}</label>
                                        <input type="text" name="organizationalUnitName" autocomplete="new-password" class="form-control domnsinputs" placeholder="" value="">
                                    </div>
                                    <div class="form-group">
                                        <label for="inputNs1" class="control-label">{$MODLANG.trustoceanssl.enroll.organization.registered_address_line1}</label>
                                        <input type="text" name="registered_address_line1" autocomplete="new-password" class="form-control domnsinputs" placeholder="" value="">
                                    </div>
                                    <div class="form-group">
                                        <label for="inputNs1" class="control-label">{$MODLANG.trustoceanssl.enroll.organization.registerted_no}</label>
                                        <input type="text" name="registered_no" autocomplete="new-password" class="form-control domnsinputs" placeholder="" value="">
                                    </div>
                                    <div class="form-group">
                                        <label for="inputNs1" class="control-label">{$MODLANG.trustoceanssl.enroll.organization.country}</label>
                                        <input type="text" name="country" autocomplete="new-password" class="form-control domnsinputs" placeholder="CN" value="">
                                    </div>
                                    <div class="form-group">
                                        <label for="inputNs1" class="control-label">{$MODLANG.trustoceanssl.enroll.organization.state}</label>
                                        <input type="text" name="state" autocomplete="new-password" class="form-control domnsinputs" placeholder="" value="">
                                    </div>
                                    <div class="form-group">
                                        <label for="inputNs1" class="control-label">{$MODLANG.trustoceanssl.enroll.organization.city}</label>
                                        <input type="text" name="city" autocomplete="new-password" class="form-control domnsinputs" placeholder="" value="">
                                    </div>
                                    <div class="form-group">
                                        <label for="inputNs1" class="control-label">{$MODLANG.trustoceanssl.enroll.organization.postal_code}</label>
                                        <input type="text" name="postal_code" autocomplete="new-password" class="form-control domnsinputs" placeholder="" value="">
                                    </div>
                                    <div class="form-group">
                                        <label for="inputNs1" class="control-label">{$MODLANG.trustoceanssl.enroll.organization.organization_phone}</label>
                                        <input type="text" name="organization_phone" autocomplete="new-password" class="form-control domnsinputs" placeholder="" value="">
                                    </div>
                                    <div class="form-group">
                                        <label for="inputNs1" class="control-label">{$MODLANG.trustoceanssl.enroll.organization.date_of_incorporation}</label>
                                        <input type="text" name="date_of_incorporation" autocomplete="new-password" class="form-control domnsinputs" placeholder="2016-03-18" value="">
                                    </div>
                                    <hr>
                                    <div class="text-info">{$MODLANG.trustoceanssl.enroll.organization.contactnotice}</div>
                                    <div class="form-group">
                                        <label for="inputNs1" class="control-label">{$MODLANG.trustoceanssl.enroll.organization.contact_name}</label>
                                        <input type="text" name="contact_name" autocomplete="new-password" class="form-control domnsinputs" placeholder="" value="">
                                    </div>
                                    <div class="form-group">
                                        <label for="inputNs1" class="control-label">{$MODLANG.trustoceanssl.enroll.organization.contact_title}</label>
                                        <input type="text" name="contact_title" autocomplete="new-password" class="form-control domnsinputs" placeholder="" value="">
                                    </div>
                                    <div class="form-group">
                                        <label for="inputNs1" class="control-label">{$MODLANG.trustoceanssl.enroll.organization.contact_phone}</label>
                                        <input type="text" name="contact_phone" autocomplete="new-password" class="form-control domnsinputs" placeholder="" value="">
                                    </div>
                                {/if}
                                <div class="form-group">
                                    <label for="inputNs1" class="control-label">{$MODLANG.trustoceanssl.enroll.setupone.emailaddress}</label>
                                    <input type="text" name="email" autocomplete="new-password" class="form-control domnsinputs" placeholder="{$MODLANG.trustoceanssl.enroll.setupone.emailaddressplaceholder}" value="">
                                    <p>此邮箱地址将传递给CA颁发机构, 接受证书签发和到期提醒邮件, 且作为证书订单的所有者身份识别邮箱.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <script type="application/javascript">

                    $(document).ready(function() {
                        csrchecker2('{$vars.ismultidomain}');
                    });

                   function csrchecker2(multidoman){
                     if($('select[name=csroption]').val() ==='upload'){
                                $('div[data-input-csr]').show();
                                if(multidoman !== "on" && $('div[data-sinledomaininput]').length >0){
                                    $('div[data-sinledomaininput]').hide();
                                }
                                }else{
                                    $('div[data-input-csr]').hide();
                                    if(multidoman !== "on" && $('div[data-sinledomaininput]').length >0){
                                        $('div[data-sinledomaininput]').show();
                                    }
                                }
                            }

                </script>
            </div>
        </form>
            <div class="form-actions">
                <button class="btn btn-primary"  onclick="tryAddCertificateInformation(this)" data-serviceid="{$serviceid}" data-loading-text="Processing...">{$MODLANG.trustoceanssl.enroll.setupone.nextsetup}</button>
            </div>
    </div>
</div>


<!-- 模态框（Modal） -->
<div class="modal fade" id="myCsrModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">创建CSR-证书申请信息</h4>
            </div>
            <div class="modal-body">
                <form class="form text-left" id="pkcs10_handling"  onsubmit="return false;">
                    <fieldset>
                        <p><label for="csrgen_x509_cn">域名:</label>
                            <input type="text" name="domainName" class="form-control" id="csrgen_x509_cn" title="单域名证书直接输入域名，通配符证书请输入域名如: *.example.com" placeholder="如: example.com" size="50" required=""></p>

                        <p style="display: none;"><label for="csrgen_x509_email">电子邮箱:</label>
                            <input type="email" class="form-control" id="csrgen_x509_email" title="请输入您的邮箱地址" placeholder="如: yourname@example.com" size="50" required=""></p>

                        <p style="display: none;"><label for="csrgen_x509_oid_mail">Data location for email address in
                                CSR:</label><br>
                            <select id="csrgen_x509_oid_mail">
                                <option value="2.5.29.17" title="Example CSR subject component: subjectAltName=email:jane.user@example.com">
                                    SubjectAltName with "email:"-Prefix
                                </option>

                                <option value="1.2.840.113549.1.9.1" title="Example CSR subject component: emailAddress=jane.user@example.com">
                                    emailAddress in DN (deprecated)
                                </option>
                            </select></p>

                        <p><label for="csrgen_x509_o">组织/企业名称:</label>
                            <input type="text" class="form-control" id="csrgen_x509_o" value="" title="请您输入您工作的企业名称, EV和OV证书申请必须输入和营业执照一致的公司名称" placeholder="如: 西安某某信息科技有限公司" size="50" required=""></p>

                        <p><label for="csrgen_x509_ou">部门名称:</label>
                            <input type="text" class="form-control" id="csrgen_x509_ou" title="请输入您工作的部门名称" placeholder="如: IT 部门" size="50" required=""></p>

                        <p><label for="csrgen_x509_c">城市:</label>
                            <input type="text" class="form-control" id="csrgen_x509_l" title="请您输入您企业或组织的办公室所在城市" placeholder="如: 西安" size="50" required=""></p>

                        <p><label for="csrgen_x509_c">地区:</label>
                            <select class="form-control" id="csrgen_x509_c" title="请您输入2位字符的国家代码, 中国: CN, 美国: US">
                                <option value="AF" data-tokens="AF Afghanistan" s2value="Afghanistan">Afghanistan</option><option value="AX" data-tokens="AX Åland Islands" s2value="Åland Islands">Åland Islands</option><option value="AL" data-tokens="AL Albania" s2value="Albania">Albania</option><option value="DZ" data-tokens="DZ Algeria" s2value="Algeria">Algeria</option><option value="AS" data-tokens="AS American Samoa" s2value="American Samoa">American Samoa</option><option value="AD" data-tokens="AD Andorra" s2value="Andorra">Andorra</option><option value="AO" data-tokens="AO Angola" s2value="Angola">Angola</option><option value="AI" data-tokens="AI Anguilla" s2value="Anguilla">Anguilla</option><option value="AQ" data-tokens="AQ Antarctica" s2value="Antarctica">Antarctica</option><option value="AG" data-tokens="AG Antigua and Barbuda" s2value="Antigua and Barbuda">Antigua and Barbuda</option><option value="AR" data-tokens="AR Argentina" s2value="Argentina">Argentina</option><option value="AM" data-tokens="AM Armenia" s2value="Armenia">Armenia</option><option value="AW" data-tokens="AW Aruba" s2value="Aruba">Aruba</option><option value="AU" data-tokens="AU Australia" s2value="Australia">Australia</option><option value="AT" data-tokens="AT Austria" s2value="Austria">Austria</option><option value="AZ" data-tokens="AZ Azerbaijan" s2value="Azerbaijan">Azerbaijan</option><option value="BS" data-tokens="BS Bahamas" s2value="Bahamas">Bahamas</option><option value="BH" data-tokens="BH Bahrain" s2value="Bahrain">Bahrain</option><option value="BD" data-tokens="BD Bangladesh" s2value="Bangladesh">Bangladesh</option><option value="BB" data-tokens="BB Barbados" s2value="Barbados">Barbados</option><option value="BY" data-tokens="BY Belarus" s2value="Belarus">Belarus</option><option value="BE" data-tokens="BE Belgium" s2value="Belgium">Belgium</option><option value="BZ" data-tokens="BZ Belize" s2value="Belize">Belize</option><option value="BJ" data-tokens="BJ Benin" s2value="Benin">Benin</option><option value="BM" data-tokens="BM Bermuda" s2value="Bermuda">Bermuda</option><option value="BT" data-tokens="BT Bhutan" s2value="Bhutan">Bhutan</option><option value="BO" data-tokens="BO Bolivia" s2value="Bolivia">Bolivia</option><option value="BA" data-tokens="BA Bosnia and Herzegovina" s2value="Bosnia and Herzegovina">Bosnia and Herzegovina</option><option value="BW" data-tokens="BW Botswana" s2value="Botswana">Botswana</option><option value="BV" data-tokens="BV Bouvet Island" s2value="Bouvet Island">Bouvet Island</option><option value="BR" data-tokens="BR Brazil" s2value="Brazil">Brazil</option><option value="IO" data-tokens="IO British Indian Ocean Territory" s2value="British Indian Ocean Territory">British Indian Ocean Territory</option><option value="BN" data-tokens="BN Brunei Darussalam" s2value="Brunei Darussalam">Brunei Darussalam</option><option value="BG" data-tokens="BG Bulgaria" s2value="Bulgaria">Bulgaria</option><option value="BF" data-tokens="BF Burkina Faso" s2value="Burkina Faso">Burkina Faso</option><option value="BI" data-tokens="BI Burundi" s2value="Burundi">Burundi</option><option value="KH" data-tokens="KH Cambodia" s2value="Cambodia">Cambodia</option><option value="CM" data-tokens="CM Cameroon" s2value="Cameroon">Cameroon</option><option value="CA" data-tokens="CA Canada" s2value="Canada">Canada</option><option value="CV" data-tokens="CV Cape Verde" s2value="Cape Verde">Cape Verde</option><option value="KY" data-tokens="KY Cayman Islands" s2value="Cayman Islands">Cayman Islands</option><option value="CF" data-tokens="CF Central African Republic" s2value="Central African Republic">Central African Republic</option><option value="TD" data-tokens="TD Chad" s2value="Chad">Chad</option><option value="CL" data-tokens="CL Chile" s2value="Chile">Chile</option><option value="CN" data-tokens="CN China" s2value="China" selected>China</option><option value="CX" data-tokens="CX Christmas Island" s2value="Christmas Island">Christmas Island</option><option value="CC" data-tokens="CC Cocos (Keeling) Islands" s2value="Cocos (Keeling) Islands">Cocos (Keeling) Islands</option><option value="CO" data-tokens="CO Colombia" s2value="Colombia">Colombia</option><option value="KM" data-tokens="KM Comoros" s2value="Comoros">Comoros</option><option value="CG" data-tokens="CG Congo" s2value="Congo">Congo</option><option value="CD" data-tokens="CD Congo, The Democratic Republic of the" s2value="Congo, The Democratic Republic of the">Congo, The Democratic Republic of the</option><option value="CK" data-tokens="CK Cook Islands" s2value="Cook Islands">Cook Islands</option><option value="CR" data-tokens="CR Costa Rica" s2value="Costa Rica">Costa Rica</option><option value="CI" data-tokens="CI Cote D&quot;Ivoire" s2value="Cote D&quot;Ivoire">Cote D"Ivoire</option><option value="HR" data-tokens="HR Croatia" s2value="Croatia">Croatia</option><option value="CU" data-tokens="CU Cuba" s2value="Cuba">Cuba</option><option value="CY" data-tokens="CY Cyprus" s2value="Cyprus">Cyprus</option><option value="CZ" data-tokens="CZ Czech Republic" s2value="Czech Republic">Czech Republic</option><option value="DK" data-tokens="DK Denmark" s2value="Denmark">Denmark</option><option value="DJ" data-tokens="DJ Djibouti" s2value="Djibouti">Djibouti</option><option value="DM" data-tokens="DM Dominica" s2value="Dominica">Dominica</option><option value="DO" data-tokens="DO Dominican Republic" s2value="Dominican Republic">Dominican Republic</option><option value="EC" data-tokens="EC Ecuador" s2value="Ecuador">Ecuador</option><option value="EG" data-tokens="EG Egypt" s2value="Egypt">Egypt</option><option value="SV" data-tokens="SV El Salvador" s2value="El Salvador">El Salvador</option><option value="GQ" data-tokens="GQ Equatorial Guinea" s2value="Equatorial Guinea">Equatorial Guinea</option><option value="ER" data-tokens="ER Eritrea" s2value="Eritrea">Eritrea</option><option value="EE" data-tokens="EE Estonia" s2value="Estonia">Estonia</option><option value="ET" data-tokens="ET Ethiopia" s2value="Ethiopia">Ethiopia</option><option value="FK" data-tokens="FK Falkland Islands (Malvinas)" s2value="Falkland Islands (Malvinas)">Falkland Islands (Malvinas)</option><option value="FO" data-tokens="FO Faroe Islands" s2value="Faroe Islands">Faroe Islands</option><option value="FJ" data-tokens="FJ Fiji" s2value="Fiji">Fiji</option><option value="FI" data-tokens="FI Finland" s2value="Finland">Finland</option><option value="FR" data-tokens="FR France" s2value="France">France</option><option value="GF" data-tokens="GF French Guiana" s2value="French Guiana">French Guiana</option><option value="PF" data-tokens="PF French Polynesia" s2value="French Polynesia">French Polynesia</option><option value="TF" data-tokens="TF French Southern Territories" s2value="French Southern Territories">French Southern Territories</option><option value="GA" data-tokens="GA Gabon" s2value="Gabon">Gabon</option><option value="GM" data-tokens="GM Gambia" s2value="Gambia">Gambia</option><option value="GE" data-tokens="GE Georgia" s2value="Georgia">Georgia</option><option value="DE" data-tokens="DE Germany" s2value="Germany">Germany</option><option value="GH" data-tokens="GH Ghana" s2value="Ghana">Ghana</option><option value="GI" data-tokens="GI Gibraltar" s2value="Gibraltar">Gibraltar</option><option value="GR" data-tokens="GR Greece" s2value="Greece">Greece</option><option value="GL" data-tokens="GL Greenland" s2value="Greenland">Greenland</option><option value="GD" data-tokens="GD Grenada" s2value="Grenada">Grenada</option><option value="GP" data-tokens="GP Guadeloupe" s2value="Guadeloupe">Guadeloupe</option><option value="GU" data-tokens="GU Guam" s2value="Guam">Guam</option><option value="GT" data-tokens="GT Guatemala" s2value="Guatemala">Guatemala</option><option value="GG" data-tokens="GG Guernsey" s2value="Guernsey">Guernsey</option><option value="GN" data-tokens="GN Guinea" s2value="Guinea">Guinea</option><option value="GW" data-tokens="GW Guinea-Bissau" s2value="Guinea-Bissau">Guinea-Bissau</option><option value="GY" data-tokens="GY Guyana" s2value="Guyana">Guyana</option><option value="HT" data-tokens="HT Haiti" s2value="Haiti">Haiti</option><option value="HM" data-tokens="HM Heard Island and Mcdonald Islands" s2value="Heard Island and Mcdonald Islands">Heard Island and Mcdonald Islands</option><option value="VA" data-tokens="VA Holy See (Vatican City State)" s2value="Holy See (Vatican City State)">Holy See (Vatican City State)</option><option value="HN" data-tokens="HN Honduras" s2value="Honduras">Honduras</option><option value="HK" data-tokens="HK Hong Kong" s2value="Hong Kong">Hong Kong</option><option value="HU" data-tokens="HU Hungary" s2value="Hungary">Hungary</option><option value="IS" data-tokens="IS Iceland" s2value="Iceland">Iceland</option><option value="IN" data-tokens="IN India" s2value="India">India</option><option value="ID" data-tokens="ID Indonesia" s2value="Indonesia">Indonesia</option><option value="IR" data-tokens="IR Iran, Islamic Republic Of" s2value="Iran, Islamic Republic Of">Iran, Islamic Republic Of</option><option value="IQ" data-tokens="IQ Iraq" s2value="Iraq">Iraq</option><option value="IE" data-tokens="IE Ireland" s2value="Ireland">Ireland</option><option value="IM" data-tokens="IM Isle of Man" s2value="Isle of Man">Isle of Man</option><option value="IL" data-tokens="IL Israel" s2value="Israel">Israel</option><option value="IT" data-tokens="IT Italy" s2value="Italy">Italy</option><option value="JM" data-tokens="JM Jamaica" s2value="Jamaica">Jamaica</option><option value="JP" data-tokens="JP Japan" s2value="Japan">Japan</option><option value="JE" data-tokens="JE Jersey" s2value="Jersey">Jersey</option><option value="JO" data-tokens="JO Jordan" s2value="Jordan">Jordan</option><option value="KZ" data-tokens="KZ Kazakhstan" s2value="Kazakhstan">Kazakhstan</option><option value="KE" data-tokens="KE Kenya" s2value="Kenya">Kenya</option><option value="KI" data-tokens="KI Kiribati" s2value="Kiribati">Kiribati</option><option value="KP" data-tokens="KP Korea, Democratic People&quot;S Republic of" s2value="Korea, Democratic People&quot;S Republic of">Korea, Democratic People"S Republic of</option><option value="KR" data-tokens="KR Korea, Republic of" s2value="Korea, Republic of">Korea, Republic of</option><option value="KW" data-tokens="KW Kuwait" s2value="Kuwait">Kuwait</option><option value="KG" data-tokens="KG Kyrgyzstan" s2value="Kyrgyzstan">Kyrgyzstan</option><option value="LA" data-tokens="LA Lao People&quot;S Democratic Republic" s2value="Lao People&quot;S Democratic Republic">Lao People"S Democratic Republic</option><option value="LV" data-tokens="LV Latvia" s2value="Latvia">Latvia</option><option value="LB" data-tokens="LB Lebanon" s2value="Lebanon">Lebanon</option><option value="LS" data-tokens="LS Lesotho" s2value="Lesotho">Lesotho</option><option value="LR" data-tokens="LR Liberia" s2value="Liberia">Liberia</option><option value="LY" data-tokens="LY Libyan Arab Jamahiriya" s2value="Libyan Arab Jamahiriya">Libyan Arab Jamahiriya</option><option value="LI" data-tokens="LI Liechtenstein" s2value="Liechtenstein">Liechtenstein</option><option value="LT" data-tokens="LT Lithuania" s2value="Lithuania">Lithuania</option><option value="LU" data-tokens="LU Luxembourg" s2value="Luxembourg">Luxembourg</option><option value="MO" data-tokens="MO Macao" s2value="Macao">Macao</option><option value="MK" data-tokens="MK Macedonia, The Former Yugoslav Republic of" s2value="Macedonia, The Former Yugoslav Republic of">Macedonia, The Former Yugoslav Republic of</option><option value="MG" data-tokens="MG Madagascar" s2value="Madagascar">Madagascar</option><option value="MW" data-tokens="MW Malawi" s2value="Malawi">Malawi</option><option value="MY" data-tokens="MY Malaysia" s2value="Malaysia">Malaysia</option><option value="MV" data-tokens="MV Maldives" s2value="Maldives">Maldives</option><option value="ML" data-tokens="ML Mali" s2value="Mali">Mali</option><option value="MT" data-tokens="MT Malta" s2value="Malta">Malta</option><option value="MH" data-tokens="MH Marshall Islands" s2value="Marshall Islands">Marshall Islands</option><option value="MQ" data-tokens="MQ Martinique" s2value="Martinique">Martinique</option><option value="MR" data-tokens="MR Mauritania" s2value="Mauritania">Mauritania</option><option value="MU" data-tokens="MU Mauritius" s2value="Mauritius">Mauritius</option><option value="YT" data-tokens="YT Mayotte" s2value="Mayotte">Mayotte</option><option value="MX" data-tokens="MX Mexico" s2value="Mexico">Mexico</option><option value="FM" data-tokens="FM Micronesia, Federated States of" s2value="Micronesia, Federated States of">Micronesia, Federated States of</option><option value="MD" data-tokens="MD Moldova, Republic of" s2value="Moldova, Republic of">Moldova, Republic of</option><option value="MC" data-tokens="MC Monaco" s2value="Monaco">Monaco</option><option value="MN" data-tokens="MN Mongolia" s2value="Mongolia">Mongolia</option><option value="MS" data-tokens="MS Montserrat" s2value="Montserrat">Montserrat</option><option value="MA" data-tokens="MA Morocco" s2value="Morocco">Morocco</option><option value="MZ" data-tokens="MZ Mozambique" s2value="Mozambique">Mozambique</option><option value="MM" data-tokens="MM Myanmar" s2value="Myanmar">Myanmar</option><option value="NA" data-tokens="NA Namibia" s2value="Namibia">Namibia</option><option value="NR" data-tokens="NR Nauru" s2value="Nauru">Nauru</option><option value="NP" data-tokens="NP Nepal" s2value="Nepal">Nepal</option><option value="NL" data-tokens="NL Netherlands" s2value="Netherlands">Netherlands</option><option value="AN" data-tokens="AN Netherlands Antilles" s2value="Netherlands Antilles">Netherlands Antilles</option><option value="NC" data-tokens="NC New Caledonia" s2value="New Caledonia">New Caledonia</option><option value="NZ" data-tokens="NZ New Zealand" s2value="New Zealand">New Zealand</option><option value="NI" data-tokens="NI Nicaragua" s2value="Nicaragua">Nicaragua</option><option value="NE" data-tokens="NE Niger" s2value="Niger">Niger</option><option value="NG" data-tokens="NG Nigeria" s2value="Nigeria">Nigeria</option><option value="NU" data-tokens="NU Niue" s2value="Niue">Niue</option><option value="NF" data-tokens="NF Norfolk Island" s2value="Norfolk Island">Norfolk Island</option><option value="MP" data-tokens="MP Northern Mariana Islands" s2value="Northern Mariana Islands">Northern Mariana Islands</option><option value="NO" data-tokens="NO Norway" s2value="Norway">Norway</option><option value="OM" data-tokens="OM Oman" s2value="Oman">Oman</option><option value="PK" data-tokens="PK Pakistan" s2value="Pakistan">Pakistan</option><option value="PW" data-tokens="PW Palau" s2value="Palau">Palau</option><option value="PS" data-tokens="PS Palestinian Territory, Occupied" s2value="Palestinian Territory, Occupied">Palestinian Territory, Occupied</option><option value="PA" data-tokens="PA Panama" s2value="Panama">Panama</option><option value="PG" data-tokens="PG Papua New Guinea" s2value="Papua New Guinea">Papua New Guinea</option><option value="PY" data-tokens="PY Paraguay" s2value="Paraguay">Paraguay</option><option value="PE" data-tokens="PE Peru" s2value="Peru">Peru</option><option value="PH" data-tokens="PH Philippines" s2value="Philippines">Philippines</option><option value="PN" data-tokens="PN Pitcairn" s2value="Pitcairn">Pitcairn</option><option value="PL" data-tokens="PL Poland" s2value="Poland">Poland</option><option value="PT" data-tokens="PT Portugal" s2value="Portugal">Portugal</option><option value="PR" data-tokens="PR Puerto Rico" s2value="Puerto Rico">Puerto Rico</option><option value="QA" data-tokens="QA Qatar" s2value="Qatar">Qatar</option><option value="RE" data-tokens="RE Reunion" s2value="Reunion">Reunion</option><option value="RO" data-tokens="RO Romania" s2value="Romania">Romania</option><option value="RU" data-tokens="RU Russian Federation" s2value="Russian Federation">Russian Federation</option><option value="RW" data-tokens="RW RWANDA" s2value="RWANDA">RWANDA</option><option value="SH" data-tokens="SH Saint Helena" s2value="Saint Helena">Saint Helena</option><option value="KN" data-tokens="KN Saint Kitts and Nevis" s2value="Saint Kitts and Nevis">Saint Kitts and Nevis</option><option value="LC" data-tokens="LC Saint Lucia" s2value="Saint Lucia">Saint Lucia</option><option value="PM" data-tokens="PM Saint Pierre and Miquelon" s2value="Saint Pierre and Miquelon">Saint Pierre and Miquelon</option><option value="VC" data-tokens="VC Saint Vincent and the Grenadines" s2value="Saint Vincent and the Grenadines">Saint Vincent and the Grenadines</option><option value="WS" data-tokens="WS Samoa" s2value="Samoa">Samoa</option><option value="SM" data-tokens="SM San Marino" s2value="San Marino">San Marino</option><option value="ST" data-tokens="ST Sao Tome and Principe" s2value="Sao Tome and Principe">Sao Tome and Principe</option><option value="SA" data-tokens="SA Saudi Arabia" s2value="Saudi Arabia">Saudi Arabia</option><option value="SN" data-tokens="SN Senegal" s2value="Senegal">Senegal</option><option value="RS" data-tokens="RS Serbia" s2value="Serbia">Serbia</option><option value="ME" data-tokens="ME Montenegro" s2value="Montenegro">Montenegro</option><option value="SC" data-tokens="SC Seychelles" s2value="Seychelles">Seychelles</option><option value="SL" data-tokens="SL Sierra Leone" s2value="Sierra Leone">Sierra Leone</option><option value="SG" data-tokens="SG Singapore" s2value="Singapore">Singapore</option><option value="SK" data-tokens="SK Slovakia" s2value="Slovakia">Slovakia</option><option value="SI" data-tokens="SI Slovenia" s2value="Slovenia">Slovenia</option><option value="SB" data-tokens="SB Solomon Islands" s2value="Solomon Islands">Solomon Islands</option><option value="SO" data-tokens="SO Somalia" s2value="Somalia">Somalia</option><option value="ZA" data-tokens="ZA South Africa" s2value="South Africa">South Africa</option><option value="GS" data-tokens="GS South Georgia and the South Sandwich Islands" s2value="South Georgia and the South Sandwich Islands">South Georgia and the South Sandwich Islands</option><option value="ES" data-tokens="ES Spain" s2value="Spain">Spain</option><option value="LK" data-tokens="LK Sri Lanka" s2value="Sri Lanka">Sri Lanka</option><option value="SD" data-tokens="SD Sudan" s2value="Sudan">Sudan</option><option value="SR" data-tokens="SR Suriname" s2value="Suriname">Suriname</option><option value="SJ" data-tokens="SJ Svalbard and Jan Mayen" s2value="Svalbard and Jan Mayen">Svalbard and Jan Mayen</option><option value="SZ" data-tokens="SZ Swaziland" s2value="Swaziland">Swaziland</option><option value="SE" data-tokens="SE Sweden" s2value="Sweden">Sweden</option><option value="CH" data-tokens="CH Switzerland" s2value="Switzerland">Switzerland</option><option value="SY" data-tokens="SY Syrian Arab Republic" s2value="Syrian Arab Republic">Syrian Arab Republic</option><option value="TW" data-tokens="TW Taiwan, Province of China" s2value="Taiwan, Province of China">Taiwan, Province of China</option><option value="TJ" data-tokens="TJ Tajikistan" s2value="Tajikistan">Tajikistan</option><option value="TZ" data-tokens="TZ Tanzania, United Republic of" s2value="Tanzania, United Republic of">Tanzania, United Republic of</option><option value="TH" data-tokens="TH Thailand" s2value="Thailand">Thailand</option><option value="TL" data-tokens="TL Timor-Leste" s2value="Timor-Leste">Timor-Leste</option><option value="TG" data-tokens="TG Togo" s2value="Togo">Togo</option><option value="TK" data-tokens="TK Tokelau" s2value="Tokelau">Tokelau</option><option value="TO" data-tokens="TO Tonga" s2value="Tonga">Tonga</option><option value="TT" data-tokens="TT Trinidad and Tobago" s2value="Trinidad and Tobago">Trinidad and Tobago</option><option value="TN" data-tokens="TN Tunisia" s2value="Tunisia">Tunisia</option><option value="TR" data-tokens="TR Turkey" s2value="Turkey">Turkey</option><option value="TM" data-tokens="TM Turkmenistan" s2value="Turkmenistan">Turkmenistan</option><option value="TC" data-tokens="TC Turks and Caicos Islands" s2value="Turks and Caicos Islands">Turks and Caicos Islands</option><option value="TV" data-tokens="TV Tuvalu" s2value="Tuvalu">Tuvalu</option><option value="UG" data-tokens="UG Uganda" s2value="Uganda">Uganda</option><option value="UA" data-tokens="UA Ukraine" s2value="Ukraine">Ukraine</option><option value="AE" data-tokens="AE United Arab Emirates" s2value="United Arab Emirates">United Arab Emirates</option><option value="GB" data-tokens="GB United Kingdom" s2value="United Kingdom">United Kingdom</option><option value="US" data-tokens="US United States" s2value="United States">United States</option><option value="UM" data-tokens="UM United States Minor Outlying Islands" s2value="United States Minor Outlying Islands">United States Minor Outlying Islands</option><option value="UY" data-tokens="UY Uruguay" s2value="Uruguay">Uruguay</option><option value="UZ" data-tokens="UZ Uzbekistan" s2value="Uzbekistan">Uzbekistan</option><option value="VU" data-tokens="VU Vanuatu" s2value="Vanuatu">Vanuatu</option><option value="VE" data-tokens="VE Venezuela" s2value="Venezuela">Venezuela</option><option value="VN" data-tokens="VN Viet Nam" s2value="Viet Nam">Viet Nam</option><option value="VG" data-tokens="VG Virgin Islands, British" s2value="Virgin Islands, British">Virgin Islands, British</option><option value="VI" data-tokens="VI Virgin Islands, U.S." s2value="Virgin Islands, U.S.">Virgin Islands, U.S.</option><option value="WF" data-tokens="WF Wallis and Futuna" s2value="Wallis and Futuna">Wallis and Futuna</option><option value="EH" data-tokens="EH Western Sahara" s2value="Western Sahara">Western Sahara</option><option value="YE" data-tokens="YE Yemen" s2value="Yemen">Yemen</option><option value="ZM" data-tokens="ZM Zambia" s2value="Zambia">Zambia</option><option value="ZW" data-tokens="ZW Zimbabwe" s2value="Zimbabwe">Zimbabwe</option>
                            </select>
                        </p>
                    </fieldset>

                    <p><button id="csrgen_btn" class="btn btn-primary" onclick="javascript:create_new_csr()">立即创建</button></p>
                </form>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>