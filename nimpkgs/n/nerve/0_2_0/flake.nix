{
  description = ''A RPC framework for building web APIs'';
  inputs.src-nerve-0_2_0.flake = false;
  inputs.src-nerve-0_2_0.type = "github";
  inputs.src-nerve-0_2_0.owner = "nepeckman";
  inputs.src-nerve-0_2_0.repo = "nerve-rpc";
  inputs.src-nerve-0_2_0.ref = "refs/tags/0.2.0";
  
  outputs = { self, nixpkgs, src-nerve-0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nerve-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nerve-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}