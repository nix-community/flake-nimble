{
  description = ''
    A nim flavor of pytorch
  '';
  inputs.src-torch.url = "https://github.com/fragcolor-xyz/nimtorch";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
