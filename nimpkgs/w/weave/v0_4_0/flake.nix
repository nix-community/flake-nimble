{
  description = ''a state-of-the-art multithreading runtime'';
  inputs.src-weave-v0_4_0.flake = false;
  inputs.src-weave-v0_4_0.type = "github";
  inputs.src-weave-v0_4_0.owner = "mratsim";
  inputs.src-weave-v0_4_0.repo = "weave";
  inputs.src-weave-v0_4_0.ref = "refs/tags/v0.4.0";
  
  
  inputs."synthesis".url = "path:../../../s/synthesis";
  inputs."synthesis".type = "github";
  inputs."synthesis".owner = "riinr";
  inputs."synthesis".repo = "flake-nimble";
  inputs."synthesis".ref = "flake-pinning";
  inputs."synthesis".dir = "nimpkgs/s/synthesis";

  outputs = { self, nixpkgs, src-weave-v0_4_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-weave-v0_4_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-weave-v0_4_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}