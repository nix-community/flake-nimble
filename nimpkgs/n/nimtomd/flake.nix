{
  description = ''
    Convert a Nim file or string to Markdown
  '';
  inputs.src-nimtomd.url = "https://github.com/ThomasTJdev/nimtomd";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
