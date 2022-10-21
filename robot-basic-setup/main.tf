module "frontend" {

    source       = "./ec2"
    COMPONENT    = each.key
    APP_VERSION  = 3.0.0
}