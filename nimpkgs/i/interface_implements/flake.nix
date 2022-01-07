{
  description = ''
    implements macro creates toInterface proc.
  '';
  inputs.src-interface_implements.url = "https://github.com/itsumura-h/nim-interface-implements";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
