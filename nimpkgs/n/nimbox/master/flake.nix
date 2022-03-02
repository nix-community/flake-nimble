{
  description = ''A Rustbox-inspired termbox wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimbox-master.flake = false;
  inputs.src-nimbox-master.type = "github";
  inputs.src-nimbox-master.owner = "dom96";
  inputs.src-nimbox-master.repo = "nimbox";
  inputs.src-nimbox-master.ref = "refs/heads/master";
  inputs.src-nimbox-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimbox-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimbox-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimbox-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}