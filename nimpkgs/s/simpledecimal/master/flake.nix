{
  description = ''A simple decimal library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-simpledecimal-master.flake = false;
  inputs.src-simpledecimal-master.type = "github";
  inputs.src-simpledecimal-master.owner = "pigmej";
  inputs.src-simpledecimal-master.repo = "nim-simple-decimal";
  inputs.src-simpledecimal-master.ref = "refs/heads/master";
  inputs.src-simpledecimal-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-simpledecimal-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-simpledecimal-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-simpledecimal-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}