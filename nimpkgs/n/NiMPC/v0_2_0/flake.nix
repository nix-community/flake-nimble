{
  description = ''Secure multi-party computation'';
  inputs.src-NiMPC-v0_2_0.flake = false;
  inputs.src-NiMPC-v0_2_0.type = "github";
  inputs.src-NiMPC-v0_2_0.owner = "markspanbroek";
  inputs.src-NiMPC-v0_2_0.repo = "nimpc";
  inputs.src-NiMPC-v0_2_0.ref = "refs/tags/v0.2.0";
  
  
  inputs."sysrandom".type = "github";
  inputs."sysrandom".owner = "riinr";
  inputs."sysrandom".repo = "flake-nimble";
  inputs."sysrandom".ref = "flake-pinning";
  inputs."sysrandom".dir = "nimpkgs/s/sysrandom";

  
  inputs."simpleot".type = "github";
  inputs."simpleot".owner = "riinr";
  inputs."simpleot".repo = "flake-nimble";
  inputs."simpleot".ref = "flake-pinning";
  inputs."simpleot".dir = "nimpkgs/s/simpleot";

  outputs = { self, nixpkgs, src-NiMPC-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-NiMPC-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-NiMPC-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}