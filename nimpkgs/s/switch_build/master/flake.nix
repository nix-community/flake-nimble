{
  description = ''An easy way to build homebrew files for the Nintendo Switch'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-switch_build-master.flake = false;
  inputs.src-switch_build-master.type = "github";
  inputs.src-switch_build-master.owner = "jyapayne";
  inputs.src-switch_build-master.repo = "switch-build";
  inputs.src-switch_build-master.ref = "refs/heads/master";
  inputs.src-switch_build-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-switch_build-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-switch_build-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-switch_build-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}