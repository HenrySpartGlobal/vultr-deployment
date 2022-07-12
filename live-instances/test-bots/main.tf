module "vultr-instances" {
  source = "../../modules/vultr-instance"

  plan = "vc2-1c-1gb"
  region = "lhr"
  os_id = 477
  label = "test-bot"
  tags = ["testing-testing-testing"]
  hostname = "test-bot"
  api_key = var.api_key
}

module "vultr-instances-2" {
  source = "../../modules/vultr-instance"

  plan = "vc2-1c-1gb"
  region = "lhr"
  os_id = 477
  label = "test-bot-2"
  tags = ["testing-2-change-tag"]
  hostname = "test-bot-2"
  api_key = var.api_key
}