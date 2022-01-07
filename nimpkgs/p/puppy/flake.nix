{
  description = ''
    Fetch url resources via HTTP and HTTPS.
  '';
  inputs.src-puppy.url = "https://github.com/treeform/puppy";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
