resource "aws_key_pair" "kubernetes-nurjancluster-com-f8e5ea41168454e985d9dad9898daf75" {
  key_name   = "kubernetes.nurjancluster.com-f8:e5:ea:41:16:84:54:e9:85:d9:da:d9:89:8d:af:75"
  public_key = "${file("${path.module}/data/aws_key_pair_kubernetes.nurjancluster.com-f8e5ea41168454e985d9dad9898daf75_public_key")}"
}