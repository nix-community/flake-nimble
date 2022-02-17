{
  description = ''A library of components and systems for use with the Polymorph ECS'';
  inputs.src-Polymers-v0_3_0.flake = false;
  inputs.src-Polymers-v0_3_0.type = "github";
  inputs.src-Polymers-v0_3_0.owner = "rlipsc";
  inputs.src-Polymers-v0_3_0.repo = "polymers";
  inputs.src-Polymers-v0_3_0.ref = "refs/tags/v0.3.0";
  
  
  inputs."https://github.com/rlipsc/polymorph".type = "github";
  inputs."https://github.com/rlipsc/polymorph".owner = "riinr";
  inputs."https://github.com/rlipsc/polymorph".repo = "flake-nimble";
  inputs."https://github.com/rlipsc/polymorph".ref = "flake-pinning";
  inputs."https://github.com/rlipsc/polymorph".dir = "nimpkgs/h/https://github.com/rlipsc/polymorph";

  outputs = { self, nixpkgs, src-polymers-v0_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-polymers-v0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-polymers-v0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}