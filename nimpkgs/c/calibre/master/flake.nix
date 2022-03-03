{
  description = ''Calibre Database Lib for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-calibre-master.flake = false;
  inputs.src-calibre-master.type = "github";
  inputs.src-calibre-master.owner = "juancarlospaco";
  inputs.src-calibre-master.repo = "nim-calibre";
  inputs.src-calibre-master.ref = "refs/heads/master";
  inputs.src-calibre-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-calibre-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-calibre-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-calibre-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}