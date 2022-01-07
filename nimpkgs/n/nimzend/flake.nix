{
  description = ''
    Native Nim Zend API glue for easy PHP extension development.
  '';
  inputs.src-nimzend.url = "https://github.com/metatexx/nimzend";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
