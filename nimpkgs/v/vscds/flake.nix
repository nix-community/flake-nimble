{
  description = ''
    <VS Code Data Swapper> Easily swap between multiple data folders.
  '';
  inputs.src-vscds.url = "https://github.com/doongjohn/vscds";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
