{
  description = ''
    A macro for generating [de]serializers for given objects
  '';
  inputs.src-nesm.url = "https://gitlab.com/xomachine/NESM.git";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
