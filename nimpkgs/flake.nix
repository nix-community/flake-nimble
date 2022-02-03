{
  inputs.dsf.url = "github:cruel-intentions/devshell-files";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkMainOutput { inherit self nixpkgs inputs; };
}
