{
  description = ''mmap-persistent SymSpell spell checking algorithm'';
  inputs.src-suggest-v1_0.flake = false;
  inputs.src-suggest-v1_0.type = "github";
  inputs.src-suggest-v1_0.owner = "c-blake";
  inputs.src-suggest-v1_0.repo = "suggest";
  inputs.src-suggest-v1_0.ref = "refs/tags/v1.0";
  
  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-suggest-v1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-suggest-v1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-suggest-v1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}