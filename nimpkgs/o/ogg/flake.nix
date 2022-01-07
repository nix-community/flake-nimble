{
  description = ''
    Binding to libogg
  '';
  inputs.src-ogg.url = "https://bitbucket.org/BitPuffin/nim-ogg";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
