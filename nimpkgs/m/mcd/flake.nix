{
  description = ''
    Application to detect which commit generates malicious code detection by antivirus software.
  '';
  inputs.src-mcd.url = "https://gitlab.com/malicious-commit-detector/mcd";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
