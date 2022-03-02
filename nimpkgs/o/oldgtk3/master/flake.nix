{
  description = ''Low level bindings for GTK3 related libraries'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-oldgtk3-master.flake = false;
  inputs.src-oldgtk3-master.type = "github";
  inputs.src-oldgtk3-master.owner = "stefansalewski";
  inputs.src-oldgtk3-master.repo = "oldgtk3";
  inputs.src-oldgtk3-master.ref = "refs/heads/master";
  inputs.src-oldgtk3-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-oldgtk3-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-oldgtk3-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-oldgtk3-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}