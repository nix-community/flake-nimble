{
  description = ''PNG(Portable Network Graphics) encoder and decoder'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimPNG-master.flake = false;
  inputs.src-nimPNG-master.type = "github";
  inputs.src-nimPNG-master.owner = "jangko";
  inputs.src-nimPNG-master.repo = "nimPNG";
  inputs.src-nimPNG-master.ref = "refs/heads/master";
  inputs.src-nimPNG-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimPNG-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimPNG-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimPNG-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}