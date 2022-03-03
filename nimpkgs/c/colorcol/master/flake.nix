{
  description = ''Kakoune plugin for color preview'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-colorcol-master.flake = false;
  inputs.src-colorcol-master.type = "github";
  inputs.src-colorcol-master.owner = "SolitudeSF";
  inputs.src-colorcol-master.repo = "colorcol";
  inputs.src-colorcol-master.ref = "refs/heads/master";
  inputs.src-colorcol-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-colorcol-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-colorcol-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-colorcol-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}