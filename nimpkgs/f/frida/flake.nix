{
  description = ''
    Frida wrapper
  '';
  inputs.src-frida.url = "https://github.com/ba0f3/frida.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
