{
  description = ''Text template processor, basic capabilities'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-tmplpro-unstable.flake = false;
  inputs.src-tmplpro-unstable.type = "github";
  inputs.src-tmplpro-unstable.owner = "mjfh";
  inputs.src-tmplpro-unstable.repo = "nim-tmplpro";
  inputs.src-tmplpro-unstable.ref = "refs/heads/unstable";
  inputs.src-tmplpro-unstable.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-tmplpro-unstable, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tmplpro-unstable;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-tmplpro-unstable"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}