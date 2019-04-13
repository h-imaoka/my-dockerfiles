unbound
===

# for aws
Edit unbound.conf `forward-zone`. Set name: "." addr: your_vpc's resolver. If you forget this ops, cannot resolve all records on your private hostedzone.
