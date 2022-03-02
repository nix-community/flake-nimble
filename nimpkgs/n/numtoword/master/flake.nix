{
  description = ''Convert numbers to words'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-numToWord-master.flake = false;
  inputs.src-numToWord-master.type = "github";
  inputs.src-numToWord-master.owner = "thisago";
  inputs.src-numToWord-master.repo = "numToWord";
  inputs.src-numToWord-master.ref = "refs/heads/master";
  inputs.src-numToWord-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-numToWord-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-numToWord-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-numToWord-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}