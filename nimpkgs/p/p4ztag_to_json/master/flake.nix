{
  description = ''Convert Helix Version Control / Perforce (p4) -ztag output to JSON'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-p4ztag_to_json-master.flake = false;
  inputs.src-p4ztag_to_json-master.type = "github";
  inputs.src-p4ztag_to_json-master.owner = "kaushalmodi";
  inputs.src-p4ztag_to_json-master.repo = "p4ztag_to_json";
  inputs.src-p4ztag_to_json-master.ref = "refs/heads/master";
  
  
  inputs."regex".type = "github";
  inputs."regex".owner = "riinr";
  inputs."regex".repo = "flake-nimble";
  inputs."regex".ref = "flake-pinning";
  inputs."regex".dir = "nimpkgs/r/regex";

  outputs = { self, nixpkgs, flakeNimbleLib, src-p4ztag_to_json-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-p4ztag_to_json-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-p4ztag_to_json-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}