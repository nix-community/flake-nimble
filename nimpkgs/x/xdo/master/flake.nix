{
  description = ''Nim GUI Automation Linux, simulate user interaction, mouse and keyboard.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-xdo-master.flake = false;
  inputs.src-xdo-master.type = "github";
  inputs.src-xdo-master.owner = "juancarlospaco";
  inputs.src-xdo-master.repo = "nim-xdo";
  inputs.src-xdo-master.ref = "refs/heads/master";
  inputs.src-xdo-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-xdo-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xdo-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-xdo-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}