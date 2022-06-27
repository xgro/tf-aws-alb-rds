resource "aws_alb" "test" {
  name                             = "test-alb"
  internal                         = false
  load_balancer_type               = "application"
  security_groups                  = [aws_security_group.publicSG01.id]
  subnets                          = [aws_subnet.publicSubnet1.id, aws_subnet.publicSubnet2.id]
  enable_cross_zone_load_balancing = true
}

resource "aws_alb_target_group" "test" {
  name     = "test-alb-tg"
  port     = 8080
  protocol = "HTTP"
  vpc_id   = aws_vpc.vpc.id
}

# resource "aws_alb_target_group_attachment" "Instance01" {
#   target_group_arn = aws_alb_target_group.test.arn
#   target_id        = aws_instance.testEC201.id
#   port             = 8080
# }

# resource "aws_alb_target_group_attachment" "Instance02" {
#   target_group_arn = aws_alb_target_group.test.arn
#   target_id        = aws_instance.testEC202.id
#   port             = 8080
# }

resource "aws_alb_listener" "test" {
  load_balancer_arn = aws_alb.test.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_alb_target_group.test.arn
  }
}




