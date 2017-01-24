use MIME::Base64;
s/(\(\*HIDE\*\))(.*?)(\(\*UHIDE\*\))/$1.decode_base64($2).$3/eigs
