{
  description = ''Low level wrapper for the fontconfig library.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-fontconfig-master.flake = false;
  inputs.src-fontconfig-master.type = "github";
  inputs.src-fontconfig-master.owner = "Parashurama";
  inputs.src-fontconfig-master.repo = "fontconfig";
  inputs.src-fontconfig-master.ref = "refs/heads/master";
  inputs.src-fontconfig-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-fontconfig-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fontconfig-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-fontconfig-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}