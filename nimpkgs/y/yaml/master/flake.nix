{
  description = ''YAML 1.2 implementation for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-yaml-master.flake = false;
  inputs.src-yaml-master.type = "github";
  inputs.src-yaml-master.owner = "flyx";
  inputs.src-yaml-master.repo = "NimYAML";
  inputs.src-yaml-master.ref = "refs/heads/master";
  inputs.src-yaml-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-yaml-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-yaml-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-yaml-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}