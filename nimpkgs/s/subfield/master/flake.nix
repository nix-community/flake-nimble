{
  description = ''Override the dot operator to access nested subfields of a Nim object.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-subfield-master.flake = false;
  inputs.src-subfield-master.type = "github";
  inputs.src-subfield-master.owner = "jyapayne";
  inputs.src-subfield-master.repo = "subfield";
  inputs.src-subfield-master.ref = "refs/heads/master";
  inputs.src-subfield-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."einheit".type = "github";
  # inputs."einheit".owner = "riinr";
  # inputs."einheit".repo = "flake-nimble";
  # inputs."einheit".ref = "flake-pinning";
  # inputs."einheit".dir = "nimpkgs/e/einheit";
  # inputs."einheit".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."einheit".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-subfield-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-subfield-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-subfield-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}