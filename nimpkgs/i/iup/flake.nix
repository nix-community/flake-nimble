{
  description = ''
    Bindings for the IUP widget toolkit
  '';
  inputs.src-iup.url = "https://github.com/nim-lang/iup";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
