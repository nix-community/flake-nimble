{
  description = ''
    CUDA bindings
  '';
  inputs.src-nimcuda.url = "https://github.com/andreaferretti/nimcuda";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
