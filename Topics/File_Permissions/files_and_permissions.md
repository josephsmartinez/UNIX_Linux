# Files, File contexts, permissions


chcon -t httpd_sys_content_t file-name
chcon -R -t httpd_sys_content_t 

Resource:

4.7. SELINUX CONTEXTS – LABELING FILES
https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html/selinux_users_and_administrators_guide/sect-security-enhanced_linux-working_with_selinux-selinux_contexts_labeling_files