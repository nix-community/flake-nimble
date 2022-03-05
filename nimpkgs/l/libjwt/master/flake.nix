{
  description = ''Bindings for libjwt'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-libjwt-master.flake = false;
  inputs.src-libjwt-master.type = "github";
  inputs.src-libjwt-master.owner = "nimscale";
  inputs.src-libjwt-master.repo = "nim-libjwt";
  inputs.src-libjwt-master.ref = "refs/heads/master";
  inputs.src-libjwt-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-libjwt-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libjwt-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-libjwt-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}