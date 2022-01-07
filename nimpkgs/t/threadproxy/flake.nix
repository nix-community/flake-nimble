{
  description = ''
    Simplify Nim Inter-Thread Communication
  '';
  inputs.src-threadproxy.url = "https://github.com/jackhftang/threadproxy.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
