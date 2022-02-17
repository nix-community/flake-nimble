{
  description = ''Nim wrapper for libtess2'';
  inputs.src-nimtess2-master.flake = false;
  inputs.src-nimtess2-master.type = "github";
  inputs.src-nimtess2-master.owner = "genotrance";
  inputs.src-nimtess2-master.repo = "nimtess2";
  inputs.src-nimtess2-master.ref = "refs/heads/master";
  
  
  inputs."nimgen".type = "github";
  inputs."nimgen".owner = "riinr";
  inputs."nimgen".repo = "flake-nimble";
  inputs."nimgen".ref = "flake-pinning";
  inputs."nimgen".dir = "nimpkgs/n/nimgen";

  outputs = { self, nixpkgs, src-nimtess2-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimtess2-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimtess2-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}