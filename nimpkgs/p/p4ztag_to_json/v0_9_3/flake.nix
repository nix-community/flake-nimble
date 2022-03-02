{
  description = ''Convert Helix Version Control / Perforce (p4) -ztag output to JSON'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-p4ztag_to_json-v0_9_3.flake = false;
  inputs.src-p4ztag_to_json-v0_9_3.type = "github";
  inputs.src-p4ztag_to_json-v0_9_3.owner = "kaushalmodi";
  inputs.src-p4ztag_to_json-v0_9_3.repo = "p4ztag_to_json";
  inputs.src-p4ztag_to_json-v0_9_3.ref = "refs/tags/v0.9.3";
  inputs.src-p4ztag_to_json-v0_9_3.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."regex".type = "github";
  # inputs."regex".owner = "riinr";
  # inputs."regex".repo = "flake-nimble";
  # inputs."regex".ref = "flake-pinning";
  # inputs."regex".dir = "nimpkgs/r/regex";
  # inputs."regex".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."regex".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-p4ztag_to_json-v0_9_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-p4ztag_to_json-v0_9_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-p4ztag_to_json-v0_9_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}