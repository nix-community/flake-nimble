{
  description = ''a state-of-the-art multithreading runtime'';
  inputs.src-weave-master.flake = false;
  inputs.src-weave-master.type = "github";
  inputs.src-weave-master.owner = "mratsim";
  inputs.src-weave-master.repo = "weave";
  inputs.src-weave-master.ref = "refs/heads/master";
  
  
  inputs."synthesis".type = "github";
  inputs."synthesis".owner = "riinr";
  inputs."synthesis".repo = "flake-nimble";
  inputs."synthesis".ref = "flake-pinning";
  inputs."synthesis".dir = "nimpkgs/s/synthesis";

  outputs = { self, nixpkgs, src-weave-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-weave-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-weave-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}