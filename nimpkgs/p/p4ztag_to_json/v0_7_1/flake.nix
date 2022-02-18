{
  description = ''Convert Helix Version Control / Perforce (p4) -ztag output to JSON'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-p4ztag_to_json-v0_7_1.flake = false;
  inputs.src-p4ztag_to_json-v0_7_1.type = "github";
  inputs.src-p4ztag_to_json-v0_7_1.owner = "kaushalmodi";
  inputs.src-p4ztag_to_json-v0_7_1.repo = "p4ztag_to_json";
  inputs.src-p4ztag_to_json-v0_7_1.ref = "refs/tags/v0.7.1";
  
  
  inputs."regex".type = "github";
  inputs."regex".owner = "riinr";
  inputs."regex".repo = "flake-nimble";
  inputs."regex".ref = "flake-pinning";
  inputs."regex".dir = "nimpkgs/r/regex";

  outputs = { self, nixpkgs, flakeNimbleLib, src-p4ztag_to_json-v0_7_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-p4ztag_to_json-v0_7_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-p4ztag_to_json-v0_7_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}