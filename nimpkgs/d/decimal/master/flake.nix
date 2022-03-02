{
  description = ''A correctly-rounded arbitrary precision decimal floating point arithmetic library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-decimal-master.flake = false;
  inputs.src-decimal-master.type = "github";
  inputs.src-decimal-master.owner = "inv2004";
  inputs.src-decimal-master.repo = "nim-decimal";
  inputs.src-decimal-master.ref = "refs/heads/master";
  inputs.src-decimal-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-decimal-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-decimal-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-decimal-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}