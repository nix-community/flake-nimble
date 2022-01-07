{
  description = ''
    dialect of Markdown in pure Nim with focus on HTML output
  '';
  inputs.src-marggers.url = "https://github.com/hlaaftana/marggers";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
