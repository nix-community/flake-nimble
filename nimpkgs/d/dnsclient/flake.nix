{
  description = ''
    Simple DNS Client & Library
  '';
  inputs.src-dnsclient.url = "https://github.com/ba0f3/dnsclient.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
