{
  description = ''OS Utils for Nim, simple tiny but useful procs for OS. Turn Display OFF and set Process Name.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-osutil-master.flake = false;
  inputs.src-osutil-master.type = "github";
  inputs.src-osutil-master.owner = "juancarlospaco";
  inputs.src-osutil-master.repo = "nim-osutil";
  inputs.src-osutil-master.ref = "refs/heads/master";
  inputs.src-osutil-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-osutil-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-osutil-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-osutil-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}