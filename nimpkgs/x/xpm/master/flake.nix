{
  description = ''X-Pixmap & NetPBM'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-xpm-master.flake = false;
  inputs.src-xpm-master.type = "github";
  inputs.src-xpm-master.owner = "juancarlospaco";
  inputs.src-xpm-master.repo = "xpm";
  inputs.src-xpm-master.ref = "refs/heads/master";
  inputs.src-xpm-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-xpm-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xpm-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-xpm-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}