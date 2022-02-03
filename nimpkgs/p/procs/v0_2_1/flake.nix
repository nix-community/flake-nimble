{
  description = ''Unix process&system query&formatting library&multi-command CLI in Nim'';
  inputs.src-procs-v0_2_1.flake = false;
  inputs.src-procs-v0_2_1.type = "github";
  inputs.src-procs-v0_2_1.owner = "c-blake";
  inputs.src-procs-v0_2_1.repo = "procs";
  inputs.src-procs-v0_2_1.ref = "refs/tags/v0.2.1";
  
  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-procs-v0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-procs-v0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-procs-v0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}