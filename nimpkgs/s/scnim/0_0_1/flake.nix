{
  description = ''Develop SuperCollider UGens in Nim'';
  inputs.src-scnim-0_0_1.flake = false;
  inputs.src-scnim-0_0_1.type = "github";
  inputs.src-scnim-0_0_1.owner = "capocasa";
  inputs.src-scnim-0_0_1.repo = "scnim";
  inputs.src-scnim-0_0_1.ref = "refs/tags/0.0.1";
  
  outputs = { self, nixpkgs, src-scnim-0_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-scnim-0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-scnim-0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}