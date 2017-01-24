use MIME::Base64;
s/(\(\*HIDE\*\))(.*?)(\(\*UHIDE\*\))/$1.encode_base64($2).$3/eigs
