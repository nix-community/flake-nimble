{
  description = ''xcb bindings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-xcb-master.flake = false;
  inputs.src-xcb-master.type = "github";
  inputs.src-xcb-master.owner = "SolitudeSF";
  inputs.src-xcb-master.repo = "xcb";
  inputs.src-xcb-master.ref = "refs/heads/master";
  inputs.src-xcb-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-xcb-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xcb-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-xcb-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}