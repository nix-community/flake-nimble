{
  description = ''Convert Helix Version Control / Perforce (p4) -ztag output to JSON'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-p4ztag_to_json-v0_9_2.flake = false;
  inputs.src-p4ztag_to_json-v0_9_2.type = "github";
  inputs.src-p4ztag_to_json-v0_9_2.owner = "kaushalmodi";
  inputs.src-p4ztag_to_json-v0_9_2.repo = "p4ztag_to_json";
  inputs.src-p4ztag_to_json-v0_9_2.ref = "refs/tags/v0.9.2";
  inputs.src-p4ztag_to_json-v0_9_2.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."regex".type = "github";
  # inputs."regex".owner = "riinr";
  # inputs."regex".repo = "flake-nimble";
  # inputs."regex".ref = "flake-pinning";
  # inputs."regex".dir = "nimpkgs/r/regex";
  # inputs."regex".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."regex".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-p4ztag_to_json-v0_9_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-p4ztag_to_json-v0_9_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-p4ztag_to_json-v0_9_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}