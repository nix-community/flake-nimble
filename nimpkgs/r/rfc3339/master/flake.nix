{
  description = ''RFC3339 (dates and times) implementation for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-rfc3339-master.flake = false;
  inputs.src-rfc3339-master.type = "github";
  inputs.src-rfc3339-master.owner = "Skrylar";
  inputs.src-rfc3339-master.repo = "rfc3339";
  inputs.src-rfc3339-master.ref = "refs/heads/master";
  inputs.src-rfc3339-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-rfc3339-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rfc3339-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-rfc3339-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}