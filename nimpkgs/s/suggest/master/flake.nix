{
  description = ''mmap-persistent SymSpell spell checking algorithm'';
  inputs.src-suggest-master.flake = false;
  inputs.src-suggest-master.type = "github";
  inputs.src-suggest-master.owner = "c-blake";
  inputs.src-suggest-master.repo = "suggest";
  inputs.src-suggest-master.ref = "refs/heads/master";
  
  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-suggest-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-suggest-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-suggest-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}