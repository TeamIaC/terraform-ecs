# ssh-keygen -t rsa -f ttttt -N ''
# ssh -i ./tttt ec2-user@13.115.229.19
resource "aws_key_pair" "key_pair" {
    key_name   = "ttttt"
    public_key = file("./ttttt.pub")
}

# Elastic IPを InternetGatewayに紐付ける 
resource "aws_eip" "eip" {
    vpc = true
    depends_on                = [aws_internet_gateway.igw]
}