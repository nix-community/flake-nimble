{
  description = ''
    Port of Milo Yip's fast dtoa() implementation
  '';
  inputs.src-dtoa.url = "https://github.com/LemonBoy/dtoa.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
