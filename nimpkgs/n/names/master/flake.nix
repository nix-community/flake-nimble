{
  description = ''String interning library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-names-master.flake = false;
  inputs.src-names-master.type = "github";
  inputs.src-names-master.owner = "pragmagic";
  inputs.src-names-master.repo = "names";
  inputs.src-names-master.ref = "refs/heads/master";
  inputs.src-names-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-names-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-names-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-names-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}