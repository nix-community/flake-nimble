{
  description = ''Mustache in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-mustache-master.flake = false;
  inputs.src-mustache-master.type = "github";
  inputs.src-mustache-master.owner = "soasme";
  inputs.src-mustache-master.repo = "nim-mustache";
  inputs.src-mustache-master.ref = "refs/heads/master";
  inputs.src-mustache-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-mustache-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mustache-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mustache-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}