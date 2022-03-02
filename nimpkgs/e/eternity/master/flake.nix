{
  description = ''Humanize elapsed time'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-eternity-master.flake = false;
  inputs.src-eternity-master.type = "github";
  inputs.src-eternity-master.owner = "hiteshjasani";
  inputs.src-eternity-master.repo = "nim-eternity";
  inputs.src-eternity-master.ref = "refs/heads/master";
  inputs.src-eternity-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-eternity-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-eternity-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-eternity-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}