{
  description = ''Pure nim fuzzy search implementation. Supports substrings etc'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-fuzzy-master.flake = false;
  inputs.src-fuzzy-master.type = "github";
  inputs.src-fuzzy-master.owner = "pigmej";
  inputs.src-fuzzy-master.repo = "fuzzy";
  inputs.src-fuzzy-master.ref = "refs/heads/master";
  inputs.src-fuzzy-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-fuzzy-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fuzzy-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-fuzzy-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}