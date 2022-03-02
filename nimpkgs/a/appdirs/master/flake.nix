{
  description = ''A utility library to find the directory you need to app in.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-appdirs-master.flake = false;
  inputs.src-appdirs-master.type = "github";
  inputs.src-appdirs-master.owner = "MrJohz";
  inputs.src-appdirs-master.repo = "appdirs";
  inputs.src-appdirs-master.ref = "refs/heads/master";
  inputs.src-appdirs-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-appdirs-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-appdirs-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-appdirs-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}