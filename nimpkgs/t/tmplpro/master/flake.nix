{
  description = ''Text template processor, basic capabilities'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-tmplpro-master.flake = false;
  inputs.src-tmplpro-master.type = "github";
  inputs.src-tmplpro-master.owner = "mjfh";
  inputs.src-tmplpro-master.repo = "nim-tmplpro";
  inputs.src-tmplpro-master.ref = "refs/heads/master";
  inputs.src-tmplpro-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-tmplpro-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tmplpro-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-tmplpro-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}