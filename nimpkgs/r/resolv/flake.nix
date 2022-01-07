{
  description = ''
    DNS resolution nimble making use of the native glibc resolv library
  '';
  inputs.src-resolv.url = "https://github.com/mildred/resolv.nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
