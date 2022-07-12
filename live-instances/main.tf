module "vultr-instances" {
  source = "../vultr-instance"
  plan = "vc2-1c-1gb"
  region = "lhr"
  os_id = 477
  label = "test-bot"
  tags = ["testing"]
  hostname = "test-bot"
  api_key = var.api_key
}