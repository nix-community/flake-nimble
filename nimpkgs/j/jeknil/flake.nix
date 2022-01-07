{
  description = ''
    A blog post generator for people with priorities.
  '';
  inputs.src-jeknil.url = "https://github.com/tonogram/jeknil";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
