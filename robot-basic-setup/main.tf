module "frontend" {
    source       = "./ec2"
    COMPONENT    = "frontend"
    APP_VERSION  = "3.0.0"
}

module "cart" {
    source       = "./ec2"
    COMPONENT    = "cart"
    APP_VERSION  = "3.0.0"
}