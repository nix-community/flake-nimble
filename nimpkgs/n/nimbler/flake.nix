{
  description = ''
    A library to help you write rest APIs
  '';
  inputs.src-nimbler.url = "https://github.com/paul-nameless/nimbler";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
