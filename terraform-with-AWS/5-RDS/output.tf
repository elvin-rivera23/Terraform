output "instance" {
  value = aws_instance.example.public_ip
}

output "rds" {
  value = aws_db_instance.mariadb.endpoint
}

# to connect: ssh -i mykey ubuntu@public_ip
# to connect MariaDB: mysql -u root -h mariadb.endpoint -p'db_password'
