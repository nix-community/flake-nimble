{
  description = ''
    wit.ai client
  '';
  inputs.src-witai.url = "https://github.com/xmonader/witai-nim";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
