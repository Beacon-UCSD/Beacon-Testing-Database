const fs = require('fs');
const AWS = require('aws-sdk');
const ID = ;
const SECRET = ;

const BUCKET = 'ucsdsocial';
const s3 = new AWS.S3({
    accessKeyId: ID,
    secretAccessKey: SECRET
});


const filename = '/Users/apple/Desktop/CSE110/Beacon/testing/testing.png';

const uploadFile = () => {
  fs.readFile(filename, (err, data) => {
     if (err) throw err;
     const params = {
         Bucket: BUCKET, 
         Key: 'testing_again.png', 
         ContentType: 'image/jpeg',
         Body: data,
         ACL:'public-read'
     };
     s3.upload(params, function(s3Err, data) {
         if (s3Err) throw s3Err
         console.log(`File uploaded successfully at ${data.Location}`)
     });
  });
};

uploadFile();
