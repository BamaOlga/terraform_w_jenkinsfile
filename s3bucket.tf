//create an encrypted s3 bucket to store objects
resource "aws_s3_bucket" "kina_bucket" {
  bucket = "kinaterrajens2024"

  tags = {
    Name    = "kinabuck"
  }
}
