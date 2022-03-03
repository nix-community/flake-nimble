{
  description = ''A rules engine'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-pararules-master.flake = false;
  inputs.src-pararules-master.type = "github";
  inputs.src-pararules-master.owner = "paranim";
  inputs.src-pararules-master.repo = "pararules";
  inputs.src-pararules-master.ref = "refs/heads/master";
  inputs.src-pararules-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-pararules-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pararules-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pararules-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}