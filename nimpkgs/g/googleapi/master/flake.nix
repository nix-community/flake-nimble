{
  description = ''Google API for nim'';
  inputs.src-googleapi-master.flake = false;
  inputs.src-googleapi-master.type = "github";
  inputs.src-googleapi-master.owner = "treeform";
  inputs.src-googleapi-master.repo = "googleapi";
  inputs.src-googleapi-master.ref = "refs/heads/master";
  
  
  inputs."jwt".url = "path:../../../j/jwt";
  inputs."jwt".type = "github";
  inputs."jwt".owner = "riinr";
  inputs."jwt".repo = "flake-nimble";
  inputs."jwt".ref = "flake-pinning";
  inputs."jwt".dir = "nimpkgs/j/jwt";

  outputs = { self, nixpkgs, src-googleapi-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-googleapi-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-googleapi-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}