{
  description = ''wrapper for FreeType2 library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-freetype-master.flake = false;
  inputs.src-freetype-master.type = "github";
  inputs.src-freetype-master.owner = "jangko";
  inputs.src-freetype-master.repo = "freetype";
  inputs.src-freetype-master.ref = "refs/heads/master";
  inputs.src-freetype-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-freetype-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-freetype-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-freetype-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}