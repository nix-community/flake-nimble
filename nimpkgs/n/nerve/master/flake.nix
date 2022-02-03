{
  description = ''A RPC framework for building web APIs'';
  inputs.src-nerve-master.flake = false;
  inputs.src-nerve-master.type = "github";
  inputs.src-nerve-master.owner = "nepeckman";
  inputs.src-nerve-master.repo = "nerve-rpc";
  inputs.src-nerve-master.ref = "refs/heads/master";
  
  
  inputs."ws".url = "path:../../../w/ws";
  inputs."ws".type = "github";
  inputs."ws".owner = "riinr";
  inputs."ws".repo = "flake-nimble";
  inputs."ws".ref = "flake-pinning";
  inputs."ws".dir = "nimpkgs/w/ws";

  outputs = { self, nixpkgs, src-nerve-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nerve-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nerve-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}