{ pkgs, ... }:

{
  system.activationScripts.setup-burp = {
    text = ''
      if ! [ -f /etc/ssl/certs/BurpSuiteCA.der ]; then
        ${pkgs.bash}/bin/bash -c "${pkgs.coreutils}/bin/timeout 45 ${pkgs.burpsuite}/bin/burpsuite < <(${pkgs.coreutils}/bin/echo y) &"
        ${pkgs.coreutils}/bin/sleep 20
        ${pkgs.curl}/bin/curl http://localhost:8080/cert -o /etc/ssl/certs/BurpSuiteCA.der
      fi
    '';
  };
}
