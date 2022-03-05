{
  description = ''Systemd service notification helper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-sdnotify-master.flake = false;
  inputs.src-sdnotify-master.type = "github";
  inputs.src-sdnotify-master.owner = "FedericoCeratto";
  inputs.src-sdnotify-master.repo = "nim-sdnotify";
  inputs.src-sdnotify-master.ref = "refs/heads/master";
  inputs.src-sdnotify-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-sdnotify-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sdnotify-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sdnotify-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}