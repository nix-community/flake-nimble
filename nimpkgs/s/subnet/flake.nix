{
  description = ''
    subnet prints subnet mask in human readable.
  '';
  inputs.src-subnet.url = "https://github.com/jiro4989/subnet";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
