{
  description = ''
    A Toy Shell Application
  '';
  inputs.src-nish.url = "https://github.com/owlinux1000/nish";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
