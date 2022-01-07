{
  description = ''
    APIs available in the latests version of Nim, backported to older stable releases
  '';
  inputs.src-std_shims.url = "https://github.com/status-im/nim-std-shims";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
