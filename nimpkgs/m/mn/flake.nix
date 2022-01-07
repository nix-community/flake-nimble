{
  description = ''
    A truly minimal concatenative programming language.
  '';
  inputs.src-mn.url = "https://github.com/h3rald/mn";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
