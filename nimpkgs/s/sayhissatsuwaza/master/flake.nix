{
  description = ''Say hissatsuwaza (special attack) on your terminal.'';
  inputs.src-sayhissatsuwaza-master.flake = false;
  inputs.src-sayhissatsuwaza-master.type = "github";
  inputs.src-sayhissatsuwaza-master.owner = "jiro4989";
  inputs.src-sayhissatsuwaza-master.repo = "sayhissatsuwaza";
  inputs.src-sayhissatsuwaza-master.ref = "refs/heads/master";
  
  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-sayhissatsuwaza-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sayhissatsuwaza-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sayhissatsuwaza-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}