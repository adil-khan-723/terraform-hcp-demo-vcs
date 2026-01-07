resource aws_security_group sg {
    name = demo-sg
    description = sg
}

resource aws_vpc_security_group_ingress_rule in {
    security_group_id = aws_security_group.sg.id
    ip_protocol = tcp
    from_port = 22
    to_port = 22
    cidr_ipv4 = 0.0.0.0/0
}

resource aws_vpc_security_group_egress_rule out {
    security_group_id = aws_security_group.sg.id
    ip_protocol = -1
}
