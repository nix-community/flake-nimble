{
  description = ''
    Client library for the Postmates API
  '';
  inputs.src-nimates.url = "https://github.com/jamesalbert/nimates";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
