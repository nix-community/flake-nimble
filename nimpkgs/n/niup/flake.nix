{
  description = ''
    IUP FFI bindings
  '';
  inputs.src-niup.url = "https://github.com/dariolah/niup";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
