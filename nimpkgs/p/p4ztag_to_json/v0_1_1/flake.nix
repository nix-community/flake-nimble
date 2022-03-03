{
  description = ''Convert Helix Version Control / Perforce (p4) -ztag output to JSON'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-p4ztag_to_json-v0_1_1.flake = false;
  inputs.src-p4ztag_to_json-v0_1_1.type = "github";
  inputs.src-p4ztag_to_json-v0_1_1.owner = "kaushalmodi";
  inputs.src-p4ztag_to_json-v0_1_1.repo = "p4ztag_to_json";
  inputs.src-p4ztag_to_json-v0_1_1.ref = "refs/tags/v0.1.1";
  inputs.src-p4ztag_to_json-v0_1_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-p4ztag_to_json-v0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-p4ztag_to_json-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-p4ztag_to_json-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}