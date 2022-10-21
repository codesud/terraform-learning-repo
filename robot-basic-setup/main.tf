module "frontend" {

    source       = "./ec2"
    COMPONENT    = "frontend"
    APP_VERSION  = "3.0.0"
}