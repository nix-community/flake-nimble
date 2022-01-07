{
  description = ''
    til-tool: Today I Learned tool
  '';
  inputs.src-til.url = "https://github.com/danielecook/til-tool";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
