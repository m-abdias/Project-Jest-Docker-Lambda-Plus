const AWS = require('aws-sdk')
const s3config = {
  s3ForcePathStyle: true
}

const S3 = new AWS.S3(s3config)

module.exports = {
  S3
}