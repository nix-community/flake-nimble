{
  description = ''Parse Standard SPDX Licenses from string to Enum'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-parselicense-master.flake = false;
  inputs.src-parselicense-master.type = "github";
  inputs.src-parselicense-master.owner = "juancarlospaco";
  inputs.src-parselicense-master.repo = "parselicense";
  inputs.src-parselicense-master.ref = "refs/heads/master";
  inputs.src-parselicense-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-parselicense-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-parselicense-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-parselicense-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}