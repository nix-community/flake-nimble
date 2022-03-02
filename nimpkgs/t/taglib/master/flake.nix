{
  description = ''TagLib Audio Meta-Data Library wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-taglib-master.flake = false;
  inputs.src-taglib-master.type = "github";
  inputs.src-taglib-master.owner = "alex-laskin";
  inputs.src-taglib-master.repo = "nim-taglib";
  inputs.src-taglib-master.ref = "refs/heads/master";
  inputs.src-taglib-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-taglib-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-taglib-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-taglib-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}