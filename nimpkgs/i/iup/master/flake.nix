{
  description = ''Bindings for the IUP widget toolkit'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-iup-master.flake = false;
  inputs.src-iup-master.type = "github";
  inputs.src-iup-master.owner = "nim-lang";
  inputs.src-iup-master.repo = "iup";
  inputs.src-iup-master.ref = "refs/heads/master";
  inputs.src-iup-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-iup-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-iup-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-iup-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}