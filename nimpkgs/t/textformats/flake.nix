{
  description = ''
    Easy specification of text formats for structured data
  '';
  inputs.src-textformats.url = "https://github.com/ggonnella/textformats";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
