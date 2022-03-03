{
  description = ''Humanize elapsed time'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-eternity-v0_2.flake = false;
  inputs.src-eternity-v0_2.type = "github";
  inputs.src-eternity-v0_2.owner = "hiteshjasani";
  inputs.src-eternity-v0_2.repo = "nim-eternity";
  inputs.src-eternity-v0_2.ref = "refs/tags/v0.2";
  inputs.src-eternity-v0_2.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-eternity-v0_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-eternity-v0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-eternity-v0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}