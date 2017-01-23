use MIME::Base64;
print s/(\(\*HIDE\*\))(.*?)(\(\*UHIDE\*\))/'(*HIDE*)'.encode_base64($2).'(*UHIDE*)'/eigs
