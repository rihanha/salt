iptables:              #id declaration
  pkg:                 
    - installed        #install iptables if not present
  service.running:
    - enable: True    #enable iptables at start up
    - watch:
      - pkg: iptables  #restart iptables if stops
