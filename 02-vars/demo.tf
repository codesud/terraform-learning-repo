variable "sample" {
  default = "Hello world"
}

output "sample-op" {
    value = var.sample
}

# Both the output syntaxes are valid
output "sample-op1" {
    value = "value is ${var.sample}"
}

# A variable can be accessed by either var.varName or ${var.varName}

variable "number" {
    default = 100 
}

output "number" {
    value = var.number
}

# List variable
variable "example-list" {
    default = [
        "DevOps", 
        100,
        false,
        "Shelby"
    ]
}

# Printing a list variable 
output "ex-list" {
    value = "Welcome to ${var.example-list[0]} Training, Trainer name is ${var.example-list[3]}, Training duration is ${var.example-list[1]} hours"
}

# Declaring a map variable
variable "example-map" {
    default = {
        Class    = "DevOps",
        Timings  = "0730AM",
        Duration = 100
    }
}

output "ex-map" {
    value = "Welcome to ${var.example-map["Class"]} Training and the training timings are ${var.example-map["Timings"]} and the duration of the over all training is ${var.example-map["Duration"]} "
}


###############
variable "country" {}

variable "city" {}

output "country-name" {
    value = "Name of the country where trainer resides is ${var.country}"
}

output "city-name" {
    value = "Name of the city where trainer resides is ${var.city}"
}

output "trainer-name" {
    value = "Name of the trainer is ${var.trainer}"
}