const fs = require('fs');
const AWS = require('aws-sdk');
const ID = 'AKIAJ5OIQS2D43QAEFMQ';
const SECRET = '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';
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
         Key: 'testing.png', 
         ContentType: 'image/jpeg',
         Body: JSON.stringify(data, null, 2),
         ACL:'public-read'
     };
     s3.upload(params, function(s3Err, data) {
         if (s3Err) throw s3Err
         console.log(`File uploaded successfully at ${data.Location}`)
     });
  });
};

uploadFile();