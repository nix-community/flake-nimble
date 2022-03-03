{
  description = ''A port of libnoise into pure nim, heavily inspired by Libnoise.Unity, but true to the original Libnoise'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimnoise-master.flake = false;
  inputs.src-nimnoise-master.type = "github";
  inputs.src-nimnoise-master.owner = "blakeanedved";
  inputs.src-nimnoise-master.repo = "nimnoise";
  inputs.src-nimnoise-master.ref = "refs/heads/master";
  inputs.src-nimnoise-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimnoise-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimnoise-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimnoise-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}