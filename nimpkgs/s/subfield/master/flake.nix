{
  description = ''Override the dot operator to access nested subfields of a Nim object.'';
  inputs.src-subfield-master.flake = false;
  inputs.src-subfield-master.type = "github";
  inputs.src-subfield-master.owner = "jyapayne";
  inputs.src-subfield-master.repo = "subfield";
  inputs.src-subfield-master.ref = "refs/heads/master";
  
  
  inputs."einheit".type = "github";
  inputs."einheit".owner = "riinr";
  inputs."einheit".repo = "flake-nimble";
  inputs."einheit".ref = "flake-pinning";
  inputs."einheit".dir = "nimpkgs/e/einheit";

  outputs = { self, nixpkgs, src-subfield-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-subfield-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-subfield-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}