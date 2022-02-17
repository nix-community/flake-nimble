{
  description = ''Google API for nim'';
  inputs.src-googleapi-0_1_4.flake = false;
  inputs.src-googleapi-0_1_4.type = "github";
  inputs.src-googleapi-0_1_4.owner = "treeform";
  inputs.src-googleapi-0_1_4.repo = "googleapi";
  inputs.src-googleapi-0_1_4.ref = "refs/tags/0.1.4";
  
  
  inputs."jwt".type = "github";
  inputs."jwt".owner = "riinr";
  inputs."jwt".repo = "flake-nimble";
  inputs."jwt".ref = "flake-pinning";
  inputs."jwt".dir = "nimpkgs/j/jwt";

  outputs = { self, nixpkgs, src-googleapi-0_1_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-googleapi-0_1_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-googleapi-0_1_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}