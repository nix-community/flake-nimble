{
  description = ''
    Smart file/folder creation
  '';
  inputs.src-shmk.url = "https://gitlab.com/thisNimAgo/mk";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
